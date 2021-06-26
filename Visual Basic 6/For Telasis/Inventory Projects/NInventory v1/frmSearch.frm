VERSION 5.00
Begin VB.Form frmSearch 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Search Database"
   ClientHeight    =   5670
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   12330
   Icon            =   "frmSearch.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5670
   ScaleWidth      =   12330
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox liMain 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   4260
      ItemData        =   "frmSearch.frx":7D32
      Left            =   2400
      List            =   "frmSearch.frx":7D34
      MultiSelect     =   2  'Extended
      TabIndex        =   4
      Top             =   1200
      Width           =   9255
   End
   Begin VB.TextBox txtKeyword 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   360
      Left            =   5400
      TabIndex        =   3
      Text            =   "Keyword"
      Top             =   600
      Width           =   5175
   End
   Begin VB.ComboBox cmbType 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   360
      ItemData        =   "frmSearch.frx":7D36
      Left            =   2400
      List            =   "frmSearch.frx":7D4C
      TabIndex        =   1
      Text            =   "Select Record Type"
      Top             =   600
      Width           =   2895
   End
   Begin VB.CommandButton cmdMatch 
      BackColor       =   &H80000002&
      Caption         =   "Match"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   10680
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   600
      Width           =   975
   End
   Begin VB.Label lbl2 
      BackStyle       =   0  'Transparent
      Caption         =   "Search what ?"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   600
      Width           =   3015
   End
End
Attribute VB_Name = "frmSearch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private supplier() As supplier
Private customer() As customer
Private sProd() As sProduct
Private nsProd() As nsProduct
Private purch() As purchase
Private sal() As sale
Private recordType As String
Sub Load_Database()
ReDim supplier(0)
ReDim customer(0)
ReDim nsProd(0)
ReDim sProd(0)
ReDim purch(0)
ReDim sal(0)

On Error GoTo Handler
frmLoad.Show
mainConnect.Open
Load_Suppliers:
records(0).Open "SELECT * FROM supplier", mainConnect
If records(0).RecordCount = 0 Then GoTo Load_Customers
ReDim supplier(records(0).RecordCount - 1)
Dim tmpC As Integer
Do Until records(0).EOF
supplier(tmpC).id = records(0).fields(0)
supplier(tmpC).name = records(0).fields(1)
supplier(tmpC).address = records(0).fields(2)
supplier(tmpC).telephone = records(0).fields(3)
supplier(tmpC).user = records(0).fields(4)

tmpC = tmpC + 1
records(0).MoveNext
Loop

Load_Customers:
records(0).Close
records(0).Open "SELECT * FROM customer", mainConnect
If records(0).RecordCount = 0 Then GoTo Load_NSProd
ReDim customer(records(0).RecordCount - 1)
tmpC = 0
Do Until records(0).EOF
customer(tmpC).id = records(0).fields(0)
customer(tmpC).name = records(0).fields(1)
customer(tmpC).address = records(0).fields(2)
customer(tmpC).telephone = records(0).fields(3)
customer(tmpC).user = records(0).fields(4)

tmpC = tmpC + 1
records(0).MoveNext
Loop

Load_NSProd:
records(0).Close
records(0).Open "SELECT * FROM nsproduct", mainConnect
If records(0).RecordCount = 0 Then GoTo Load_SProd
ReDim Preserve nsProd(records(0).RecordCount - 1)
tmpC = 0
Do Until records(0).EOF
nsProd(tmpC).id = records(0).fields(0)
nsProd(tmpC).name = records(0).fields(1)
nsProd(tmpC).quantity = records(0).fields(2)

tmpC = tmpC + 1
records(0).MoveNext
Loop


Load_SProd:
records(0).Close
records(0).Open "SELECT * FROM sproduct", mainConnect
If records(0).RecordCount = 0 Then GoTo Load_Purch
ReDim Preserve sProd(records(0).RecordCount - 1)
tmpC = 0
Do Until records(0).EOF
sProd(tmpC).id = records(0).fields(0)
sProd(tmpC).name = records(0).fields(1)
sProd(tmpC).serial = records(0).fields(2)
sProd(tmpC).accessories = records(0).fields(3)
sProd(tmpC).supplierId = records(0).fields(4)
sProd(tmpC).customerId = "NONE"
If IsNull(records(0).fields(5)) = False Then sProd(tmpC).customerId = records(0).fields(5) 'Something goes wrong when assigning null to a string :X
sql(0) = "SELECT comment FROM purchase_sprod WHERE sProductId=" & sProd(tmpC).id
records(1).Open sql(0), mainConnect
If records(1).EOF = False Then sProd(tmpC).comment = records(1).fields(0)
records(1).Close

tmpC = tmpC + 1
records(0).MoveNext
Loop

Load_Purch:
records(0).Close
records(0).Open "SELECT * FROM purchase", mainConnect
If records(0).RecordCount = 0 Then GoTo Load_Sal
ReDim Preserve purch(records(0).RecordCount - 1)
tmpC = 0
Do Until records(0).EOF
purch(tmpC).id = records(0).fields(0)
purch(tmpC).supplierId = records(0).fields(1)
purch(tmpC).dateTime = records(0).fields(2)
purch(tmpC).comment = records(0).fields(3)
purch(tmpC).user = records(0).fields(4)

tmpC = tmpC + 1
records(0).MoveNext
Loop

Load_Sal:
records(0).Close
records(0).Open "SELECT * FROM sale", mainConnect
If records(0).RecordCount = 0 Then GoTo Load_End
ReDim Preserve sal(records(0).RecordCount - 1)
tmpC = 0
Do Until records(0).EOF
sal(tmpC).id = records(0).fields(0)
sal(tmpC).customerId = records(0).fields(1)
sal(tmpC).dateTime = records(0).fields(2)
sal(tmpC).comment = records(0).fields(3)
sal(tmpC).user = records(0).fields(4)

tmpC = tmpC + 1
records(0).MoveNext
Loop

Load_End:
records(0).Close
mainConnect.Close
frmLoad.Hide
Exit Sub
Handler:
mainConnect.Close
frmLoad.Hide
MsgBox "Database is corrupted !"
End Sub
Private Sub cmbType_Click()
If cmbType.Text = "Suppliers" Then recordType = "sup"
If cmbType.Text = "Customers" Then recordType = "cust"
If cmbType.Text = "NS Products" Then recordType = "nsprod"
If cmbType.Text = "S Products" Then recordType = "sprod"
If cmbType.Text = "Purchases" Then recordType = "purch"
If cmbType.Text = "Sales" Then recordType = "sal"
Load_Lists
End Sub
Sub Load_Lists()
liMain.Clear
If recordType = "sup" Then
For i = 0 To UBound(supplier)
tmpStr = supplier(i).name
liMain.AddItem tmpStr
Next
End If
If recordType = "cust" Then
For i = 0 To UBound(customer)
tmpStr = customer(i).name
liMain.AddItem tmpStr
Next
End If
If recordType = "nsprod" Then
For i = 0 To UBound(nsProd)
tmpStr = nsProd(i).name & " - " & nsProd(i).quantity
liMain.AddItem tmpStr
Next
End If
If recordType = "sprod" Then
For i = 0 To UBound(sProd)
If sProd(i).customerId = "NONE" Then
tmpStr = sProd(i).name & "  - " & sProd(i).serial & " -  [NOTSOLD]"
Else
tmpStr = sProd(i).name & "  - " & sProd(i).serial & " -  [SOLD]"
End If
liMain.AddItem tmpStr
Next
End If
If recordType = "purch" Then
For i = 0 To UBound(purch)
For j = 0 To UBound(supplier)
If supplier(j).id = purch(i).supplierId Then
tmpID = j
Exit For
End If
Next
tmpStr = purch(i).dateTime & " - " & supplier(tmpID).name & " - " & purch(i).comment
liMain.AddItem tmpStr
Next
End If
If recordType = "sal" Then
For i = 0 To UBound(sal)
For j = 0 To UBound(customer)
If customer(j).id = sal(i).customerId Then
tmpID = j
Exit For
End If
Next
tmpStr = sal(i).dateTime & " - " & customer(tmpID).name & " - " & sal(i).comment
liMain.AddItem tmpStr
Next
End If
End Sub

Private Sub cmdMatch_Click()
Dim find As String, i As Long, found As Boolean
find = txtKeyword.Text
For i = 0 To liMain.ListCount - 1
liMain.Selected(i) = False
Next
For i = 0 To liMain.ListCount - 1
    If InStr(liMain.List(i), find) > 0 Then
        found = True
        liMain.SetFocus
        liMain.Selected(i) = True
        'Exit For
    End If
Next

If Not found Then MsgBox "not found ..."
End Sub

Private Sub Form_Load()
Load_Database
End Sub

Private Sub liMain_DblClick()
im = liMain.ListIndex 'im = index map
'On Error GoTo Handler
'assuming the list indexes match with the array indexes :o , oesnt sound right but, it's an easy implementation considering other alternatives
If recordType = "sup" Then
MsgBox "Supplier Details-----" & vbCrLf _
& "ID :  " & supplier(im).id & vbCrLf _
& "Name :  " & supplier(im).name & vbCrLf _
& "Address :  " & supplier(im).address & vbCrLf _
& "Telephone :  " & supplier(im).telephone
End If
If recordType = "cust" Then
MsgBox "Customer Details-----" & vbCrLf _
& "ID :  " & customer(im).id & vbCrLf _
& "Name :  " & customer(im).name & vbCrLf _
& "Address :  " & customer(im).address & vbCrLf _
& "Telephone :  " & customer(im).telephone
End If
If recordType = "nsprod" Then
MsgBox "NS Product Details-----" & vbCrLf _
& "ID :  " & nsProd(im).id & vbCrLf _
& "Name :  " & nsProd(im).name & vbCrLf _
& "Quantity :  " & nsProd(im).quantity
End If
If recordType = "sprod" Then
For i = 0 To UBound(supplier)
If supplier(i).id = sProd(im).supplierId Then
tmpID = i
Exit For
End If
Next
MsgBox "S Product Details-----" & vbCrLf _
& "ID :  " & sProd(im).id & vbCrLf _
& "Name :  " & sProd(im).name & vbCrLf _
& "Serial :  " & sProd(im).serial & vbCrLf _
& "Accessories :  " & sProd(im).accessories & vbCrLf _
& "Comment :  " & sProd(im).comment & vbCrLf _
& "Purchased from :  " & supplier(tmpID).name
End If
If recordType = "purch" Then
For j = 0 To UBound(supplier)
If supplier(j).id = purch(im).supplierId Then
tmpID = j
Exit For
End If
Next
MsgBox "Purchase Details-----" & vbCrLf _
& "ID :  " & purch(im).id & vbCrLf _
& "Supplier :  " & supplier(tmpID).name & vbCrLf _
& "Date/Time :  " & purch(im).dateTime & vbCrLf _
& "Comment :  " & purch(im).comment

Get_Purchased_products (im)
End If
If recordType = "sal" Then
For j = 0 To UBound(customer)
If customer(j).id = sal(im).customerId Then
tmpID = j
Exit For
End If
Next
MsgBox "Sale Details-----" & vbCrLf _
& "ID :  " & sal(im).id & vbCrLf _
& "Customer :  " & customer(tmpID).name & vbCrLf _
& "Date/Time :  " & sal(im).dateTime & vbCrLf _
& "Comment :  " & sal(im).comment

Get_Sale_products (im)
End If
Exit Sub

Handler:
MsgBox "An error occured !"
End Sub
Private Sub txtKeyword_Click()
If txtKeyword.Text = "Keyword" Then
txtKeyword.Text = ""
End If
End Sub
Private Sub txtKeyword_LostFocus()
If txtKeyword.Text = "" Then
txtKeyword.Text = "Keyword"
End If
End Sub
Sub Get_Purchased_products(liID As Integer)
'First we get all the NS Products purchased within the transaction
On Error GoTo Handler
frmLoad.Show
mainConnect.Open
Load_NSProd:
sql(0) = "SELECT * FROM purchase_nsprod WHERE purchaseId=" & purch(liID).id
records(0).Open sql(0), mainConnect
If records(0).RecordCount = 0 Then GoTo Load_SProd
tmpC = 0
Do Until records(0).EOF
tmpNSProdId = records(0).fields(1)
tmpQ = records(0).fields(2)
tmpCom = records(0).fields(3)

For i = 0 To UBound(nsProd)
If nsProd(i).id = tmpNSProdId Then
tmpID = i
Exit For
End If
Next

MsgBox "Purchased NS Product No. " & (tmpC + 1) & "-----" & vbCrLf _
& "Name :  " & nsProd(tmpID).name & vbCrLf _
& "Quantity :  " & tmpQ & vbCrLf _
& "Comment :  " & tmpCom
tmpC = tmpC + 1
records(0).MoveNext
Loop



Load_SProd:
records(0).Close
sql(0) = "SELECT * FROM purchase_sprod WHERE purchaseId=" & purch(liID).id
records(0).Open sql(0), mainConnect
If records(0).RecordCount = 0 Then GoTo Load_End
tmpC = 0
Do Until records(0).EOF
tmpSProdId = records(0).fields(1)
tmpCom = records(0).fields(2)

For i = 0 To UBound(sProd)
If sProd(i).id = tmpSProdId Then
tmpID = i
Exit For
End If
Next

MsgBox "Purchased S Product No. " & (tmpC + 1) & "-----" & vbCrLf _
& "Name :  " & sProd(tmpID).name & vbCrLf _
& "Serial :  " & sProd(tmpID).serial & vbCrLf _
& "Accessories :  " & sProd(tmpID).accessories & vbCrLf _
& "Comment :  " & tmpCom
tmpC = tmpC + 1
records(0).MoveNext
Loop

Load_End:
records(0).Close
mainConnect.Close
frmLoad.Hide
Exit Sub
Handler:
mainConnect.Close
frmLoad.Hide
MsgBox "Database is corrupted !"
End Sub
Sub Get_Sale_products(liID As Integer)
'First we get all the NS Products sold within the transaction
On Error GoTo Handler
frmLoad.Show
mainConnect.Open
Load_NSProd:
sql(0) = "SELECT * FROM sale_nsprod WHERE saleId=" & sal(liID).id
records(0).Open sql(0), mainConnect
If records(0).RecordCount = 0 Then GoTo Load_SProd
tmpC = 0
Do Until records(0).EOF
tmpNSProdId = records(0).fields(1)
tmpQ = records(0).fields(2)
tmpCom = records(0).fields(3)

For i = 0 To UBound(nsProd)
If nsProd(i).id = tmpNSProdId Then
tmpID = i
Exit For
End If
Next

MsgBox "Sold NS Product No. " & (tmpC + 1) & "-----" & vbCrLf _
& "Name :  " & nsProd(tmpID).name & vbCrLf _
& "Quantity :  " & tmpQ & vbCrLf _
& "Comment :  " & tmpCom
tmpC = tmpC + 1
records(0).MoveNext
Loop



Load_SProd:
records(0).Close
sql(0) = "SELECT * FROM sale_sprod WHERE saleId=" & sal(liID).id
records(0).Open sql(0), mainConnect
If records(0).RecordCount = 0 Then GoTo Load_End
tmpC = 0
Do Until records(0).EOF
tmpSProdId = records(0).fields(1)
tmpCom = records(0).fields(2)

For i = 0 To UBound(sProd)
If sProd(i).id = tmpSProdId Then
tmpID = i
Exit For
End If
Next

MsgBox "Sold S Product No. " & (tmpC + 1) & "-----" & vbCrLf _
& "Name :  " & sProd(tmpID).name & vbCrLf _
& "Serial :  " & sProd(tmpID).serial & vbCrLf _
& "Accessories :  " & sProd(tmpID).accessories & vbCrLf _
& "Comment :  " & tmpCom
tmpC = tmpC + 1
records(0).MoveNext
Loop

Load_End:
records(0).Close
mainConnect.Close
frmLoad.Hide
Exit Sub
Handler:
mainConnect.Close
frmLoad.Hide
MsgBox "Database is corrupted !"
End Sub
