VERSION 5.00
Begin VB.Form frmDash 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Database Dashboard"
   ClientHeight    =   4755
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   12090
   Icon            =   "frmDash.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4755
   ScaleWidth      =   12090
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame3 
      BackColor       =   &H80000003&
      Caption         =   "Info"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   975
      Left            =   2760
      TabIndex        =   2
      Top             =   0
      Width           =   6375
      Begin VB.ListBox liInfo 
         BackColor       =   &H80000003&
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   630
         Left            =   120
         TabIndex        =   15
         ToolTipText     =   "Important messages appear here."
         Top             =   240
         Width           =   6135
      End
   End
   Begin VB.Frame frmCat 
      BackColor       =   &H80000003&
      Caption         =   "Database Statistics"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   3015
      Left            =   120
      TabIndex        =   1
      Top             =   1680
      Width           =   11895
      Begin VB.CommandButton cmdRefr 
         BackColor       =   &H80000002&
         Caption         =   "Refresh"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   10560
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   360
         Width           =   1095
      End
      Begin VB.Label lblSl11 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "a"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000040C0&
         Height          =   435
         Left            =   9360
         MouseIcon       =   "frmDash.frx":10CA
         TabIndex        =   14
         Top             =   2280
         Width           =   165
      End
      Begin VB.Label lblSl13 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "a"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000040C0&
         Height          =   435
         Left            =   10920
         MouseIcon       =   "frmDash.frx":13D4
         TabIndex        =   13
         Top             =   2280
         Width           =   165
      End
      Begin VB.Label lblSl8 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "a"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000040C0&
         Height          =   435
         Left            =   7800
         MouseIcon       =   "frmDash.frx":16DE
         TabIndex        =   12
         Top             =   2280
         Width           =   165
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "SLMC 13"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   11
         Left            =   10440
         MouseIcon       =   "frmDash.frx":19E8
         TabIndex        =   11
         Top             =   1800
         Width           =   1305
      End
      Begin VB.Label lblNStu 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "a"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000040C0&
         Height          =   435
         Left            =   5760
         MouseIcon       =   "frmDash.frx":1CF2
         TabIndex        =   10
         Top             =   2280
         Width           =   165
      End
      Begin VB.Label lblNTea 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "a"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000040C0&
         Height          =   435
         Left            =   5760
         MouseIcon       =   "frmDash.frx":1FFC
         TabIndex        =   9
         Top             =   1440
         Width           =   165
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "SLMC 11"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   7
         Left            =   8880
         MouseIcon       =   "frmDash.frx":2306
         TabIndex        =   8
         Top             =   1800
         Width           =   1245
      End
      Begin VB.Label lblNSchol 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "a"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000040C0&
         Height          =   435
         Left            =   5760
         MouseIcon       =   "frmDash.frx":2610
         TabIndex        =   7
         Top             =   600
         Width           =   165
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "SLMC 8"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   3
         Left            =   7320
         MouseIcon       =   "frmDash.frx":291A
         TabIndex        =   6
         Top             =   1800
         Width           =   1170
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Registered number of students :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   2
         Left            =   360
         MouseIcon       =   "frmDash.frx":2C24
         TabIndex        =   5
         Top             =   2280
         Width           =   4725
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Registered number of teachers :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   1
         Left            =   360
         MouseIcon       =   "frmDash.frx":2F2E
         TabIndex        =   4
         Top             =   1440
         Width           =   4710
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Registered number of schools :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   0
         Left            =   360
         MouseIcon       =   "frmDash.frx":3238
         TabIndex        =   3
         Top             =   600
         Width           =   4485
      End
   End
   Begin VB.Image cmdCategory 
      Height          =   735
      Left            =   9480
      MouseIcon       =   "frmDash.frx":3542
      MousePointer    =   99  'Custom
      Picture         =   "frmDash.frx":384C
      Stretch         =   -1  'True
      ToolTipText     =   "Enter Applications"
      Top             =   720
      Width           =   735
   End
   Begin VB.Image cmdSell 
      Height          =   495
      Left            =   11160
      MouseIcon       =   "frmDash.frx":7B45
      MousePointer    =   12  'No Drop
      Picture         =   "frmDash.frx":7E4F
      Stretch         =   -1  'True
      ToolTipText     =   "N/A"
      Top             =   840
      Width           =   495
   End
   Begin VB.Image cmdSearch 
      Height          =   495
      Left            =   9960
      MouseIcon       =   "frmDash.frx":8FB3
      MousePointer    =   12  'No Drop
      Picture         =   "frmDash.frx":92BD
      Stretch         =   -1  'True
      ToolTipText     =   "Search database"
      Top             =   120
      Width           =   495
   End
   Begin VB.Image cmdPurchase 
      Height          =   495
      Left            =   10440
      MouseIcon       =   "frmDash.frx":BD9F
      MousePointer    =   99  'Custom
      Picture         =   "frmDash.frx":C0A9
      Stretch         =   -1  'True
      ToolTipText     =   "Enter School Data"
      Top             =   840
      Width           =   495
   End
   Begin VB.Image cmdLOut 
      Height          =   495
      Left            =   11400
      MouseIcon       =   "frmDash.frx":E402
      MousePointer    =   99  'Custom
      Picture         =   "frmDash.frx":E70C
      Stretch         =   -1  'True
      ToolTipText     =   "Log out"
      Top             =   120
      Width           =   495
   End
   Begin VB.Image cmdSettings 
      Height          =   495
      Left            =   10680
      MouseIcon       =   "frmDash.frx":1065D
      MousePointer    =   99  'Custom
      Picture         =   "frmDash.frx":10967
      Stretch         =   -1  'True
      ToolTipText     =   "Settings"
      Top             =   120
      Width           =   495
   End
   Begin VB.Image cmdReport 
      Height          =   495
      Left            =   9240
      MouseIcon       =   "frmDash.frx":12F31
      MousePointer    =   12  'No Drop
      Picture         =   "frmDash.frx":1323B
      Stretch         =   -1  'True
      ToolTipText     =   "Reports"
      Top             =   120
      Width           =   495
   End
   Begin VB.Label lblWelcome 
      BackStyle       =   0  'Transparent
      Caption         =   "Welcome, User !"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   840
      Width           =   6855
   End
   Begin VB.Image imgLogo 
      Height          =   660
      Left            =   240
      Picture         =   "frmDash.frx":15DC1
      Top             =   240
      Width           =   2295
   End
End
Attribute VB_Name = "frmDash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private highlightStat As Boolean

Private Sub cmdCategory_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
    frmApplication.Show
End If
If Button = 2 Then
     MsgBox "Info: You're entering basic data entry mode!", vbInformation
     frmBasApplication.Show
End If
End Sub


Private Sub cmdPurchase_Click()
'frmUpload.Show
End Sub

Sub Initialize_Dash()
On Error Resume Next
logStat = False
liInfo.Clear

sql(1) = "SELECT COUNT(id) FROM school"
sql(2) = "SELECT COUNT(id) FROM teacher"
sql(3) = "SELECT SUM(numStud) FROM teacher"
sql(4) = "SELECT COUNT(id) FROM student WHERE slmc=1"
sql(5) = "SELECT COUNT(id) FROM student WHERE slmc=2"
sql(6) = "SELECT COUNT(id) FROM student WHERE slmc=3"
If getRecords(1, 1, 1) = True Then
    lblNSchol.Caption = records(1).Fields(0)
    closeRecords (1)
Else
    lblNSchol.Caption = "N/A"
End If
If getRecords(1, 2, 1) = True Then
    lblNTea.Caption = records(1).Fields(0)
    closeRecords (1)
Else
    lblNTea.Caption = "N/A"
End If
If getRecords(1, 3, 1) = True Then
    If IsNumeric(records(1).Fields(0)) = False Then
        lblNStu.Caption = "N/A"
    Else
        lblNStu.Caption = records(1).Fields(0)
    End If
    closeRecords (1)
Else
    lblNStu.Caption = "N/A"
End If
If getRecords(1, 4, 1) = True Then
    lblSl8.Caption = records(1).Fields(0)
    closeRecords (1)
Else
    lblSl8.Caption = "N/A"
End If
If getRecords(1, 5, 1) = True Then
    lblSl11.Caption = records(1).Fields(0)
    closeRecords (1)
Else
    lblSl11.Caption = "N/A"
End If
If getRecords(1, 6, 1) = True Then
    lblSl13.Caption = records(1).Fields(0)
    closeRecords (1)
Else
    lblSl13.Caption = "N/A"
End If



'Show warning if there are incomplete applications
sql(1) = "SELECT COUNT(id) FROM teacher WHERE name IS NULL"
If getRecords(1, 1, 1) = True Then
    If records(1).Fields(0) > 0 Then
        liInfo.AddItem "( ! ) " & records(1).Fields(0) & " incomplete application/s in database!"
    End If
    closeRecords (1)
End If

If liInfo.ListCount = 0 Then
    liInfo.AddItem "( + ) You are all caught up! :)"
End If
End Sub

Private Sub cmdRefr_Click()
Initialize_Dash
End Sub

'
Private Sub Form_Load()
lblWelcome.Caption = "Welcome, " & username & " !"
Initialize_Dash
End Sub
'
Private Sub Form_Unload(Cancel As Integer)
If logStat = False Then
    disconnectDB (1)
    End
End If
End Sub

Private Sub cmdSettings_Click()
frmSettings.Show
End Sub
'
Private Sub cmdLOut_Click()
frmLogin.Show
logStat = True
Unload Me
End Sub
'
Private Sub cmdSearch_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdSearch.Picture = LoadPicture(App.Path + "\DATA\ICON\_search.jpg")
highlightStat = True
End Sub

Private Sub cmdReport_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdReport.Picture = LoadPicture(App.Path + "\DATA\ICON\_report.jpg")
highlightStat = True
End Sub

Private Sub cmdSettings_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdSettings.Picture = LoadPicture(App.Path + "\DATA\ICON\_settings.jpg")
highlightStat = True
End Sub

Private Sub cmdLOut_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdLOut.Picture = LoadPicture(App.Path + "\DATA\ICON\_logout.jpg")
highlightStat = True
End Sub

Private Sub cmdPurchase_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdPurchase.Picture = LoadPicture(App.Path + "\DATA\ICON\_purchase.jpg")
highlightStat = True
End Sub

Private Sub cmdSell_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdSell.Picture = LoadPicture(App.Path + "\DATA\ICON\_sale.jpg")
highlightStat = True
End Sub

Private Sub cmdCategory_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdCategory.Picture = LoadPicture(App.Path + "\DATA\ICON\_category.jpg")
highlightStat = True
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If highlightStat = True Then
    cmdSearch.Picture = LoadPicture(App.Path + "\DATA\ICON\search.jpg")
    cmdReport.Picture = LoadPicture(App.Path + "\DATA\ICON\report.jpg")
    cmdSettings.Picture = LoadPicture(App.Path + "\DATA\ICON\settings.jpg")
    cmdLOut.Picture = LoadPicture(App.Path + "\DATA\ICON\logout.jpg")
    cmdPurchase.Picture = LoadPicture(App.Path + "\DATA\ICON\purchase.jpg")
    cmdSell.Picture = LoadPicture(App.Path + "\DATA\ICON\sale.jpg")
    cmdCategory.Picture = LoadPicture(App.Path + "\DATA\ICON\category.jpg")
    highlightStat = False
End If
End Sub

