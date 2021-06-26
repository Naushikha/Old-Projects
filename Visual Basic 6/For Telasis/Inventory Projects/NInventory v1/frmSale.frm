VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form frmSale 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Sell Products"
   ClientHeight    =   6705
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   14955
   Icon            =   "frmSale.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6705
   ScaleWidth      =   14955
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdProc 
      BackColor       =   &H80000002&
      Caption         =   "Proceed with transaction"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   11760
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   6120
      Width           =   3135
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H80000002&
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   6120
      Width           =   1335
   End
   Begin VB.TextBox txtCom 
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
      Height          =   1215
      Left            =   3120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   6
      Text            =   "frmSale.frx":7D32
      Top             =   5280
      Width           =   8535
   End
   Begin VB.CommandButton cmdDel 
      BackColor       =   &H80000002&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6360
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1560
      Visible         =   0   'False
      Width           =   375
   End
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
      Height          =   3060
      ItemData        =   "frmSale.frx":7D40
      Left            =   120
      List            =   "frmSale.frx":7D42
      TabIndex        =   4
      Top             =   2040
      Width           =   6615
   End
   Begin VB.CommandButton cmdAdd 
      BackColor       =   &H80000002&
      Caption         =   "Add Product"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   13200
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   240
      Width           =   1695
   End
   Begin VB.ComboBox cmbProdType 
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
      ItemData        =   "frmSale.frx":7D44
      Left            =   10440
      List            =   "frmSale.frx":7D4E
      TabIndex        =   2
      Text            =   "Select Product Type"
      Top             =   240
      Width           =   2655
   End
   Begin VB.ComboBox cmbCust 
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
      ItemData        =   "frmSale.frx":7D6B
      Left            =   3120
      List            =   "frmSale.frx":7D6D
      TabIndex        =   1
      Text            =   "Select Customer"
      Top             =   840
      Width           =   3615
   End
   Begin VB.CommandButton cmdNew 
      BackColor       =   &H80000002&
      Caption         =   "New Customer"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   3120
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1250
      Width           =   1815
   End
   Begin MSComCtl2.DTPicker dtDate 
      Height          =   375
      Left            =   3120
      TabIndex        =   9
      Top             =   120
      Width           =   2055
      _ExtentX        =   3625
      _ExtentY        =   661
      _Version        =   393216
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CalendarBackColor=   -2147483645
      CalendarTitleBackColor=   -2147483645
      CustomFormat    =   "yyyy/MM/dd"
      Format          =   118947843
      CurrentDate     =   43220
   End
   Begin MSComCtl2.DTPicker dtTime 
      Height          =   375
      Left            =   5160
      TabIndex        =   10
      Top             =   120
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   661
      _Version        =   393216
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      CalendarBackColor=   -2147483645
      CalendarTitleBackColor=   -2147483645
      Format          =   118947842
      CurrentDate     =   43220
   End
   Begin VB.Frame fmDef 
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
      Height          =   4575
      Left            =   6960
      TabIndex        =   19
      Top             =   600
      Visible         =   0   'False
      Width           =   7935
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Products will be displayed here once product type is selected."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   1095
         Left            =   1080
         TabIndex        =   20
         Top             =   1920
         Width           =   5415
      End
   End
   Begin VB.Frame fmS 
      BackColor       =   &H80000003&
      Caption         =   "S Products"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   4575
      Left            =   6960
      TabIndex        =   11
      Top             =   600
      Visible         =   0   'False
      Width           =   7935
      Begin VB.TextBox txtSProdCom 
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
         Height          =   2895
         Left            =   240
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   14
         Text            =   "frmSale.frx":7D6F
         Top             =   1440
         Width           =   4455
      End
      Begin VB.TextBox txtSProdSerial 
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
         Left            =   240
         TabIndex        =   13
         Text            =   "Product Serial"
         Top             =   480
         Width           =   7455
      End
      Begin VB.ComboBox cmbSProdName 
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
         ItemData        =   "frmSale.frx":7D7D
         Left            =   240
         List            =   "frmSale.frx":7D7F
         TabIndex        =   12
         Text            =   "Product Name"
         Top             =   960
         Width           =   7455
      End
   End
   Begin VB.Frame fmNS 
      BackColor       =   &H80000003&
      Caption         =   "NS Products"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   4575
      Left            =   6960
      TabIndex        =   15
      Top             =   600
      Visible         =   0   'False
      Width           =   7935
      Begin VB.TextBox txtNSProdQ 
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
         Height          =   345
         Left            =   240
         TabIndex        =   18
         Text            =   "Quantity"
         Top             =   960
         Width           =   7455
      End
      Begin VB.ComboBox cmbNSProdName 
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
         ItemData        =   "frmSale.frx":7D81
         Left            =   240
         List            =   "frmSale.frx":7D83
         TabIndex        =   17
         Text            =   "Product Name"
         Top             =   480
         Width           =   7455
      End
      Begin VB.TextBox txtNSProdCom 
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
         Height          =   2895
         Left            =   240
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   16
         Text            =   "frmSale.frx":7D85
         Top             =   1440
         Width           =   4455
      End
   End
   Begin VB.Label lbl1 
      BackStyle       =   0  'Transparent
      Caption         =   "Date/Time of transcation     :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   375
      Left            =   120
      TabIndex        =   24
      Top             =   240
      Width           =   3015
   End
   Begin VB.Label lbl3 
      BackStyle       =   0  'Transparent
      Caption         =   "Comments about sale          :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   375
      Left            =   120
      TabIndex        =   23
      Top             =   5280
      Width           =   3015
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Products sold                        :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   375
      Left            =   120
      TabIndex        =   22
      Top             =   1560
      Width           =   3015
   End
   Begin VB.Label lbl2 
      BackStyle       =   0  'Transparent
      Caption         =   "Name of customer                :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   375
      Left            =   120
      TabIndex        =   21
      Top             =   840
      Width           =   3015
   End
End
Attribute VB_Name = "frmSale"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SendMessageByNum Lib "user32" _
Alias "SendMessageA" (ByVal hwnd As Long, ByVal _
wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Private Const LB_SETHORIZONTALEXTENT = &H194
Private Const WM_HSCROLL = &H114
Private Const SB_RIGHT = 7
Private listEazyfy As Integer

Private sProd() As sProduct
Private nsProd() As nsProduct
Private customer() As customer
Private cartProd() As cartProduct
Private cartSProd() As sProduct
Private cartNsProd() As nsProduct
Private cartProdCount, cartNSProdCount, cartSProdCount As Integer
Private prodType As String
Private NSProdIdList As String 'This implementation is different but the standrad is "1,2,4,7,"
Private SProdIdList As String
Private cartListTracker() As String
Private Sub cmbProdType_Click()
If cmbProdType.Text = "NS Products" Then
fmDef.Visible = False
fmNS.Visible = True
fmS.Visible = False
prodType = "NS"
Else
If cmbProdType.Text = "S Products" Then
fmDef.Visible = False
fmNS.Visible = False
fmS.Visible = True
prodType = "S"
End If
End If
End Sub
Private Sub cmdAdd_Click()
If prodType = "NS" Then
Add_NSProduct
Else
If prodType = "S" Then
Add_SProduct
End If
End If
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdDel_Click()
If liMain.ListIndex >= 0 Then
If cartProd(cartListTracker(liMain.ListIndex)).type = "NS" Then
tmpList = Split(NSProdIdList, ",")
tmpRem = 0
For i = 0 To UBound(tmpList)
If tmpList(i) = cartNsProd(cartProd(cartListTracker(liMain.ListIndex)).id).id Then
tempRem = i
Exit For
End If
Next
NSProdIdList = ""
For i = 0 To UBound(tmpList)
If Not (i = tempRem) Then
NSProdIdList = NSProdIdList & "," & tmpList(i)
End If
Next
End If
If cartProd(cartListTracker(liMain.ListIndex)).type = "S" Then
tmpList = Split(SProdIdList, ",")
tmpRem = 0
For i = 0 To UBound(tmpList)
If tmpList(i) = cartSProd(cartProd(cartListTracker(liMain.ListIndex)).id).id Then
tempRem = i
Exit For
End If
Next
SProdIdList = ""
For i = 0 To UBound(tmpList)
If Not (i = tempRem) Then
SProdIdList = SProdIdList & "," & tmpList(i)
End If
Next
End If
cartProd(cartListTracker(liMain.ListIndex)).id = "-1"
Refresh_Cart
End If
End Sub
Private Sub cmdNew_Click()
frmCustomer.Show
End Sub
Private Sub cmdProc_Click()
'First purchase table needs to be updated
'New products needs to be added updated
'Then purchase_ns and purchase_s needs to be updated
If cmbCust.Text = "Select Customer" Then Exit Sub
If cmbCust.ListIndex < 0 Then Exit Sub
If liMain.ListCount <= 0 Then Exit Sub
On Error GoTo Handler
frmLoad.Show
mainConnect.Open
'customers id start from 1 --->
tmpDT = dtDate.Year & "-" & dtDate.Month & "-" & dtDate.Day & Format(dtTime.Value, " hh:mm:ss")
sql(0) = "INSERT INTO sale(customerId,dateTime,comment,user) VALUES('" & (cmbCust.ListIndex + 1) & "','" & tmpDT & "','" & txtCom.Text & "','" & username & "')"
sql(1) = "SELECT LAST_INSERT_ID()" 'need to get the purchase id assigned by the server 'cmbcust has it all sorted out in the correct order
mainConnect.Execute sql(0)
records(0).Open sql(1), mainConnect
saleId = records(0).fields(0) 'for later reference
records(0).Close

For i = 0 To UBound(cartProd)
If Not (cartProd(i).id = "-1") Then 'The cart product was deleted
   If cartProd(i).type = "NS" Then
   'decrease the quantity available in the database
   sql(2) = "SELECT quantity FROM nsproduct WHERE id=" & cartNsProd(cartProd(i).id).id
   records(0).Open sql(2)
   nsproductquantity = Int(records(0).fields(0))
   records(0).Close
   nsproductquantity = nsproductquantity - cartNsProd(cartProd(i).id).quantity
   sql(0) = "UPDATE nsproduct SET quantity=" & nsproductquantity & "  WHERE id=" & cartNsProd(cartProd(i).id).id
   mainConnect.Execute sql(0)
   sql(0) = "INSERT INTO sale_nsprod(saleId,nsProductId,quantity,comment) VALUES('" & saleId & "','" & cartNsProd(cartProd(i).id).id & "','" & cartNsProd(cartProd(i).id).quantity & "','" & cartNsProd(cartProd(i).id).comment & "')"
   mainConnect.Execute sql(0)
   Else
   If cartProd(i).type = "S" Then
   sProductId = cartSProd(cartProd(i).id).id
   sql(0) = "UPDATE sproduct SET customerId=" & (cmbCust.ListIndex + 1) & "  WHERE id=" & sProductId
   mainConnect.Execute sql(0)
   sql(0) = "INSERT INTO sale_sprod(saleId,sProductId,comment) VALUES('" & saleId & "','" & sProductId & "','" & cartSProd(cartProd(i).id).comment & "')"
   mainConnect.Execute sql(0)
   End If
   End If
End If
Next


'x( couldnt do --> Execution should be done together, can't afford connection loss in between queries !!!! - may cause db corruption

mainConnect.Close
frmLoad.Hide
MsgBox "Sale transaction completed !"
Unload Me
frmDash.Initialize_Dash
frmDash.Show
Exit Sub
Handler:
mainConnect.Close
frmLoad.Hide
MsgBox "An error occured, check with network admin to ensure that the database wasn't corrupted  amidst operation !"
End Sub




Private Sub Form_Load()
dtDate.Value = Date
dtTime.Value = Time()

fmDef.Visible = True
Load_Database
End Sub
Sub Load_Database()
cmbCust.Clear
cmbNSProdName.Clear
cmbSProdName.Clear
cmbCust.Text = "Select Customer"
cmbNSProdName.Text = "Product Name"
cmbSProdName.Text = "Product Name"
txtCom.Text = "No comment." 'The multi line text boxes are a pain in the ass xD
txtNSProdCom.Text = "No comment."
txtSProdCom.Text = "No comment."
ReDim nsProd(0) 'Here to prevent some 0 errors down the line when adding products
ReDim sProd(0)
'There's a reset error, arrays are not cleared upon closing and opening form again :/
Dim cartProd(0)
Dim cartSProd(0)
Dim cartNsProd(0)
cartProdCount = 0
cartNSProdCount = 0
cartSProdCount = 0 'Now fixed :D
NSProdIdList = ""
SProdIdList = ""

On Error GoTo Handler
frmLoad.Show
mainConnect.Open
Load_Customers:
records(0).Open "SELECT * FROM customer", mainConnect
If records(0).RecordCount = 0 Then GoTo Load_NSProd
ReDim customer(records(0).RecordCount - 1)
Dim tmpC As Integer
Do Until records(0).EOF
customer(tmpC).id = records(0).fields(0)
customer(tmpC).name = records(0).fields(1)
cmbCust.AddItem customer(tmpC).name
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
cmbNSProdName.AddItem nsProd(tmpC).name & "  -  " & nsProd(tmpC).quantity
tmpC = tmpC + 1
records(0).MoveNext
Loop


Load_SProd:
records(0).Close
records(0).Open "SELECT * FROM sproduct WHERE customerId IS NULL", mainConnect
If records(0).RecordCount = 0 Then GoTo Load_End
ReDim Preserve sProd(records(0).RecordCount - 1)
tmpC = 0
Do Until records(0).EOF
sProd(tmpC).id = records(0).fields(0)
sProd(tmpC).name = records(0).fields(1)
sProd(tmpC).serial = records(0).fields(2)
sProd(tmpC).accessories = records(0).fields(3)
sProd(tmpC).customerId = records(0).fields(4)
cmbSProdName.AddItem sProd(tmpC).name & "  -  " & sProd(tmpC).serial
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
Sub Add_NSProduct()
tmpList = Split(NSProdIdList, ",")
For Each tmpItem In tmpList
If tmpItem = nsProd(cmbNSProdName.ListIndex).id Then GoTo Product_Add_Duplicate
Next
If cmbNSProdName.Text = "" Or cmbNSProdName.Text = "Product Name" Then GoTo Product_Name_Error
If txtNSProdQ.Text = "" Or txtNSProdQ.Text = "Quantity" Then GoTo Product_Quantity_Error 'Check for numeric !!!
On Error GoTo Numeric_Error: 'Exploiting 'on error' here :P, trying to catch alphabetical input
If txtNSProdQ.Text <= 0 Then GoTo Numeric_Error
If nsProd(cmbNSProdName.ListIndex).quantity < txtNSProdQ.Text Then GoTo Product_Quantity_Exceed

cartProdCount = cartProdCount + 1
cartNSProdCount = cartNSProdCount + 1
ReDim Preserve cartProd(cartProdCount - 1) 'PRESERVE TO AVOID DATA LOSS !
ReDim Preserve cartNsProd(cartNSProdCount - 1)

cartNsProd(cartNSProdCount - 1).id = nsProd(cmbNSProdName.ListIndex).id 'list index starts from 0 but not IDs in DB
cartNsProd(cartNSProdCount - 1).name = nsProd(cmbNSProdName.ListIndex).name ' WE DON'T REALLY NEED THIS, AS THE NAME IS ALREADY SAVED IN CARTPROD
cartNsProd(cartNSProdCount - 1).quantity = txtNSProdQ.Text
If Not (txtNSProdCom.Text = "No comment.") Then
cartNsProd(cartNSProdCount - 1).comment = txtNSProdCom.Text
End If
cartProd(cartProdCount - 1).type = "NS"
cartProd(cartProdCount - 1).id = cartNSProdCount - 1 ' this id refers to the cartNsProd array
cartProd(cartProdCount - 1).name = nsProd(cmbNSProdName.ListIndex).name

NSProdIdList = NSProdIdList & "," & nsProd(cmbNSProdName.ListIndex).id
Refresh_Cart
cmbNSProdName.Text = "Product Name"
txtNSProdQ.Text = "Quantity"
txtNSProdCom.Text = "No comment."
Exit Sub
Product_Name_Error:
MsgBox "Product name is required !"
Exit Sub
Product_Quantity_Error:
MsgBox "Product quantity is required !"
Exit Sub
Product_Quantity_Exceed:
MsgBox "Product quantity has exceeded than what's available in stock !"
Exit Sub
Numeric_Error:
MsgBox "Product quantity must be a number and cannot be negative or zero !"
Exit Sub
Product_Add_Duplicate:
MsgBox "Product is already added in to the cart !"
End Sub
Sub Add_SProduct()
tmpList = Split(SProdIdList, ",")
For Each tmpItem In tmpList
If tmpItem = sProd(cmbSProdName.ListIndex).id Then GoTo Product_Add_Duplicate
Next
If cmbSProdName.Text = "" Or cmbSProdName.Text = "Product Name" Then GoTo Product_Name_Error
cartProdCount = cartProdCount + 1
cartSProdCount = cartSProdCount + 1
ReDim Preserve cartProd(cartProdCount - 1) 'PRESERVE TO AVOID DATA LOSS !
ReDim Preserve cartSProd(cartSProdCount - 1)
cartSProd(cartSProdCount - 1).id = sProd(cmbSProdName.ListIndex).id ' No ID for products that needs to be newly added
cartSProd(cartSProdCount - 1).name = sProd(cmbSProdName.ListIndex).name ' WE DON'T REALLY NEED THIS, AS THE NAME IS ALREADY SAVED IN CARTPROD
cartSProd(cartSProdCount - 1).serial = sProd(cmbSProdName.ListIndex).serial
'cartSProd(cartSProdCount - 1).accessories = txtSProdAcc.Text
If Not (txtSProdCom.Text = "No comment.") Then
cartSProd(cartSProdCount - 1).comment = txtSProdCom.Text
End If
cartProd(cartProdCount - 1).type = "S"
cartProd(cartProdCount - 1).id = cartSProdCount - 1 ' this id refers to the cartSProd array
cartProd(cartProdCount - 1).name = sProd(cmbSProdName.ListIndex).name

SProdIdList = SProdIdList & "," & sProd(cmbSProdName.ListIndex).id
Refresh_Cart
'cmbSProdName.Text = "Product Name" Sometimes you might need to add same products all over
'txtSProdSerial.Text = "Product Serial"
txtSProdCom.Text = "No comment."
Exit Sub
Product_Name_Error:
MsgBox "Product name is required !"
Exit Sub
Product_Add_Duplicate:
MsgBox "Product is already added in to the cart !"
End Sub
Sub Refresh_Cart()
liMain.Clear
j = 0 'to filter the undeleted ones
For i = 0 To UBound(cartProd)
If Not (cartProd(i).id = "-1") Then 'The cart product was deleted
   If cartProd(i).type = "NS" Then
   tmpString = cartProd(i).name & " - " & cartNsProd(cartProd(i).id).quantity
   liMain.AddItem tmpString
   Else
   If cartProd(i).type = "S" Then
   tmpString = cartProd(i).name & " - " & cartSProd(cartProd(i).id).serial
   liMain.AddItem tmpString
   End If
   End If
   ReDim Preserve cartListTracker(j)
   cartListTracker(j) = i 'save the position of the undeleted items in cartProd array to refer from the liMain index
   j = j + 1
End If
Next
SendMessageByNum liMain.hwnd, WM_HSCROLL, SB_RIGHT, 0
End Sub

Private Sub liMain_Click()
If liMain.ListIndex >= 0 Then
cmdDel.Visible = True
Else
cmdDel.Visible = False
End If
End Sub

Private Sub txtCom_Click()
If txtCom.Text = "No comment." Then
txtCom.Text = ""
End If
End Sub
Private Sub txtCom_KeyPress(KeyAscii As Integer)
Select Case Chr(KeyAscii)
    Case "'"
        KeyAscii = 0
End Select
End Sub
Private Sub txtCom_LostFocus()
If txtCom.Text = "" Then
txtCom.Text = "No comment."
End If
End Sub
Private Sub txtSProdSerial_Click()
txtSProdSerial.Text = ""
End Sub
Private Sub txtSProdSerial_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then
For i = 0 To UBound(sProd)
If txtSProdSerial = sProd(i).serial Then
cmbSProdName.ListIndex = i
Add_SProduct
txtSProdSerial.Text = ""
txtSProdSerial.SetFocus
liMain.ListIndex = liMain.ListCount - 1
Exit For
End If
Next
End If
End Sub
Private Sub txtNSProdQ_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then
Add_NSProduct
cmbNSProdName.SetFocus
liMain.ListIndex = liMain.ListCount - 1
End If
End Sub
Private Sub txtSProdSerial_LostFocus()
If txtSProdSerial.Text = "" Then
txtSProdSerial.Text = "Product Serial"
End If
End Sub
Private Sub txtSProdAcc_Click()
If txtSProdAcc.Text = "No product accessories." Then
txtSProdAcc.Text = ""
End If
End Sub
Private Sub txtSProdAcc_LostFocus()
If txtSProdAcc.Text = "" Then
txtSProdAcc.Text = "No product accessories."
End If
End Sub
Private Sub txtSProdCom_Click()
If txtSProdCom.Text = "No comment." Then
txtSProdCom.Text = ""
End If
End Sub
Private Sub txtSProdCom_LostFocus()
If txtSProdCom.Text = "" Then
txtSProdCom.Text = "No comment."
End If
End Sub
Private Sub txtSProdCom_KeyPress(KeyAscii As Integer)
Select Case Chr(KeyAscii)
    Case "'"
        KeyAscii = 0
End Select
End Sub
Private Sub txtNSProdQ_gotFocus()
txtNSProdQ.Text = ""
End Sub
Private Sub txtNSProdQ_LostFocus()
If txtNSProdQ.Text = "" Then
txtNSProdQ.Text = "Quantity"
End If
End Sub
Private Sub txtNSProdCom_KeyPress(KeyAscii As Integer)
Select Case Chr(KeyAscii)
    Case "'"
        KeyAscii = 0
End Select
End Sub
Private Sub txtNSProdCom_Click()
If txtNSProdCom.Text = "No comment." Then
txtNSProdCom.Text = ""
End If
End Sub
Private Sub txtNSProdCom_LostFocus()
If txtNSProdCom.Text = "" Then
txtNSProdCom.Text = "No comment."
End If
End Sub
Private Sub cmbNSProdName_gotFocus()
If cmbNSProdName.Text = "Product Name" Then
cmbNSProdName.Text = ""
End If
End Sub
Private Sub cmbNSProdName_lostFocus()
If cmbNSProdName.Text = "" Then
cmbNSProdName.Text = "Product Name"
End If
End Sub
Sub update_Customer(action As String, val1 As String, val2 As String)
Select Case action
Case Is = "redim"
ReDim customer(val1)
Case Is = "set_id"
customer(Int(val1)).id = val2
Case Is = "set_name"
customer(Int(val1)).name = val2
Case Is = "add_sup"
cmbCust.AddItem customer(Int(val1)).name
End Select
End Sub
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyF2 Then
listEazyfy = listEazyfy + 1
End If
If KeyCode = vbKeyF1 Then
If listEazyfy > 0 Then
listEazyfy = listEazyfy - 1
End If
End If
SendMessageByNum liMain.hwnd, LB_SETHORIZONTALEXTENT, (100 * listEazyfy), 0
End Sub
