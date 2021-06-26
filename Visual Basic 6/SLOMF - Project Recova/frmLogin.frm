VERSION 5.00
Begin VB.Form frmLogin 
   BackColor       =   &H80000003&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Login"
   ClientHeight    =   1950
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   3750
   ForeColor       =   &H00000000&
   Icon            =   "frmLogin.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1152.124
   ScaleMode       =   0  'User
   ScaleWidth      =   3521.047
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox chkRemember 
      BackColor       =   &H80000003&
      Caption         =   "Stay logged in"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   315
      Left            =   120
      TabIndex        =   6
      Top             =   1080
      Width           =   2415
   End
   Begin VB.TextBox txtUserName 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   390
      Left            =   1290
      TabIndex        =   1
      Top             =   135
      Width           =   2325
   End
   Begin VB.CommandButton cmdOK 
      BackColor       =   &H80000002&
      Caption         =   "OK"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   495
      MaskColor       =   &H0080FF80&
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   1500
      Width           =   1140
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H80000002&
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   2100
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1500
      Width           =   1140
   End
   Begin VB.TextBox txtPassword 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   405
      IMEMode         =   3  'DISABLE
      Left            =   1290
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   600
      Width           =   2325
   End
   Begin VB.Label lblLabels 
      BackStyle       =   0  'Transparent
      Caption         =   "&User Name:"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   270
      Index           =   0
      Left            =   105
      TabIndex        =   0
      Top             =   150
      Width           =   1080
   End
   Begin VB.Label lblLabels 
      BackStyle       =   0  'Transparent
      Caption         =   "&Password:"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   270
      Index           =   1
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Width           =   1080
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Sub Load_Dat()
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile

Open App.Path & "\DATA\Config.dat" For Input As #tmpFile
Line Input #tmpFile, tmpLine
Close #tmpFile

tmpData = Split(tmpLine, ",") 'Database details are loaded to the system here
sqlAddress = tmpData(0)
sqlDB = tmpData(1)

Open App.Path & "\DATA\UserLogin.dat" For Input As #tmpFile
Line Input #tmpFile, tmpLine
Close #tmpFile

If Not (tmpLine = ",") Then ' , to not keep login
    tmpData = Split(tmpLine, ",")
    txtUserName.Text = tmpData(0)
    txtPassword.Text = tmpData(1)
    username = tmpData(0)
    password = tmpData(1)
    Initialize_Connection
End If
End Sub

Sub Initialize_Connection()

If connectDB(1) = False Then ' that's it we have initialized a connection, we'll use this through out
    MsgBox "Oops !" & vbNewLine _
    & "Errors during main initialization !     o.0" & vbNewLine _
    & "Possible causes :" & vbNewLine _
    & "     -Username or/and password incorrect." & vbNewLine _
    & "     -SQL Server not online."
    
    frmLogin.Show
    Exit Sub
End If

'Save credentials if asked
If frmLogin.chkRemember.Value = 1 Then
    Dim tmpLine As String
    Dim tmpFile As Integer
    tmpFile = FreeFile
    Open App.Path & "\DATA\UserLogin.dat" For Output As #tmpFile
    Print #tmpFile, username & "," & password
    Close #tmpFile
End If
'If disconnectDB(1) = True Then 'only if properly disconnected, continue !
frmLogin.Hide
frmDash.Show
'End If
End Sub

Private Sub Form_Load()
Load_Dat
End Sub

Private Sub txtPassword_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyF1 Then
    If MsgBox("Would you like to bypass login to manually configure settings ?", vbYesNo) = vbYes Then 'To set proper settings the account entered should be correct !
        username = txtUserName.Text
        password = txtPassword.Text
        frmSettings.Show
    End If
End If
End Sub

Private Sub chkRemember_Click()
If chkRemember.Value = 1 Then
    chkRemember.ForeColor = &HFF0000
    MsgBox "This account will be selected as the default account for automatic login on the event of a successful enter of proper account credentials."
Else
    chkRemember.ForeColor = &H404000
    MsgBox "This account will be not be selected as the default account for automatic login."
End If
End Sub

Private Sub cmdOK_Click()
username = txtUserName.Text
password = txtPassword.Text
Initialize_Connection
End Sub

Private Sub cmdCancel_Click()
End
End Sub

