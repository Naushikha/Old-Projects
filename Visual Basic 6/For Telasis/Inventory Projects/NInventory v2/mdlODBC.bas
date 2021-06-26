Attribute VB_Name = "mdlODBC"
Declare Function SafeArrayGetDim Lib "oleaut32.dll" (ByRef saArray() As Any) As Long

Global sqlAddress, sqlDB As String
Global mainConnect As ADODB.Connection
Global tmpConnect As ADODB.Connection
Global records(4) As ADODB.Recordset
Global fields(4) As ADODB.Field
Global sql(50) As String
Global username, password As String
Global logStat As Boolean
Global tmpArray() As String
Type nsProduct
    id As String
    name As String
    quantity As Integer
    comment As String
End Type
Type sProduct
    id As String
    name As String
    serial As String
    accessories As String
    supplierId As String
    customerId As String
    comment As String
End Type
Type supplier
    id As String
    name As String
    address As String
    telephone As String
    user As String
End Type
Type customer
    id As String
    name As String
    address As String
    telephone As String
    user As String
End Type
Type purchase
    id As String
    supplierId As String
    dateTime As String
    comment As String
    user As String
End Type
Type sale
    id As String
    customerId As String
    dateTime As String
    comment As String
    user As String
End Type
Type cartProduct
    type As String
    id As String
    name As String
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
