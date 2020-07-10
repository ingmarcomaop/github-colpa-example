$SQLServer = "laboratorio-tcm.database.windows.net"
$SQLDBName = "TutorialDB"
$uid ="administrador"
$pwd = "Laboratorio1"
$SqlQuery = "SELECT * from dbo.Customers;"
$SqlConnection = New-Object System.Data.SqlClient.SqlConnection
$SqlConnection.ConnectionString = "Server = $SQLServer; Database = $SQLDBName; Integrated Security = False; User ID = $uid; Password = $pwd;"
$SqlCmd = New-Object System.Data.SqlClient.SqlCommand
$SqlCmd.CommandText = $SqlQuery
$SqlCmd.Connection = $SqlConnection
$SqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter
$SqlAdapter.SelectCommand = $SqlCmd
$DataSet = New-Object System.Data.DataSet
$SqlAdapter.Fill($DataSet)
$DataSet.Tables[0] | out-file "C:\Scripts\xxxx.csv"

