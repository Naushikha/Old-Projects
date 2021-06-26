VERSION 5.00
Begin VB.Form frmSettings 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Settings"
   ClientHeight    =   2865
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   5010
   Icon            =   "frmSettings.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2865
   ScaleWidth      =   5010
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtDB 
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
      Left            =   2880
      TabIndex        =   6
      Top             =   1080
      Width           =   1935
   End
   Begin VB.TextBox txtAdd 
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
      Left            =   2880
      TabIndex        =   5
      Top             =   360
      Width           =   1935
   End
   Begin VB.CommandButton cmdProc 
      BackColor       =   &H80000002&
      Caption         =   "Update"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   350
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1680
      Width           =   1335
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H80000002&
      Cancel          =   -1  'True
      Caption         =   "Close"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   350
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   2280
      Width           =   1335
   End
   Begin VB.CommandButton cmdRemove 
      BackColor       =   &H80000002&
      Caption         =   "Remove account from automatic login"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   945
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1680
      Width           =   1935
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "MySQL Database name :"
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
      Left            =   240
      TabIndex        =   4
      Top             =   1080
      Width           =   3015
   End
   Begin VB.Label lbl2 
      BackStyle       =   0  'Transparent
      Caption         =   "MySQL Server address :"
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
      Left            =   240
      TabIndex        =   3
      Top             =   360
      Width           =   3015
   End
End
Attribute VB_Name = "frmSettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub cmdProc_Click()
On Error GoTo Handler
'connect to MySQL server using Connector/ODBC
frmLoad.Show
Set tmpConnect = New ADODB.Connection
tmpConnect.ConnectionString = "DRIVER={MySQL ODBC 3.51 Driver};" _
& "SERVER=" & txtAdd.Text & ";" _
& " DATABASE=" & txtDB.Text & ";" _
& "UID=" & username & ";PWD=" & password & "; OPTION=3" 'Username password
tmpConnect.Open
sqlAddress = txtAdd.Text
sqlDB = txtDB.Text
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\Config.dat" For Output As #tmpFile
Print #tmpFile, sqlAddress & "," & sqlDB
Close #tmpFile
tmpConnect.Close
frmLoad.Hide
MsgBox "Database details updated !"
frmDash.Initialize_Dash
Exit Sub

Handler:
MsgBox "Oops !" & vbNewLine _
& "Errors during update !     o.0" & vbNewLine _
& "Possible causes :" & vbNewLine _
& "     -SQL Address or/and Database name incorrect." & vbNewLine _
& "     -Account credentials entered on bypass incorrect." & vbNewLine _
& "     -SQL Server not online."
frmLoad.Hide
End Sub

Private Sub cmdRemove_Click()
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\UserLogin.dat" For Output As #tmpFile
Print #tmpFile, ","
Close #tmpFile
MsgBox "Automatic account login credentials removed !"
End Sub

Private Sub Form_Load()
txtAdd.Text = sqlAddress
txtDB.Text = sqlDB
End Sub
