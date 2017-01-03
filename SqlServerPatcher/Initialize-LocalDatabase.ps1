[CmdletBinding(SupportsShouldProcess = $TRUE,ConfirmImpact = 'Medium')]

param
(
    [string] $ServerName = '.',
    [string] $DatabaseName = 'AdventureWorksLocal',
    [string] $DboAdmin = 'AdminUser',
    [string] $AdminPassword = '5up3r53(ret'
)

function Execute-NonQuery($cmd, $script)
{
    $cmd.CommandText = $script
    # Write-Host -Verbose "========================================================================="
    # Write-Host -Verbose $cmd.CommandText
    Write-Host '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'
    [void]($cmd.ExecuteNonQuery())
}

$sqlLogEvent = [System.Data.SqlClient.SqlInfoMessageEventHandler] {
        param($sender, $event) 
        ($event.Message -split '[\r\n]') |? {Write-Host "    >$($_)"}
    }


$DeleteDatabaseScript = @"
IF EXISTS(select * from sys.databases where name='{0}')
BEGIN
    PRINT N'Drop Database ''{0}''.'
    ALTER DATABASE [{0}] SET  SINGLE_USER WITH ROLLBACK IMMEDIATE
    DROP DATABASE [{0}]
END
"@

$CreateDatabaseScript = @"
CREATE DATABASE [{0}]
PRINT N'Created DATABASE ''{0}''.'
"@


$AddRoleScript = 'ALTER AUTHORIZATION ON SCHEMA::[{1}] TO [{0}]'

$CreateUserScript = @"
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'{0}')
BEGIN
    CREATE USER [{0}] FOR LOGIN [{0}]
    EXEC sp_addrolemember N'db_owner', N'{0}'
	PRINT N'Created db_owner ''{0}''.'
END;
ELSE
	PRINT N'User ''{0}'' alread exists.'
"@

try
{
    $IntegratedConnectionString = 'Data Source={0}; Integrated Security=True;MultipleActiveResultSets=False;Application Name="SQL Management"'
    $Connection = (New-Object 'System.Data.SqlClient.SqlConnection')
    $Connection.ConnectionString = $IntegratedConnectionString -f $ServerName

    $Connection.add_InfoMessage($sqlLogEvent)
    $Connection.FireInfoMessageEventOnUserErrors = $false

    $Connection.Open()

    $SqlCmd = $Connection.CreateCommand()
    $SqlCmd.CommandType = [System.Data.CommandType]::Text

    Execute-NonQuery $SqlCmd ($DeleteDatabaseScript -f $DatabaseName)
    Execute-NonQuery $SqlCmd ($CreateDatabaseScript -f $DatabaseName)
    Execute-NonQuery $SqlCmd ($CreateLoginScript -f $DboAdmin)
    $Connection.ChangeDatabase($DatabaseName)
    Execute-NonQuery $SqlCmd ($CreateUserScript -f $DboAdmin)
    #Execute-NonQuery $SqlCmd ($AddRoleScript -f $DboAdmin, 'db_owner')

    $Connection
}
Catch
{
    Write-Error ('Error while Re-Creating Datbase {0}.{1} - {2}' -f $ServerName,$DatabaseName,$_)
}

