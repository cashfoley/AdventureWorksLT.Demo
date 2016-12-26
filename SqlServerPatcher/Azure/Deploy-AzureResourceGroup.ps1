param(
   [string] $subscriptionName = 'Visual Studio Ultimate with MSDN'
 , [string] $resourceGroupName = 'dbversiondebug'
 , [string] $resourceGroupLocation = 'Central US'
 , [string] $deploymentName = "debugDeployment"
 , [string] $templateFilePath = "AdventureWorksDB.json"
 , [string] $parametersFilePath = "AdventureWorksDB.parms.json"
 , [string] $dbServerName = "debug-dbserver01"
 , [string] $dbDatabaseName = 'db-model01'
 , [string] $DatabaseServerAdminLogin = 'db-dev-admin01'
 , [string] $DatabaseServerAdminLoginPassword = '5upp3r53(re7'
)

#******************************************************************************
# Script body
# Execution begins here
#******************************************************************************
$ErrorActionPreference = "Stop"

try 
{
    Write-Verbose 'Checking if logged into Azure'
    $isLoggedIn = Get-AzureRmContext -ErrorAction Stop
}
catch [System.Management.Automation.PSInvalidOperationException] 
{
    Write-Verbose 'Not logged into Azure. Login now.'
    $isLoggedIn = Add-AzureRmAccount
}
catch 
{
    Write-Error $Error[0].Exception
}

# select subscription
Write-Host "Selecting subscription '$subscriptionName'"
Set-AzureRmContext -SubscriptionName $subscriptionName

#******************************************************************************
# Register RPs
#******************************************************************************
$resourceProviders = @("microsoft.keyvault","microsoft.sql")

if($resourceProviders.length) 
{
    Write-Host "Registering resource providers"
    foreach($resourceProvider in $resourceProviders) 
    {
        Write-Host "Registering resource provider '$resourceProvider'"
        Register-AzureRmResourceProvider -ProviderNamespace $resourceProvider
    }
}

#******************************************************************************
#Create or check for existing resource group
#******************************************************************************
$resourceGroup = Get-AzureRmResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue
if(!$resourceGroup)
{
    Write-Host "Resource group '$resourceGroupName' does not exist. To create a new resource group, please enter a location."

    if(!$resourceGroupLocation) 
    {
        $resourceGroupLocation = Read-Host "resourceGroupLocation"
    }
    Write-Host "Creating resource group '$resourceGroupName' in location '$resourceGroupLocation'"
    New-AzureRmResourceGroup -Name $resourceGroupName -Location $resourceGroupLocation
}
else
{
    Write-Host "Using existing resource group '$resourceGroupName'"

}

#******************************************************************************
# Read Parameters File
#******************************************************************************
$ResolvedtemplateFilePath = Join-Path $PSScriptRoot $templateFilePath
$ResolvedparametersFilePath = Join-Path $PSScriptRoot $parametersFilePath

if(Test-Path $ResolvedparametersFilePath) {
    $ParametersJson = Get-Content $ResolvedparametersFilePath
}
else
{
    $ParametersJson = @"
{
  "$schema": "https://schema.management.azure.com/schemas/2015-01-01/deploymentParameters.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    "dbServerName": { "value": "" },
    "dbDatabaseName": { "value": "" },
    "DatabaseServerAdminLogin": { "value": "" },
    "DatabaseServerAdminLoginPassword": {"value": ""}
  }
}
"@
}

$parameterValues = $ParametersJson | ConvertFrom-Json
    
#******************************************************************************
# Override Parms
#******************************************************************************
$ParameterOverrides = @{}

$ParameterOverrides.dbServerName                     = $dbServerName
$ParameterOverrides.dbDatabaseName                   = $dbDatabaseName
$ParameterOverrides.DatabaseServerAdminLogin         = $DatabaseServerAdminLogin
$ParameterOverrides.DatabaseServerAdminLoginPassword = $DatabaseServerAdminLoginPassword

foreach($parameterOverrideName in $parameterOverrides.Keys)
{
    $parameterValues.parameters.$parameterOverrideName.value = $parameterOverrides.$parameterOverrideName
}

#******************************************************************************
# Create Temp Parameters File
#******************************************************************************
$parameterTempFile =  New-TemporaryFile
$parameterValues | ConvertTo-Json | Set-Content $parameterTempFile

#******************************************************************************
# Start the deployment
#******************************************************************************
Write-Host "Starting deployment..."
New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $ResolvedtemplateFilePath -TemplateParameterFile $parameterTempFile #-Mode Complete -Force
