VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmLoad 
   Appearance      =   0  'Flat
   BackColor       =   &H80000003&
   BorderStyle     =   0  'None
   Caption         =   "Sync Status"
   ClientHeight    =   960
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3915
   ControlBox      =   0   'False
   FillColor       =   &H00FF0000&
   FillStyle       =   0  'Solid
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   12
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmLoad.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   64
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   261
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   3000
      Top             =   1200
   End
   Begin MSComCtl2.Animation anim 
      Height          =   600
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3900
      _ExtentX        =   6879
      _ExtentY        =   1058
      _Version        =   393216
      AutoPlay        =   -1  'True
      Center          =   -1  'True
      BackColor       =   -2147483645
      FullWidth       =   260
      FullHeight      =   40
   End
   Begin VB.Label lbl2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000003&
      Caption         =   "Syncing with database ..."
      ForeColor       =   &H00404000&
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   600
      Width           =   3735
   End
End
Attribute VB_Name = "frmLoad"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Const HWND_TOPMOST = -1
Private Const HWND_NOTOPMOST = -2
Private Const SWP_NOACTIVATE = &H10
Private Const SWP_SHOWWINDOW = &H40
Private Const SWP_NOMOVE = 2
Private Const SWP_NOSIZE = 1
Private Sub Form_Load()
Dim R As Long
R = SetWindowPos(Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE)
anim.Open App.Path & "\DATA\COPY.ANIM"
anim.Play
Me.Top = 0
Me.Left = Screen.Width - Me.Width
End Sub
Private Sub Form_Activate()
Dim R As Long
R = SetWindowPos(Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE)
End Sub
