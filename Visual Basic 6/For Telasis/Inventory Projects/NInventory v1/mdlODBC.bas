Attribute VB_Name = "mdlODBC"
Global sqlAddress, sqlDB As String
Global mainConnect As ADODB.Connection
Global tmpConnect As ADODB.Connection
Global records(4) As ADODB.Recordset
Global fields(4) As ADODB.Field
Global sql(50) As String
Global username, password As String
Global logStat As Boolean
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
