Install-Module -Name SqlServer
$SQLServer = "laboratorio-tcm.database.windows.net"
$SQLDBName = "TutorialDB"
$uid ="administrador"
$pwd = "Laboratorio1"
Invoke-Sqlcmd -Query "SELECT GETDATE() AS TimeOfQuery;" -ServerInstance $SQLServer -Username $uid -Password $pwd -DataBase $SQLDBName  
Invoke-Sqlcmd -InputFile "D:\CTM\colpa-example\sql-query.sql" | Out-File -FilePath "C:\Scripts\TestSqlCmd.txt"