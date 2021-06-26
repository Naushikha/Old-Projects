VERSION 5.00
Begin VB.Form frmDashboard 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Inventory Dashboard"
   ClientHeight    =   6945
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   13275
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6945
   ScaleWidth      =   13275
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdCsv 
      Caption         =   "Generate CSV"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   3
      Top             =   6120
      Width           =   2295
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   10800
      TabIndex        =   2
      Top             =   6120
      Width           =   2295
   End
   Begin VB.CommandButton cmdBuy 
      Caption         =   "Buy"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   10800
      TabIndex        =   1
      Top             =   2640
      Width           =   2295
   End
   Begin VB.CommandButton cmdSell 
      Caption         =   "Sell"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   10800
      TabIndex        =   0
      Top             =   1680
      Width           =   2295
   End
   Begin VB.ListBox liMain 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4020
      Left            =   3000
      TabIndex        =   5
      Top             =   1200
      Width           =   7335
   End
   Begin VB.Image imgLogo 
      Height          =   1305
      Left            =   10440
      Picture         =   "frmDashboard.frx":0000
      Stretch         =   -1  'True
      Top             =   240
      Width           =   2655
   End
   Begin VB.Label lblProductName 
      AutoSize        =   -1  'True
      Caption         =   "Inventory"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   32.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   765
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   2880
   End
End
Attribute VB_Name = "frmDashboard"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdBuy_Click()
frmBuy.Show
End Sub

Private Sub cmdCsv_Click()
frmCsv.Show
End Sub

Private Sub cmdExit_Click()
End
End Sub

Private Sub cmdSell_Click()
frmSell.Show
End Sub
Private Sub Form_Load()
'For i = 0 To (prodTotal - 1)
'lblProd(i).Left = 4000
'lblProd(i).Top = 1000 + (500 * i)
'lblProd(i).Caption = prodNames(i)
'lblProd(i).Visible = True

'lblProdAvail(i).Left = 10000
'lblProdAvail(i).Top = 1000 + (500 * i)
'lblProdAvail(i).Caption = prodQuantities(i)
'lblProdAvail(i).Visible = True
'Next
Refresh_Dash
End Sub
Sub Refresh_Dash()
liMain.Clear
For i = 0 To (prodTotal - 1)
tmpstr = prod(i).name & " - " & prod(i).quantity
liMain.AddItem (tmpstr)
Next
End Sub

