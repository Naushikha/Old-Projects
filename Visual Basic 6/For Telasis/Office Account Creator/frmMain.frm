VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Office Account Creator"
   ClientHeight    =   975
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   3795
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   975
   ScaleWidth      =   3795
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cmbUsr 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      ItemData        =   "frmMain.frx":0442
      Left            =   2760
      List            =   "frmMain.frx":0452
      TabIndex        =   4
      Text            =   "MGR"
      Top             =   120
      Width           =   855
   End
   Begin VB.CommandButton cmdGen 
      Caption         =   "Automate !"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2280
      TabIndex        =   2
      Top             =   480
      Width           =   1335
   End
   Begin VB.TextBox txtOUTC 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1320
      TabIndex        =   0
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label13 
      Caption         =   "  Coded by      Naushikha"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label7 
      Caption         =   "OUTLETCODE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   120
      Width           =   1455
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Public Sub Sendkeys(text As Variant, Optional wait As Boolean = False)
   Dim WshShell As Object
   Set WshShell = CreateObject("wscript.shell")
   WshShell.Sendkeys CStr(text), wait
   Set WshShell = Nothing
End Sub
Private Sub cmdGen_Click()
outl = txtOUTC.text
usr = cmbUsr.text
MsgBox "Just sit back and watch the app do it's thang !" & vbNewLine & " - Naushikha"
Me.Hide
Shell "cmd /c start chrome -incognito", vbNormalFocus
Sleep 2000
Sendkeys "office.com/setup~"
Sleep 5000
Sendkeys "{TAB}~"
Sleep 5000
Sendkeys "{TAB}{TAB}~"
Sleep 1000
tmpstring = "jmsl." & LCase(outl) & "." & LCase(usr)
Sendkeys tmpstring
Sendkeys "{TAB}{TAB}{TAB}{TAB}~"
Sleep 1000
tmpstring = UCase(usr) & "." & UCase(outl) & "@jmsl"
Sendkeys tmpstring
Sleep 1000
Sendkeys "{TAB}{TAB}{TAB}{TAB}~"
Sleep 1000
tmpstring = UCase(usr) & "{TAB}"
Sendkeys tmpstring
Sleep 1000
tmpstring = UCase(outl) & "{TAB}~"
Sendkeys tmpstring
MsgBox "Done !, Verify Captcha or get SMS codes to continue !"
Me.Show
End Sub

