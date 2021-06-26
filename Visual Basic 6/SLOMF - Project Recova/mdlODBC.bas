Attribute VB_Name = "mdlODBC"
Declare Function SafeArrayGetDim Lib "oleaut32.dll" (ByRef saArray() As Any) As Long


Global sqlAddress, sqlDB As String
Global mainConnect As ADODB.connection
Global tmpConnect As ADODB.connection
Global connection(5) As ADODB.connection 'connected sessions to db
Global records(5) As ADODB.Recordset

Global sql(50) As String
Global username, password As String 'For the MySQL DB
Global logStat As Boolean 'dashboard unload, whether to get back to login screen or close app "login-Status"
Global tmpArray() As String
Global logCount As Integer

Type student
    id As String
    name As String
    gender As String
    dob As Date
    grade As String
    slmc As String
    medium As String
    schoolId As String
    teacherId As String
End Type
Type teacher
    id As String
    recvDate As String
    name As String
    address As String
    telephone As String
    email As String
    paymRef As String
    prefDist As String
    appMethod As String
    numStud As String
    schoolId As String
    user As String
End Type


Function CheckDuplicates() As String
tmpString = ""
    For i = 0 To UBound(tmpArray) - 1 ' don't include the last value cos there's nothing after
       For j = i + 1 To UBound(tmpArray) ' don't include current entry cos it obviously matches itself!
          If tmpArray(i) = tmpArray(j) Then
          tmpString = tmpString & tmpArray(i) & vbCrLf
          End If
       Next j
    Next i
    CheckDuplicates = tmpString
End Function
Function connectDB(connectionID As Integer) As Boolean  ' to return success or failure - true means WORKED !
frmLoad.Show ' to show that we are connecting
frmLoad.lbl.Caption = "Connecting to database ..."
On Error GoTo Handler

write_log "/*\ Attempting to connect to a database using connectionID " & connectionID
'connect to MySQL server using Connector/ODBC
Set connection(connectionID) = New ADODB.connection
connection(connectionID).ConnectionString = "DRIVER={MySQL ODBC 3.51 Driver};" _
& "SERVER=" & sqlAddress & ";" _
& " DATABASE=" & sqlDB & ";" _
& "UID=" & username & ";PWD=" & password & "; OPTION=3" 'Username password

connection(connectionID).Open
frmLoad.Hide
connectDB = True 'connection has been established with db !
write_log "/+\ Connection to database " & sqlDB & " at " & sqlAddress & " using user name " & username & " successful !"
Exit Function

Handler:
frmLoad.Hide
connectDB = False 'some error occured, not sure what it is, but things didn't just work out....
write_log "/!\ Connection to database " & sqlDB & " at " & sqlAddress & " using user name: " & username & " unsuccessful !"
End Function
Function sendRecords(connectionID As Integer, sqlQueryID As Integer) As Boolean ' to return success or failure - true means WORKED !
frmLoad.Show ' to show that we are connecting
frmLoad.lbl.Caption = "Transmitting data  ..."
On Error GoTo Handler

write_log "/*\ Attempting to send data to dB using query """ & sql(sqlQueryID) & """"
connection(connectionID).Execute sql(sqlQueryID)

sendRecords = True 'records have been sent  to db !
frmLoad.Hide
write_log "/+\ Data sent successfully !"
Exit Function

Handler:
frmLoad.Hide
sendRecords = False 'some error occured, not sure what it is, but things didn't just work out....
write_log "/!\ Data transmission unsuccessful !"
End Function
Function disconnectDB(connectionID As Integer) As Boolean  ' to return success or failure - true means WORKED !
frmLoad.Hide ' to show that we are done connecting
On Error GoTo Handler

write_log "/*\ Attempting to disconnect from a database at connectionID " & connectionID
connection(connectionID).Close
disconnectDB = True 'successfully disconnected !
write_log "/+\ Disconnected successfully !"
Exit Function

Handler:
disconnectDB = False 'some error occured, not sure what it is, but things didn't just work out....
write_log "/!\ Disconnection failure !"
End Function
Function getRecords(connectionID As Integer, sqlQueryID As Integer, recordsID As Integer) As Boolean ' to return success or failure - true means WORKED !
frmLoad.Show ' to show that we are connecting
frmLoad.lbl.Caption = "Fetching data ..."
On Error GoTo Handler

write_log "/*\ Attempting to fetch data into recordsID " & recordsID & " from dB using query """ & sql(sqlQueryID) & """"
Set records(recordsID) = New ADODB.Recordset
records(recordsID).CursorLocation = adUseClient
records(recordsID).Open sql(sqlQueryID), connection(connectionID)
If records(recordsID).RecordCount = 0 Then
    records(recordsID).Close
    write_log "/!\ Query didn't return any records !"
    GoTo Handler '0 records lol !
End If
getRecords = True 'fetching records success  !
write_log "/+\ Fetching data successful, records found !"
Exit Function

Handler:
frmLoad.Hide
getRecords = False 'couldn't fetch any records... (assuming no bad queries or db corruption)
write_log "/!\ Fetching data failed !"
End Function
Function closeRecords(recordsID As Integer) As Boolean  ' to return success or failure - true means WORKED !
frmLoad.Hide ' to show that we are done connecting
On Error GoTo Handler

write_log "/*\ Attempting to close recordsID " & recordsID
records(recordsID).Close
closeRecords = True 'successfully closed records !
write_log "/+\ Closing records success !"
Exit Function

Handler:
closeRecords = False 'some error occured, not sure what it is, but things didn't just work out....
write_log "/!\ Closing records failed !"
End Function
Sub start_log()

Dim tmpFile As Integer

tmpFile = FreeFile
Open App.Path & "\DATA\LogCount.dat" For Input As #tmpFile
Line Input #tmpFile, tmpLine
Close #tmpFile
logCount = Int(tmpLine)
logCount = logCount + 1

tmpFile = FreeFile
Open App.Path & "\DATA\LogCount.dat" For Output As #tmpFile
Print #tmpFile, logCount
Close #tmpFile

tmpString = "Log file for " & Date & vbNewLine & "----------------------" & vbNewLine & vbNewLine
Open App.Path & "\DATA\LOGS\" & logCount & Format(Date, "_YYYY-MM-DD") & ".txt" For Output As #tmpFile
Print #tmpFile, tmpString
Close #tmpFile
End Sub
Sub write_log(logLine As String)
tmpString = "[ " & Time & " ]   " & logLine
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\LOGS\" & logCount & Format(Date, "_YYYY-MM-DD") & ".txt" For Append As #tmpFile
Print #tmpFile, tmpString & vbNewLine
Close #tmpFile
End Sub

Function check_data(checkText As String, maxLen As Integer) As Boolean  ' to return success or failure - true means WORKED !
If checkText = "" Then
    MsgBox "A required text is empty!", vbCritical
    check_data = False
    Exit Function
End If
If Len(checkText) > maxLen Then
    MsgBox "The text - " & checkText & " is too long!" & vbCrLf & "Max number of characters allowed is " & maxLen & "!"
    check_data = False
Else
If InStr(checkText, """") > 0 Then
    MsgBox "The text - " & checkText & " , contains quaotations!, please remove them!"
Else
    check_data = True ' passed!
End If
End If
End Function

