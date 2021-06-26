VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6570
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   15060
   LinkTopic       =   "Form1"
   ScaleHeight     =   6570
   ScaleWidth      =   15060
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Click()
On Error GoTo Handler

Dim conn As ADODB.Connection
Dim rs As ADODB.Recordset
Dim fld As ADODB.Field
Dim sql As String

'connect to MySQL server using Connector/ODBC
Set conn = New ADODB.Connection
conn.ConnectionString = "DRIVER={MySQL ODBC 3.51 Driver};" _
& "SERVER=localhost;" _
& " DATABASE=DATA;" _
& "UID=root;PWD=Admin@123; OPTION=3" 'Username password

conn.Open

'create table
conn.Execute "DROP TABLE IF EXISTS my_ado"
conn.Execute "CREATE TABLE my_ado(id int not null primary key, name varchar(20)," _
& "txt text, dt date, tm time, ts timestamp)"

'direct insert
conn.Execute "INSERT INTO my_ado(id,name,txt) values(1,100,'LOLOL')"
conn.Execute "INSERT INTO my_ado(id,name,txt) values(2,200,'WHY')"
conn.Execute "INSERT INTO my_ado(id,name,txt) values(3,300,'WHY')"

Set rs = New ADODB.Recordset
rs.CursorLocation = adUseClient 'adUseServer was replaced because recordCount gave -1

'fetch the initial table ..
rs.Open "SELECT * FROM my_ado", conn
MsgBox rs.RecordCount
rs.MoveFirst ' Move cursor to first record
Me.Print String(50, "-") & "Initial my_ado Result Set " & String(50, "-")
For Each fld In rs.Fields
Me.Print fld.Name,
Next
Me.Print ' nextline

Do Until rs.EOF
For Each fld In rs.Fields
Me.Print fld.Value,
Next
rs.MoveNext
Me.Print
Loop
rs.Close

'rs insert
rs.Open "select * from my_ado", conn, adOpenDynamic, adLockOptimistic
rs.AddNew
rs!ID = 8
rs!Name = "Mandy"
rs!txt = "Insert row"
rs.Update
rs.Close

'rs update
rs.Open "SELECT * FROM my_ado"
rs!Name = "update"
rs!txt = "updated-row"
rs.Update
rs.Close

'rs update second time..
rs.Open "SELECT * FROM my_ado"
rs!Name = "update"
rs!txt = "updated-second-time"
rs.Update
rs.Close

'rs delete
rs.Open "SELECT * FROM my_ado"
rs.MoveNext
rs.MoveNext
rs.Delete
rs.Close

'fetch the updated table ..
rs.Open "SELECT * FROM my_ado", conn
Me.Print rs.RecordCount
rs.MoveFirst
Me.Print String(50, "-") & "Updated my_ado Result Set " & String(50, "-")
For Each fld In rs.Fields
Me.Print fld.Name,
Next
Me.Print

Do Until rs.EOF
For Each fld In rs.Fields
Debug.Print fld.Value,
Next
rs.MoveNext
Debug.Print
Loop
rs.Close
conn.Close
Exit Sub

Handler:
MsgBox "Sorry an error occured !"
End
End Sub

