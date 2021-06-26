VERSION 5.00
Begin VB.Form frmDash 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Inventory Dashboard"
   ClientHeight    =   6330
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   12090
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6330
   ScaleWidth      =   12090
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdSearch 
      Cancel          =   -1  'True
      Caption         =   "Search dB"
      Height          =   390
      Left            =   10680
      TabIndex        =   10
      Top             =   4080
      Width           =   1140
   End
   Begin VB.CommandButton cmdSell 
      Caption         =   "Sell"
      Height          =   390
      Left            =   10680
      TabIndex        =   7
      Top             =   1680
      Width           =   1380
   End
   Begin VB.CommandButton cmdPurchase 
      Caption         =   "Purchase"
      Height          =   390
      Left            =   10680
      TabIndex        =   6
      Top             =   1200
      Width           =   1380
   End
   Begin VB.Frame Frame2 
      Caption         =   "Available NSProducts"
      Height          =   5175
      Left            =   5400
      TabIndex        =   4
      Top             =   1080
      Width           =   5175
      Begin VB.ListBox List2 
         Height          =   3960
         Left            =   240
         TabIndex        =   9
         Top             =   360
         Width           =   4455
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Available SProducts"
      Height          =   5175
      Left            =   120
      TabIndex        =   3
      Top             =   1080
      Width           =   5175
      Begin VB.ListBox List1 
         Height          =   3570
         ItemData        =   "frmDash.frx":0000
         Left            =   120
         List            =   "frmDash.frx":0002
         TabIndex        =   8
         Top             =   360
         Width           =   4455
      End
   End
   Begin VB.CommandButton cmdSettings 
      Caption         =   "Settings"
      Height          =   390
      Left            =   8880
      TabIndex        =   2
      Top             =   120
      Width           =   1140
   End
   Begin VB.CommandButton cmdLOut 
      Caption         =   "Log out"
      Height          =   390
      Left            =   9960
      TabIndex        =   1
      Top             =   120
      Width           =   1140
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "Exit"
      Height          =   390
      Left            =   11040
      TabIndex        =   0
      Top             =   120
      Width           =   1140
   End
   Begin VB.Label Label1 
      Caption         =   "Welcome, User !"
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   240
      Width           =   6855
   End
End
Attribute VB_Name = "frmDash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdExit_Click()
End
End Sub

Private Sub cmdLOut_Click()
frmLogin.Show
Unload Me
End Sub

Private Sub cmdPurchase_Click()
frmPurchase.Show
End Sub

Private Sub cmdSearch_Click()
frmSearch.Show
End Sub

Private Sub cmdSell_Click()
frmSale.Show
End Sub

Private Sub cmdSettings_Click()
frmSettings.Show
End Sub
