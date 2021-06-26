Attribute VB_Name = "mdlMain"
Type Product
    name As String
    quantity As Integer
End Type
Public prod(20) As Product ' product id is from 0 to~~~
Public prodTotal As Integer
Public transIn, transOut As Integer
Private prodDetail() As String
Sub Load_Inventory()
prodTotal = 0
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\AVAIL\INVENT.txt" For Input As #tmpFile
Do While Not EOF(tmpFile)    ' Check for end of file.
Line Input #tmpFile, tmpLine
prodDetail = Split(tmpLine, ",")
prod(prodTotal).name = (prodDetail(0))
prod(prodTotal).quantity = (Int(prodDetail(1)))
prodTotal = prodTotal + 1
Loop
Close #tmpFile
End Sub
Sub Load_Transaction()
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\TRANS\SUMM.txt" For Input As #tmpFile
Line Input #tmpFile, tmpLine
prodDetail = Split(tmpLine, ",")
transIn = Int(prodDetail(0))
transOut = Int(prodDetail(1))
Close #tmpFile
End Sub
Sub Write_Transaction()
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\TRANS\SUMM.txt" For Output As #tmpFile
Print #tmpFile, transIn & "," & transOut
Close #tmpFile
End Sub
Sub Write_Inventory()
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\AVAIL\INVENT.txt" For Output As #tmpFile
For i = 0 To (prodTotal - 1)
Print #tmpFile, prod(i).name & "," & prod(i).quantity
Next
Close #tmpFile
End Sub


