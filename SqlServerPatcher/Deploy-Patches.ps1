
param
( [string] $Environment = ''
, [string] $ServerName = '.'
, [string] $DatabaseName = 'AdventureWorksLocal'
, [string] $DboAdmin = 'AdminUser'
, [string] $AdminPassword = '5up3r53(ret'
, [string] $DacDllPath = 'C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\Extensions\Microsoft\SQLDB\DAC\120\Microsoft.SqlServer.Dac.dll'
, [string] $Release = ''
, [string] $SqlServerPatcherModule = 'C:\Git\SqlServerPatcher\SqlServerPatcher'
)

$ErrorActionPreference = 'Stop'

add-type -path $DacDllPath
Import-Module $SqlServerPatcherModule -Force 


[scriptblock] $PatchFileInitializationScript = {
    Get-ChildItem -recurse -Filter *.sql | Add-SqlDbPatches 
}

$ConnectionString = 'Data Source={0}; Initial Catalog={1};User id={2}; Password={3};Application Name="SqlServerPatcher"' 

if ($Release.Length -eq 0)
{
    $Release = 'na'
}

$SqlServerPatcherParms = @{
    ConnectionString = ConvertTo-SecureString ($ConnectionString -f $ServerName,$DatabaseName,$DboAdmin,$AdminPassword) -AsPlainText -Force 
    RootFolderPath = (Join-Path $PSScriptRoot 'Patches') 
    OutFolderPath = (Join-Path $PSScriptRoot '..\bin\TestOutput') 
    Environment = $Environment 
    Release = $Release
    PatchFileInitializationScript = $PatchFileInitializationScript
}

Initialize-SqlServerPatcher @SqlServerPatcherParms 

#ShowPatchHistory

if ($Release -ne 'na')
{
    RollbackPatch -Release $Release 
}

Get-SqlServerPatchInfo 
# ShowPatchInfo is alias

Publish-SqlServerPatches 

#ShowPatchHistory

<#

ShowPatchHistory

ShowDbObjects -all

RollbackPatch 2

ShowPatchInfo -PatchesToExecute | Test-SqlServerRollback
#>


