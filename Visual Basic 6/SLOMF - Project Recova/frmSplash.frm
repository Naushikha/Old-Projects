VERSION 5.00
Begin VB.Form frmSplash 
   BackColor       =   &H80000010&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   4245
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   7320
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4245
   ScaleWidth      =   7320
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BackColor       =   &H80000003&
      Height          =   4050
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7080
      Begin VB.Timer tmrSec 
         Interval        =   1000
         Left            =   6360
         Top             =   840
      End
      Begin VB.Image imgLogo 
         Height          =   2145
         Left            =   1200
         Picture         =   "frmSplash.frx":10CA
         Top             =   600
         Width           =   4590
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "v1.0"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   315
         Left            =   6480
         TabIndex        =   4
         Top             =   3600
         Width           =   1815
      End
      Begin VB.Label lblWarning 
         BackStyle       =   0  'Transparent
         Caption         =   "Coded by Naushikha"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404000&
         Height          =   315
         Left            =   150
         TabIndex        =   1
         Top             =   3660
         Width           =   6855
      End
      Begin VB.Label lblPlatform 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "for Windows"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   3030
         TabIndex        =   2
         Top             =   3480
         Width           =   1905
      End
      Begin VB.Label lblProductName 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "SLMC Database"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   24.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808000&
         Height          =   675
         Left            =   3000
         TabIndex        =   3
         Top             =   2760
         Width           =   3780
      End
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private secCount As Integer
Private logType As String

Sub Load_Dat()
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile

Open App.Path & "\DATA\UserLogin.dat" For Input As #tmpFile
Line Input #tmpFile, tmpLine
Close #tmpFile

If tmpLine = "," Then  ' , no login saved
    logType = "Norm"
Else
    logType = "Sav"
End If
End Sub


Private Sub Form_Load()
    secCount = 0
    'Load Files
    start_log
    Load_Dat

End Sub

Private Sub tmrSec_Timer()
secCount = secCount + 1
Select Case secCount
    Case Is = 2
        frmLoad.Show
    Case Is = 5
        Me.Hide
        frmLoad.Hide
        If logType = "Norm" Then
            frmLogin.Show
            Unload Me
        End If
        'If logType = "Norm" Then
        'frmLogin.Show
        'Unload Me
        'End If
        If logType = "Sav" Then
            frmLogin.Load_Dat
            Unload Me
            frmLogin.Initialize_Connection
        End If
End Select
End Sub

