VERSION 5.00
Begin VB.Form frmDash 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Inventory Dashboard"
   ClientHeight    =   6330
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   12090
   Icon            =   "frmDash.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6330
   ScaleWidth      =   12090
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdSearch 
      BackColor       =   &H80000002&
      Cancel          =   -1  'True
      Caption         =   "Search dB"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   10680
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   4080
      Width           =   1380
   End
   Begin VB.CommandButton cmdSell 
      BackColor       =   &H80000002&
      Caption         =   "Sell"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   10680
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   1680
      Width           =   1380
   End
   Begin VB.CommandButton cmdPurchase 
      BackColor       =   &H80000002&
      Caption         =   "Purchase"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   10680
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   1200
      Width           =   1380
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H80000003&
      Caption         =   "Available NSProducts"
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
      Height          =   5175
      Left            =   5400
      TabIndex        =   4
      Top             =   1080
      Width           =   5175
      Begin VB.ListBox liNSProd 
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
         Height          =   4620
         Left            =   120
         TabIndex        =   9
         Top             =   360
         Width           =   4935
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000003&
      Caption         =   "Available SProducts"
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
      Height          =   5175
      Left            =   120
      TabIndex        =   3
      Top             =   1080
      Width           =   5175
      Begin VB.ListBox liSProd 
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
         Height          =   4620
         ItemData        =   "frmDash.frx":7D32
         Left            =   120
         List            =   "frmDash.frx":7D39
         TabIndex        =   8
         Top             =   360
         Width           =   4935
      End
   End
   Begin VB.CommandButton cmdSettings 
      BackColor       =   &H80000002&
      Caption         =   "Settings"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   8615
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   120
      Width           =   1140
   End
   Begin VB.CommandButton cmdLOut 
      BackColor       =   &H80000002&
      Caption         =   "Log out"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   9760
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   120
      Width           =   1140
   End
   Begin VB.CommandButton cmdExit 
      BackColor       =   &H80000002&
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   10920
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   120
      Width           =   1140
   End
   Begin VB.Image Image1 
      Height          =   495
      Left            =   7680
      Picture         =   "frmDash.frx":7D46
      Stretch         =   -1  'True
      Top             =   240
      Width           =   495
   End
   Begin VB.Image imgLogo 
      Height          =   1065
      Left            =   120
      Picture         =   "frmDash.frx":9C97
      Stretch         =   -1  'True
      Top             =   0
      Width           =   2415
   End
   Begin VB.Label lblWelcome 
      BackStyle       =   0  'Transparent
      Caption         =   "Welcome, User !"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   375
      Left            =   2880
      TabIndex        =   5
      Top             =   310
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
logStat = True
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


Private Sub Form_Load()
lblWelcome.Caption = "Welcome, " & username & " !"
Initialize_Dash
End Sub

Sub Initialize_Dash()
logStat = False
liSProd.Clear
liNSProd.Clear
On Error GoTo Handler
'connect to MySQL server using Connector/ODBC
frmLoad.Show
Set mainConnect = New ADODB.Connection
mainConnect.ConnectionString = "DRIVER={MySQL ODBC 3.51 Driver};" _
& "SERVER=" & sqlAddress & ";" _
& " DATABASE=" & sqlDB & ";" _
& "UID=" & username & ";PWD=" & password & "; OPTION=3" 'Username password
mainConnect.Open
Set records(0) = New ADODB.Recordset
records(0).CursorLocation = adUseClient 'adUseServer was replaced because recordCount gave -1
Set records(1) = New ADODB.Recordset 'For later use
records(1).CursorLocation = adUseClient

Load_NSProd:
'fetch the nsProduct table ..
records(0).Open "SELECT * FROM nsProduct", mainConnect
If records(0).RecordCount = 0 Then GoTo Load_SProd
ReDim nsProd(records(0).RecordCount - 1) As nsProduct
Dim tmpC As Integer ' initialized with 0 by default
records(0).MoveFirst
Do Until records(0).EOF
nsProd(tmpC).name = records(0).fields(1)
nsProd(tmpC).quantity = Int(records(0).fields(2))
tmpStr = nsProd(tmpC).name & " - " & nsProd(tmpC).quantity
liNSProd.AddItem (tmpStr)
tmpC = tmpC + 1
records(0).MoveNext
Loop

Load_SProd:
records(0).Close
records(0).Open "SELECT * FROM sproduct WHERE customerId IS NULL", mainConnect
If records(0).RecordCount = 0 Then GoTo Load_End
ReDim sProd(records(0).RecordCount - 1) As sProduct
tmpC = 0
records(0).MoveFirst
Do Until records(0).EOF
sProd(tmpC).name = records(0).fields(1)
sProd(tmpC).serial = records(0).fields(2)
tmpStr = sProd(tmpC).name & " - " & sProd(tmpC).serial
liSProd.AddItem tmpStr
tmpC = tmpC + 1
records(0).MoveNext
Loop

Load_End:

records(0).Close
mainConnect.Close
frmLoad.Hide
 ' Gave an error ? - Login was closing this connection after loading the dash !, so it was kind of hidden !!!

Exit Sub

Handler:
'records(0).Close 'when database definition is not configured, an error occurs here, so removed it to test :)
mainConnect.Close
MsgBox "Database is corrupted !"
frmLoad.Hide

End Sub
Private Sub Form_Unload(Cancel As Integer)
If logStat = False Then End
End Sub
Private Sub liSProd_Click()
liSProd.ListIndex = -1
End Sub
Private Sub linsProd_Click()
liNSProd.ListIndex = -1
End Sub
