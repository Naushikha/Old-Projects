VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmPurchase 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Purchase Products"
   ClientHeight    =   6825
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   14865
   Icon            =   "frmPurchase.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6825
   ScaleWidth      =   14865
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
      TabIndex        =   26
      Top             =   1680
      Width           =   615
   End
   Begin VB.CommandButton cmdNew 
      BackColor       =   &H80000002&
      Caption         =   "New Supplier"
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
      TabIndex        =   19
      Top             =   1380
      Width           =   1695
   End
   Begin VB.ComboBox cmbSup 
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
      ItemData        =   "frmPurchase.frx":7D32
      Left            =   3120
      List            =   "frmPurchase.frx":7D34
      TabIndex        =   14
      Text            =   "Select Supplier"
      Top             =   960
      Width           =   3615
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
      ItemData        =   "frmPurchase.frx":7D36
      Left            =   10320
      List            =   "frmPurchase.frx":7D40
      TabIndex        =   12
      Text            =   "Select Product Type"
      Top             =   240
      Width           =   2655
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
      Left            =   13080
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   240
      Width           =   1695
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
      ItemData        =   "frmPurchase.frx":7D5D
      Left            =   120
      List            =   "frmPurchase.frx":7D5F
      TabIndex        =   8
      Top             =   2160
      Width           =   6615
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
      TabIndex        =   7
      Top             =   1680
      Visible         =   0   'False
      Width           =   375
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
      Left            =   3240
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   5
      Text            =   "frmPurchase.frx":7D61
      Top             =   5400
      Width           =   8295
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
      TabIndex        =   4
      Top             =   6240
      Width           =   1335
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
      Left            =   11640
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   6240
      Width           =   3135
   End
   Begin MSComCtl2.DTPicker dtDate 
      Height          =   375
      Left            =   3120
      TabIndex        =   0
      Top             =   240
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
      CalendarForeColor=   0
      CalendarTitleBackColor=   -2147483645
      CustomFormat    =   "yyyy/MM/dd"
      Format          =   113115139
      CurrentDate     =   43220
   End
   Begin MSComCtl2.DTPicker dtTime 
      Height          =   375
      Left            =   5160
      TabIndex        =   1
      Top             =   240
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
      Format          =   113115138
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
      Height          =   4695
      Left            =   6960
      TabIndex        =   16
      Top             =   600
      Visible         =   0   'False
      Width           =   7815
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
         TabIndex        =   17
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
      Height          =   4695
      Left            =   6960
      TabIndex        =   11
      Top             =   600
      Visible         =   0   'False
      Width           =   7815
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
         ItemData        =   "frmPurchase.frx":7D6F
         Left            =   240
         List            =   "frmPurchase.frx":7D71
         TabIndex        =   22
         Text            =   "Product Name"
         Top             =   600
         Width           =   7335
      End
      Begin VB.TextBox txtSProdAcc 
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
         TabIndex        =   21
         Text            =   "frmPurchase.frx":7D73
         Top             =   1560
         Width           =   4335
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
         TabIndex        =   20
         Text            =   "Product Serial"
         Top             =   1080
         Width           =   7335
      End
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
         Left            =   4680
         MultiLine       =   -1  'True
         ScrollBars      =   3  'Both
         TabIndex        =   18
         Text            =   "frmPurchase.frx":7D8D
         Top             =   1560
         Width           =   2895
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
      Height          =   4695
      Left            =   6960
      TabIndex        =   10
      Top             =   600
      Visible         =   0   'False
      Width           =   7815
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
         TabIndex        =   24
         Text            =   "frmPurchase.frx":7D9B
         Top             =   1560
         Width           =   4335
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
         ItemData        =   "frmPurchase.frx":7DA9
         Left            =   240
         List            =   "frmPurchase.frx":7DAB
         TabIndex        =   23
         Text            =   "Product Name"
         Top             =   600
         Width           =   7215
      End
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
         TabIndex        =   15
         Text            =   "Quantity"
         Top             =   1080
         Width           =   7215
      End
   End
   Begin VB.Label lbl2 
      BackStyle       =   0  'Transparent
      Caption         =   "Name of supplier                  :"
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
      TabIndex        =   25
      Top             =   960
      Width           =   3015
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Products purchased             :"
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
      TabIndex        =   13
      Top             =   1680
      Width           =   3015
   End
   Begin VB.Label lbl3 
      BackStyle       =   0  'Transparent
      Caption         =   "Comments about purchase   :"
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
      TabIndex        =   6
      Top             =   5400
      Width           =   3015
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
      TabIndex        =   2
      Top             =   240
      Width           =   3015
   End
End
Attribute VB_Name = "frmPurchase"
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
Private supplier() As supplier
Private cartProd() As cartProduct
Private cartSProd() As sProduct
Private cartNsProd() As nsProduct
Private cartProdCount, cartNSProdCount, cartSProdCount As Integer
Private prodType As String
Private cartListTracker() As String

Sub Load_Database()
cmbSup.Clear
cmbNSProdName.Clear
cmbSProdName.Clear
cmbSup.Text = "Select Supplier"
cmbNSProdName.Text = "Product Name"
cmbSProdName.Text = "Product Name"
txtCom.Text = "No comment." 'The multi line text boxes are a pain in the ass xD
txtNSProdCom.Text = "No comment."
txtSProdAcc.Text = "No product accessories."
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

sql(1) = "SELECT * FROM supplier"
sql(2) = "SELECT nsproduct.Id,name,quantity FROM prod_name,nsproduct WHERE prod_name.id = nsproduct.pnId" '"SELECT * FROM nsproduct"
sql(3) = "SELECT name FROM prod_name WHERE type='S'" '"SELECT DISTINCT name FROM sproduct"

If getRecords(1, 1, 1) = True Then
    ReDim supplier(records(1).RecordCount)
    tmpC = 1
    Do Until records(1).EOF
        supplier(tmpC).id = records(1).Fields(0)
        supplier(tmpC).name = records(1).Fields(1)
        cmbSup.AddItem supplier(tmpC).name
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If

If getRecords(1, 2, 1) = True Then
    ReDim Preserve nsProd(records(1).RecordCount)
    tmpC = 1
    Do Until records(1).EOF
        nsProd(tmpC).id = records(1).Fields(0)
        nsProd(tmpC).name = records(1).Fields(1)
        nsProd(tmpC).quantity = records(1).Fields(2)
        cmbNSProdName.AddItem nsProd(tmpC).name
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If

If getRecords(1, 3, 1) = True Then
    ReDim Preserve sProd(records(1).RecordCount)
    tmpC = 1
    Do Until records(1).EOF
        sProd(tmpC).name = records(1).Fields(0)
        cmbSProdName.AddItem sProd(tmpC).name
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If

End Sub

Sub Add_NSProduct()
'data compatability
If cmbNSProdName.Text = "" Or cmbNSProdName.Text = "Product Name" Then
    MsgBox "Product name is required !"
Exit Sub
ElseIf Len(cmbNSProdName.Text) > 50 Then
    MsgBox "Product name is too long !"
Exit Sub
End If
If txtNSProdQ.Text = "" Or txtNSProdQ.Text = "Quantity" Then 'Check for numeric !!!
    MsgBox "Product quantity is required !"
Exit Sub
End If
On Error GoTo Numeric_Error: 'Exploiting 'on error' here :P, trying to catch alphabetical input
If txtNSProdQ.Text <= 0 Then GoTo Numeric_Error

cartProdCount = cartProdCount + 1
cartNSProdCount = cartNSProdCount + 1
ReDim Preserve cartProd(cartProdCount - 1) 'PRESERVE TO AVOID DATA LOSS !
ReDim Preserve cartNsProd(cartNSProdCount - 1)
tmpCheckExistence = False
For i = 0 To UBound(nsProd) ' gave an error when NSProduct list is empty, array not assigned yet , remedied by redim
   If cmbNSProdName.Text = nsProd(i).name Then
    cartNsProd(cartNSProdCount - 1).id = nsProd(i).id
    tmpCheckExistence = True
    Exit For
   End If
Next
If tmpCheckExistence = False Then
    cartNsProd(cartNSProdCount - 1).id = "" ' No ID for products that needs to be newly added
End If
cartNsProd(cartNSProdCount - 1).name = cmbNSProdName.Text ' WE DON'T REALLY NEED THIS, AS THE NAME IS ALREADY SAVED IN CARTPROD
cartNsProd(cartNSProdCount - 1).quantity = txtNSProdQ.Text
If Not (txtNSProdCom.Text = "No comment.") Then
    cartNsProd(cartNSProdCount - 1).comment = txtNSProdCom.Text
End If
cartProd(cartProdCount - 1).type = "NS"
cartProd(cartProdCount - 1).id = cartNSProdCount - 1 ' this id refers to the cartNsProd array
cartProd(cartProdCount - 1).name = cmbNSProdName.Text
Refresh_Cart
cmbNSProdName.Text = "Product Name"
txtNSProdQ.Text = "Quantity"
txtNSProdCom.Text = "No comment."
Exit Sub

Numeric_Error:
MsgBox "Product quantity must be a number and cannot be negative or zero !"
End Sub

Sub Add_SProduct()

If cmbSProdName.Text = "" Or cmbSProdName.Text = "Product Name" Then
    MsgBox "Product name is required !"
Exit Sub
ElseIf Len(cmbSProdName.Text) > 50 Then
    MsgBox "Product name is too long !"
Exit Sub
End If
If txtSProdSerial.Text = "" Or txtSProdSerial.Text = "Product Serial" Then
    MsgBox "Product serial is required !"
Exit Sub
ElseIf Len(txtSProdSerial.Text) > 40 Then 'if the serial is larger than what can be accomodated
    MsgBox "Product serial is too long !"
Exit Sub
ElseIf InStr(txtSProdSerial.Text, " ") Then 'if the serial is larger than what can be accomodated
    MsgBox "Product serial cannot contain spaces !"
Exit Sub
End If
'If Len(txtSProdAcc.Text) > 200 Then
'MsgBox "Product serial is too long !"
'Exit Sub
'End If
'If Len(txtSProdCom.Text) > 200 Then
'MsgBox "Product serial is too long !"
'Exit Sub
'End If
cartProdCount = cartProdCount + 1
cartSProdCount = cartSProdCount + 1
ReDim Preserve cartProd(cartProdCount - 1) 'PRESERVE TO AVOID DATA LOSS !
ReDim Preserve cartSProd(cartSProdCount - 1)
cartSProd(cartSProdCount - 1).id = "" ' No ID for products that needs to be newly added
cartSProd(cartSProdCount - 1).name = cmbSProdName.Text ' WE DON'T REALLY NEED THIS, AS THE NAME IS ALREADY SAVED IN CARTPROD
cartSProd(cartSProdCount - 1).serial = txtSProdSerial.Text
cartSProd(cartSProdCount - 1).accessories = txtSProdAcc.Text
If Not (txtSProdCom.Text = "No comment.") Then
    cartSProd(cartSProdCount - 1).comment = txtSProdCom.Text
End If
cartProd(cartProdCount - 1).type = "S"
cartProd(cartProdCount - 1).id = cartSProdCount - 1 ' this id refers to the cartSProd array
cartProd(cartProdCount - 1).name = cmbSProdName.Text
Refresh_Cart
'cmbSProdName.Text = "Product Name" Sometimes you might need to add same products all over
txtSProdSerial.Text = "Product Serial"
txtSProdAcc.Text = "No product accessories."
txtSProdCom.Text = "No comment."
End Sub

Sub Generate_ClipText()
'WARNING THIS CODE IS NOT VERY CLEAR ! - A TADBIT COMPLICATED TO UNDERSTAND
On Error GoTo nExit
Dim xNSProd, xSProd As String
Dim xSProdN() As String
Dim xSProdS() As String
Dim xSProdQ() As Integer
Dim xSProdA() As String

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
                xSProdS(j) = xSProdS(j) & "," & cartSProd(cartProd(i).id).serial
                xSProdA(j) = cartSProd(cartProd(i).id).accessories
                GoTo Continue
            End If
        Next
        ReDim Preserve xSProdN(UBound(xSProdN) + 1)
        ReDim Preserve xSProdQ(UBound(xSProdQ) + 1)
        ReDim Preserve xSProdS(UBound(xSProdS) + 1)
        ReDim Preserve xSProdA(UBound(xSProdS) + 1)
        xSProdN(UBound(xSProdN)) = cartSProd(cartProd(i).id).name
        xSProdQ(UBound(xSProdN)) = 1
        xSProdS(UBound(xSProdN)) = cartSProd(cartProd(i).id).serial
        xSProdA(UBound(xSProdN)) = cartSProd(cartProd(i).id).accessories
    End If
    
    GoTo Continue ' to skip this part otherwise everything becomes 1
    
InitEntry:     'We catch the error cause at UBound(xSProdN), when the Sproducts have not yet been added and then correct it by adding a new one
    ReDim Preserve xSProdN(0)
    ReDim Preserve xSProdQ(0)
    ReDim Preserve xSProdS(0)
    xSProdN(0) = cartSProd(cartProd(i).id).name
    xSProdQ(0) = 1
    xSProdS(0) = cartSProd(cartProd(i).id).serial
    xSProdA(0) = cartSProd(cartProd(i).id).accessories
Continue:
Next

On Error GoTo skipSp ' error occurs when theres no SProds
For i = 0 To UBound(xSProdN)
    xSProd = xSProd & xSProdN(i) & " = " & xSProdQ(i) & vbCrLf
Next

skipSp:
MsgBox xNSProd & vbCrLf & xSProd


If SafeArrayGetDim(xSProdS) <> 0 Then 'check if array exists
    For i = 0 To UBound(xSProdS)
        xSProd = "---" & xSProdN(i) & "---" & vbCrLf
        tmpSerial = Split(xSProdS(i), ",")
        For j = 0 To UBound(tmpSerial)
            xSProd = xSProd & tmpSerial(j) & vbCrLf
        Next
        tmpArray = tmpSerial
        
        avoid_rep = CheckDuplicates() 'avoid calling the same function over and over again
        If Not (avoid_rep = "") Then
            xSProd = xSProd & "-----------" & vbCrLf & "WARNING, Duplicates found ! - " & vbCrLf & avoid_rep & vbCrLf
        Else
            xSProd = xSProd & "-----------" & vbCrLf & avoid_rep & vbCrLf
        End If
        MsgBox xSProd
    Next
End If

nExit:
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

Sub update_Supplier(action As String, val1 As String, val2 As String)
Select Case action
Case Is = "redim"
ReDim supplier(val1)
Case Is = "set_id"
supplier(Int(val1)).id = val2
Case Is = "set_name"
supplier(Int(val1)).name = val2
Case Is = "add_sup"
cmbSup.AddItem supplier(Int(val1)).name
End Select
End Sub

Private Sub Form_LinkOpen(Cancel As Integer)

End Sub

Private Sub Form_Load()
dtDate.Value = Date
dtTime.Value = Time()
fmDef.Visible = True 'default frame
Load_Database
End Sub

Private Sub cmdNew_Click()
frmSupplier.Show
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
    cartProd(cartListTracker(liMain.ListIndex)).id = "-1"
    Refresh_Cart
End If
End Sub

Private Sub cmdProc_Click()
'First purchase table needs to be updated
'New products needs to be added / updated
'Then purchase_ns and purchase_s needs to be updated
If cmbSup.Text = "Select Supplier" Then Exit Sub
If cmbSup.ListIndex < 0 Then Exit Sub
If liMain.ListCount <= 0 Then Exit Sub

tmpDT = dtDate.Year & "-" & dtDate.Month & "-" & dtDate.Day & Format(dtTime.Value, " hh:mm:ss")
sql(1) = "INSERT INTO purchase(supplierId,dateTime,comment,user) VALUES('" & supplier(cmbSup.ListIndex + 1).id & "','" & tmpDT & "','" & txtCom.Text & "','" & username & "')"
sql(2) = "SELECT LAST_INSERT_ID()" 'need to get the purchase id assigned by the server 'cmbSup has it all sorted out in the correct order ' < WRONG the server may assign a different id not starting from  1, duumbasss

If sendRecords(1, 1) = True Then
    If getRecords(1, 2, 1) = True Then
        tmpPurchaseId = records(1).Fields(0) 'for later reference
        closeRecords (1)
        For i = 0 To UBound(cartProd)
            If Not (cartProd(i).id = "-1") Then 'The cart product was deleted
                If cartProd(i).type = "NS" Then
                'new NS Product !
                    If cartNsProd(cartProd(i).id).id = "" Then
                        sql(1) = "INSERT INTO prod_name(name,type) VALUES('" & cartProd(i).name & "','NS')"
                        sql(2) = "SELECT LAST_INSERT_ID()"
                        If sendRecords(1, 1) = True Then
                            If getRecords(1, 2, 1) = True Then
                                tmpPNID = records(1).Fields(0) 'for later reference
                                closeRecords (1)
                            End If
                        End If
                        sql(3) = "INSERT INTO nsproduct(pnId,quantity) VALUES('" & tmpPNID & "','" & cartNsProd(cartProd(i).id).quantity & "')"
    '                    tmpNSClip = tmpNSClip & cartProd(i).name & " / " & cartNsProd(cartProd(i).id).quantity & vbCrLf  ' No need to include comment - cartNsProd(cartProd(i).id).comment
                        If sendRecords(1, 3) = True Then
                            If getRecords(1, 2, 1) = True Then
                                tmpNSProductId = records(1).Fields(0) 'for later reference
                                closeRecords (1)
                            End If
                        End If
                        sql(4) = "INSERT INTO purchase_nsprod(purchaseId,nsProductId,quantity,comment) VALUES('" & tmpPurchaseId & "','" & tmpNSProductId & "','" & cartNsProd(cartProd(i).id).quantity & "','" & cartNsProd(cartProd(i).id).comment & "')"
                        If sendRecords(1, 4) = True Then
                        End If
                    Else
                        'increment the quantity available in the database
                        sql(1) = "INSERT INTO purchase_nsprod(purchaseId,nsProductId,quantity,comment) VALUES('" & tmpPurchaseId & "','" & cartNsProd(cartProd(i).id).id & "','" & cartNsProd(cartProd(i).id).quantity & "','" & cartNsProd(cartProd(i).id).comment & "')"
                        sql(2) = "SELECT quantity FROM nsproduct WHERE id=" & cartNsProd(cartProd(i).id).id
                        tmpNSClip = tmpNSClip & cartProd(i).name & " / " & cartNsProd(cartProd(i).id).quantity & vbCrLf  ' No need to include comment - cartNsProd(cartProd(i).id).comment
                        If sendRecords(1, 1) = True Then
                            If getRecords(1, 2, 1) = True Then
                                tmpNSProductQuantity = Int(records(1).Fields(0))
                                records(1).Close
                            End If
                        End If
                        tmpNSProductQuantity = tmpNSProductQuantity + cartNsProd(cartProd(i).id).quantity
                        sql(3) = "UPDATE nsproduct SET quantity=" & tmpNSProductQuantity & "  WHERE id=" & cartNsProd(cartProd(i).id).id
                        If sendRecords(1, 3) = True Then
                        End If
                    End If
                Else
                If cartProd(i).type = "S" Then
                    sql(1) = "SELECT id FROM prod_name WHERE name='" & cartProd(i).name & "'"
                    sql(2) = "SELECT LAST_INSERT_ID()"
                    If getRecords(1, 1, 1) = True Then
                            tmpPNID = records(1).Fields(0)
                            records(1).Close
                    Else
                        sql(3) = "INSERT INTO prod_name(name,type) VALUES('" & cartProd(i).name & "','S')"
                        If sendRecords(1, 3) = True Then
                            If getRecords(1, 2, 1) = True Then
                                tmpPNID = records(1).Fields(0)
                                records(1).Close
                            End If
                        End If
                    End If
                    sql(4) = "INSERT INTO sproduct(pnId,serial,accessories,supplierId) VALUES('" & tmpPNID & "','" & cartSProd(cartProd(i).id).serial & "','" & cartSProd(cartProd(i).id).accessories & "','" & (cmbSup.ListIndex + 1) & "')"
                    'tmpSClip = tmpSClip & cartProd(i).name & " / " & cartSProd(cartProd(i).id).accessories & " / " & cartSProd(cartProd(i).id).serial & vbCrLf  ' No need to include comment - cartsProd(cartProd(i).id).comment
                    If sendRecords(1, 4) = True Then
                        If getRecords(1, 2, 1) = True Then
                            tmpSProductId = records(1).Fields(0)
                            records(1).Close
                        End If
                    End If
                    sql(5) = "INSERT INTO purchase_sprod(purchaseId,sProductId,comment) VALUES('" & tmpPurchaseId & "','" & tmpSProductId & "','" & cartSProd(cartProd(i).id).comment & "')"
                    If sendRecords(1, 5) = True Then
                    End If
                End If
                End If
                
            End If
        Next
        
    Me.Hide
    MsgBox "Purchase transaction completed !"
    '    'Copy Stuff to the clipboard - new addition
    '    Clipboard.Clear
    '    Clipboard.SetText tmpNSClip & tmpSClip
    Unload Me
    frmDash.Initialize_Dash
    frmDash.Show
    End If
End If
'MsgBox "An error occured, check with network admin to ensure that the database wasn't corrupted  amidst operation !"
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdAdv_Click()
'WARNING THIS CODE IS NOT VERY CLEAR ! - A TADBIT COMPLICATED TO UNDERSTAND
On Error GoTo nExit
Dim xNSProd, xSProd As String
Dim xSProdN() As String
Dim xSProdS() As String
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
                xSProdS(j) = xSProdS(j) & "," & cartSProd(cartProd(i).id).serial
                GoTo Continue
            End If
        Next
        ReDim Preserve xSProdN(UBound(xSProdN) + 1)
        ReDim Preserve xSProdQ(UBound(xSProdQ) + 1)
        ReDim Preserve xSProdS(UBound(xSProdS) + 1)
        xSProdN(UBound(xSProdN)) = cartSProd(cartProd(i).id).name
        xSProdQ(UBound(xSProdN)) = 1
        xSProdS(UBound(xSProdN)) = cartSProd(cartProd(i).id).serial
    
    End If
    
    GoTo Continue ' to skip this part otherwise everything becomes 1
    
InitEntry:     'We catch the error cause at UBound(xSProdN), when the Sproducts have not yet been added and then correct it by adding a new one
    ReDim Preserve xSProdN(0)
    ReDim Preserve xSProdQ(0)
    ReDim Preserve xSProdS(0)
    xSProdN(0) = cartSProd(cartProd(i).id).name
    xSProdQ(0) = 1
    xSProdS(0) = cartSProd(cartProd(i).id).serial

Continue:
Next

On Error GoTo skipSp
For i = 0 To UBound(xSProdN)
    xSProd = xSProd & xSProdN(i) & " = " & xSProdQ(i) & vbCrLf
Next

skipSp:
MsgBox xNSProd & vbCrLf & xSProd


If SafeArrayGetDim(xSProdS) <> 0 Then 'check if array exists
    For i = 0 To UBound(xSProdS)
        xSProd = "---" & xSProdN(i) & "---" & vbCrLf
        tmpSerial = Split(xSProdS(i), ",")
        For j = 0 To UBound(tmpSerial)
            xSProd = xSProd & tmpSerial(j) & vbCrLf
        Next
        tmpArray = tmpSerial
        
        avoid_rep = CheckDuplicates() 'avoid calling the same function over and over again
        If Not (avoid_rep = "") Then
            xSProd = xSProd & "-----------" & vbCrLf & "WARNING, Duplicates found ! - " & vbCrLf & avoid_rep & vbCrLf
        Else
            xSProd = xSProd & "-----------" & vbCrLf & avoid_rep & vbCrLf
        End If
        MsgBox xSProd
    Next
End If

nExit:
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
    Add_SProduct
    txtSProdSerial.Text = ""
    txtSProdSerial.SetFocus
    liMain.ListIndex = liMain.ListCount - 1
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




