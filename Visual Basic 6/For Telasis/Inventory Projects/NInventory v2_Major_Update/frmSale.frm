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
   Begin VB.CommandButton cmdAdv 
      BackColor       =   &H80000002&
      Caption         =   "ADV"
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
      Left            =   5640
      Style           =   1  'Graphical
      TabIndex        =   25
      Top             =   1560
      Width           =   615
   End
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
      Format          =   112656387
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
      Format          =   112656386
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


sql(1) = "SELECT * FROM customer"
sql(2) = "SELECT nsproduct.Id,name,quantity FROM prod_name,nsproduct WHERE prod_name.id = nsproduct.pnId" ' "SELECT * FROM nsproduct"
sql(3) = "SELECT sproduct.id,prod_name.name,serial,accessories,supplierId FROM prod_name,sproduct WHERE prod_name.id = sproduct.pnId AND sproduct.customerId IS NULL" '"SELECT * FROM sproduct WHERE customerId IS NULL"

Load_Customers:
If getRecords(1, 1, 1) = True Then
    ReDim customer(records(1).RecordCount)
    tmpC = 1
    Do Until records(1).EOF
        customer(tmpC).id = records(1).Fields(0)
        customer(tmpC).name = records(1).Fields(1)
        cmbCust.AddItem customer(tmpC).name
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If

Load_NSProd:
If getRecords(1, 2, 1) = True Then
    ReDim Preserve nsProd(records(1).RecordCount)
    tmpC = 1
    Do Until records(1).EOF
        nsProd(tmpC).id = records(1).Fields(0)
        nsProd(tmpC).name = records(1).Fields(1)
        nsProd(tmpC).quantity = records(1).Fields(2)
        cmbNSProdName.AddItem nsProd(tmpC).name & "  -  " & nsProd(tmpC).quantity
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If

Load_SProd:
If getRecords(1, 3, 1) = True Then
    ReDim Preserve sProd(records(1).RecordCount)
    tmpC = 1
    Do Until records(1).EOF
        sProd(tmpC).id = records(1).Fields(0)
        sProd(tmpC).name = records(1).Fields(1)
        sProd(tmpC).serial = records(1).Fields(2)
        sProd(tmpC).accessories = records(1).Fields(3)
        sProd(tmpC).supplierId = records(1).Fields(4)
        cmbSProdName.AddItem sProd(tmpC).name & "  -  " & sProd(tmpC).serial
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
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

Sub Add_NSProduct()
tmpList = Split(NSProdIdList, ",")
For Each tmpItem In tmpList
    If tmpItem = nsProd(cmbNSProdName.ListIndex + 1).id Then GoTo Product_Add_Duplicate
Next
If cmbNSProdName.Text = "" Or cmbNSProdName.Text = "Product Name" Then GoTo Product_Name_Error
If txtNSProdQ.Text = "" Or txtNSProdQ.Text = "Quantity" Then GoTo Product_Quantity_Error 'Check for numeric !!!
On Error GoTo Numeric_Error: 'Exploiting 'on error' here :P, trying to catch alphabetical input
If txtNSProdQ.Text <= 0 Then GoTo Numeric_Error
If nsProd(cmbNSProdName.ListIndex + 1).quantity < txtNSProdQ.Text Then GoTo Product_Quantity_Exceed

cartProdCount = cartProdCount + 1
cartNSProdCount = cartNSProdCount + 1
ReDim Preserve cartProd(cartProdCount - 1) 'PRESERVE TO AVOID DATA LOSS !
ReDim Preserve cartNsProd(cartNSProdCount - 1)

cartNsProd(cartNSProdCount - 1).id = nsProd(cmbNSProdName.ListIndex + 1).id 'list index starts from 0 but not IDs in DB
cartNsProd(cartNSProdCount - 1).name = nsProd(cmbNSProdName.ListIndex + 1).name ' WE DON'T REALLY NEED THIS, AS THE NAME IS ALREADY SAVED IN CARTPROD
cartNsProd(cartNSProdCount - 1).quantity = txtNSProdQ.Text
If Not (txtNSProdCom.Text = "No comment.") Then
    cartNsProd(cartNSProdCount - 1).comment = txtNSProdCom.Text
End If
cartProd(cartProdCount - 1).type = "NS"
cartProd(cartProdCount - 1).id = cartNSProdCount - 1 ' this id refers to the cartNsProd array
cartProd(cartProdCount - 1).name = nsProd(cmbNSProdName.ListIndex + 1).name

NSProdIdList = NSProdIdList & "," & nsProd(cmbNSProdName.ListIndex + 1).id
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
    If tmpItem = sProd(cmbSProdName.ListIndex + 1).id Then GoTo Product_Add_Duplicate
Next
If cmbSProdName.Text = "" Or cmbSProdName.Text = "Product Name" Then GoTo Product_Name_Error
cartProdCount = cartProdCount + 1
cartSProdCount = cartSProdCount + 1
ReDim Preserve cartProd(cartProdCount - 1) 'PRESERVE TO AVOID DATA LOSS !
ReDim Preserve cartSProd(cartSProdCount - 1)
cartSProd(cartSProdCount - 1).id = sProd(cmbSProdName.ListIndex + 1).id ' No ID for products that needs to be newly added
cartSProd(cartSProdCount - 1).name = sProd(cmbSProdName.ListIndex + 1).name ' WE DON'T REALLY NEED THIS, AS THE NAME IS ALREADY SAVED IN CARTPROD
cartSProd(cartSProdCount - 1).serial = sProd(cmbSProdName.ListIndex + 1).serial
'cartSProd(cartSProdCount - 1).accessories = txtSProdAcc.Text
If Not (txtSProdCom.Text = "No comment.") Then
    cartSProd(cartSProdCount - 1).comment = txtSProdCom.Text
End If
cartProd(cartProdCount - 1).type = "S"
cartProd(cartProdCount - 1).id = cartSProdCount - 1 ' this id refers to the cartSProd array
cartProd(cartProdCount - 1).name = sProd(cmbSProdName.ListIndex + 1).name

SProdIdList = SProdIdList & "," & sProd(cmbSProdName.ListIndex + 1).id
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

Private Sub Form_Load()
dtDate.Value = Date
dtTime.Value = Time()

fmDef.Visible = True 'the default frame !
Load_Database
End Sub

Private Sub cmdNew_Click()
frmCustomer.Show
End Sub

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

Private Sub cmdAdv_Click()
On Error GoTo nExit
Dim xNSProd, xSProd As String
Dim xSProdN() As String
Dim xSProdQ() As Integer
xNSProd = "----NS Product List----" & vbCrLf
xSProd = "----S Product List----" & vbCrLf
'cartProd is the key for this, need to iterate on that array
'Need to get the serials in to a string with newlines
'STAGE 1- show a comment with seperate NS Products and SProducts, on next ok show the serials of each unique SProduct
For i = 0 To UBound(cartProd)
    If cartProd(i).id = -1 Then GoTo Continue
    If cartProd(i).type = "NS" Then
        xNSProd = xNSProd & cartNsProd(cartProd(i).id).name & " = " & cartNsProd(cartProd(i).id).quantity & vbCrLf
    End If
    If cartProd(i).type = "S" Then
    
        On Error GoTo InitEntry
        For j = 0 To UBound(xSProdN)
            If xSProdN(j) = cartSProd(cartProd(i).id).name Then
                xSProdQ(j) = xSProdQ(j) + 1
                GoTo Continue
            End If
        Next
        ReDim Preserve xSProdN(UBound(xSProdN) + 1)
        ReDim Preserve xSProdQ(UBound(xSProdQ) + 1)
        xSProdN(UBound(xSProdN)) = cartSProd(cartProd(i).id).name
        xSProdQ(UBound(xSProdN)) = 1
    
    End If
    
    GoTo Continue ' to skip this part otherwise everything becomes 1
    
InitEntry:     'We catch the error cause at UBound(xSProdN), when the Sproducts have not yet been added and then correct it by adding a new one
    ReDim Preserve xSProdN(0)
    ReDim Preserve xSProdQ(0)
    xSProdN(0) = cartSProd(cartProd(i).id).name
    xSProdQ(0) = 1
    
Continue:
Next

On Error GoTo skipSp
For i = 0 To UBound(xSProdN)
    xSProd = xSProd & xSProdN(i) & " = " & xSProdQ(i) & vbCrLf
Next

skipSp:
MsgBox xNSProd & vbCrLf & xSProd
nExit:
End Sub

Private Sub cmdProc_Click()
'First purchase table needs to be updated
'New products needs to be added updated
'Then purchase_ns and purchase_s needs to be updated
If cmbCust.Text = "Select Customer" Then Exit Sub
If cmbCust.ListIndex < 0 Then Exit Sub
If liMain.ListCount <= 0 Then Exit Sub

tmpDT = dtDate.Year & "-" & dtDate.Month & "-" & dtDate.Day & Format(dtTime.Value, " hh:mm:ss")
sql(1) = "INSERT INTO sale(customerId,dateTime,comment,user) VALUES('" & customer(cmbCust.ListIndex + 1).id & "','" & tmpDT & "','" & txtCom.Text & "','" & username & "')"
sql(2) = "SELECT LAST_INSERT_ID()" 'need to get the purchase id assigned by the server
If sendRecords(1, 1) = True Then
    If getRecords(1, 2, 1) = True Then
    tmpSaleId = records(1).Fields(0) 'for later reference
    records(1).Close
        For i = 0 To UBound(cartProd)
        If Not (cartProd(i).id = "-1") Then 'The cart product was deleted
           If cartProd(i).type = "NS" Then
                'decrease the quantity available in the database
                sql(3) = "SELECT quantity FROM nsproduct WHERE id=" & cartNsProd(cartProd(i).id).id
                If getRecords(1, 3, 1) = True Then
                tmpNSProductQuantity = Int(records(1).Fields(0))
                records(1).Close
                tmpNSProductQuantity = tmpNSProductQuantity - cartNsProd(cartProd(i).id).quantity
                sql(4) = "INSERT INTO sale_nsprod(saleId,nsProductId,quantity,comment) VALUES('" & tmpSaleId & "','" & cartNsProd(cartProd(i).id).id & "','" & cartNsProd(cartProd(i).id).quantity & "','" & cartNsProd(cartProd(i).id).comment & "')"
                sql(5) = "UPDATE nsproduct SET quantity=" & tmpNSProductQuantity & "  WHERE id=" & cartNsProd(cartProd(i).id).id
                If sendRecords(1, 4) = True Then
                End If
                End If
                If sendRecords(1, 5) = True Then
                End If
           Else
           If cartProd(i).type = "S" Then
            tmpSProductId = cartSProd(cartProd(i).id).id
            sql(6) = "INSERT INTO sale_sprod(saleId,sProductId,comment) VALUES('" & tmpSaleId & "','" & tmpSProductId & "','" & cartSProd(cartProd(i).id).comment & "')"
            sql(7) = "UPDATE sproduct SET customerId=" & (cmbCust.ListIndex + 1) & "  WHERE id=" & tmpSProductId
            If sendRecords(1, 6) = True Then
            End If
            If sendRecords(1, 7) = True Then
            End If
           End If
           End If
        End If
        Next
    End If
End If
Me.Hide
MsgBox "Sale transaction completed !"
Unload Me
frmDash.Initialize_Dash
frmDash.Show
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
frmDash.Initialize_Dash
frmDash.Show
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
    For i = 1 To UBound(sProd)
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
