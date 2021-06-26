VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmBuy 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Buy Products"
   ClientHeight    =   7575
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   9075
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7575
   ScaleWidth      =   9075
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdDel 
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
      Height          =   495
      Left            =   2400
      TabIndex        =   14
      Top             =   2280
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtCust 
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
      Left            =   3000
      TabIndex        =   7
      Text            =   "Made-up Corp."
      Top             =   840
      Width           =   5895
   End
   Begin VB.TextBox txtCom 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3000
      MultiLine       =   -1  'True
      TabIndex        =   6
      Text            =   "frmBuy.frx":0000
      Top             =   5760
      Width           =   5895
   End
   Begin VB.ListBox liMain 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3060
      Left            =   3000
      TabIndex        =   5
      Top             =   2280
      Width           =   5895
   End
   Begin VB.CommandButton cmdProc 
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
      Height          =   495
      Left            =   5760
      TabIndex        =   4
      Top             =   6840
      Width           =   3135
   End
   Begin VB.CommandButton cmdCancel 
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
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   6840
      Width           =   1335
   End
   Begin VB.CommandButton cmdAdd 
      Caption         =   "Add"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   8160
      TabIndex        =   2
      Top             =   1680
      Width           =   735
   End
   Begin VB.TextBox txtQ 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   6120
      TabIndex        =   1
      Text            =   "Quantity"
      Top             =   1800
      Width           =   1935
   End
   Begin VB.ComboBox cmbProd 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   360
      Left            =   3000
      TabIndex        =   0
      Text            =   "Choose product"
      Top             =   1800
      Width           =   3135
   End
   Begin MSComCtl2.DTPicker dtDate 
      Height          =   375
      Left            =   3000
      TabIndex        =   8
      Top             =   240
      Width           =   4215
      _ExtentX        =   7435
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
      CustomFormat    =   "yyyy/MM/dd"
      Format          =   71958531
      CurrentDate     =   43220
   End
   Begin MSComCtl2.DTPicker dtTime 
      Height          =   375
      Left            =   7320
      TabIndex        =   9
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
      Format          =   71958530
      CurrentDate     =   43220
   End
   Begin VB.Label lbl1 
      Caption         =   "Date/Time of transcation :"
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
      Left            =   120
      TabIndex        =   13
      Top             =   240
      Width           =   3015
   End
   Begin VB.Label lbl2 
      Caption         =   "Name of Supplier :"
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
      Left            =   120
      TabIndex        =   12
      Top             =   840
      Width           =   3015
   End
   Begin VB.Label lbl3 
      Caption         =   "Comments"
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
      Left            =   120
      TabIndex        =   11
      Top             =   5880
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "Products purchased :"
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
      Left            =   120
      TabIndex        =   10
      Top             =   1800
      Width           =   3015
   End
End
Attribute VB_Name = "frmBuy"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private prodTemp() As Integer
Private Type cartItem
        id As Integer
        quantity As Integer
End Type
Private prodCart() As cartItem
Private entryTotal As Integer

Private Sub cmdAdd_Click()
If IsNumeric(txtQ.Text) And cmbProd.ListIndex >= 0 Then
If Int(txtQ.Text) > 0 Then
liMain.AddItem (prod(cmbProd.ListIndex).name & " - " & txtQ.Text)
prodTemp(cmbProd.ListIndex) = prodTemp(cmbProd.ListIndex) + Int(txtQ.Text)
entryTotal = entryTotal + 1
ReDim Preserve prodCart(entryTotal - 1)
prodCart(entryTotal - 1).id = cmbProd.ListIndex 'because prodcart(0)  is left out othrwise
prodCart(entryTotal - 1).quantity = Int(txtQ.Text)
Refresh_Cmb
Else
MsgBox "Cannot add 0 or negative stock !"
txtQ.SetFocus
End If
Else
MsgBox "Product & quantity is required !"
txtQ.SetFocus
End If
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdDel_Click()
If liMain.ListIndex >= 0 Then
If MsgBox("Delete entry '" & liMain.List(liMain.ListIndex) & "' ?", vbYesNo) = vbYes Then
prodTemp(prodCart(liMain.ListIndex).id) = prodTemp(prodCart(liMain.ListIndex).id) - prodCart(liMain.ListIndex).quantity
 For i = liMain.ListIndex To lTop - 1
        prodCart(i) = prodCart(i + 1)
    Next
entryTotal = entryTotal - 1
Refresh_Cmb
liMain.RemoveItem (liMain.ListIndex)
End If
End If
End Sub
Private Sub liMain_Click()
If liMain.ListIndex >= 0 Then
cmdDel.Visible = True
Else
cmdDel.Visible = False
End If
End Sub
Private Sub cmdProc_Click()
If entryTotal = 0 Then
Exit Sub
End If
If MsgBox("Proceed transaction ?", vbYesNo) = vbYes Then
transIn = transIn + 1
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\TRANS\I" & transIn & ".txt" For Output As #tmpFile
Print #tmpFile, "-----Current_date-----"
Print #tmpFile, dtDate.Year & "/" & dtDate.Month & "/" & dtDate.Day & "," & dtTime.Value
Print #tmpFile, "-----Inventory_before_purchase-----"
For i = 0 To (prodTotal - 1)
Print #tmpFile, prod(i).name & "," & prod(i).quantity
Next
Print #tmpFile, "-----Supplier-----"
Print #tmpFile, txtCust.Text
Print #tmpFile, "-----Products_purchased-----"
For i = 0 To (entryTotal - 1)
prod(prodCart(i).id).quantity = prod(prodCart(i).id).quantity + prodCart(i).quantity
Print #tmpFile, prod(prodCart(i).id).name & "," & prodCart(i).quantity
Next
Print #tmpFile, "-----Comments-----"
Print #tmpFile, txtCom.Text
Print #tmpFile, "-----Inventory_after_purchase-----"
For i = 0 To (prodTotal - 1)
Print #tmpFile, prod(i).name & "," & prod(i).quantity
Next
Close #tmpFile
'Update files
Write_Inventory
Write_Transaction
MsgBox "Transaction completed !"
frmDashboard.Refresh_Dash
Unload Me
End If
End Sub

Private Sub Form_Load()
ReDim prodTemp(prodTotal - 1)
For i = 0 To (prodTotal - 1)
prodTemp(i) = prod(i).quantity
Next
dtDate.Value = Date
dtTime.Value = Time()
entryTotal = 0
Refresh_Cmb
End Sub
Private Sub txtCust_GotFocus()
txtCust.Text = ""
End Sub
Private Sub txtQ_GotFocus()
txtQ.Text = ""
End Sub
Private Sub txtCom_GotFocus()
txtCom.Text = ""
End Sub
Sub Refresh_Cmb()
cmbProd.Clear
For i = 0 To (prodTotal - 1)
cmbProd.AddItem (prod(i).name & " - " & prodTemp(i))
Next
cmbProd.Text = "Choose product"
End Sub
Private Sub txtQ_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then
cmdAdd_Click
End If
End Sub
