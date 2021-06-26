VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Browser"
   ClientHeight    =   405
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4200
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   27
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   280
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Interval        =   10000
      Left            =   2400
      Top             =   0
   End
   Begin VB.ComboBox cmb 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   405
      ItemData        =   "frmMain.frx":0000
      Left            =   0
      List            =   "frmMain.frx":0002
      TabIndex        =   0
      Text            =   "Run..."
      Top             =   0
      Width           =   4215
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type record
    label As String
    runType As Integer
    path As String
End Type
Private currDir As String
Private fileCount As Integer
Private records() As record

Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, _
  ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Private Const HWND_TOPMOST = -1
Private Const HWND_NOTOPMOST = -2
Private Const SWP_NOMOVE = &H2
Private Const SWP_NOSIZE = &H1

Private Declare Function SetFocusAPI Lib "user32" Alias "SetFocus" (ByVal hwnd As Long) As Long

Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" ( _
                    ByVal hwnd As Long, _
                    ByVal lpOperation As String, _
                    ByVal lpFile As String, _
                    ByVal lpParameters As String, _
                    ByVal lpDirectory As String, _
                    ByVal nShowCmd As Long) As Long

Private Const SW_HIDE As Long = 0

Private Const SW_SHOWNORMAL As Long = 1

Private Const SW_SHOWMAXIMIZED As Long = 3

Private Const SW_SHOWMINIMIZED As Long = 2

Private Declare Function SetForegroundWindow Lib "user32.dll" (ByVal hwnd As Long) As Long


Public Sub Sendkeys(text As Variant, Optional wait As Boolean = False)
   Dim WshShell As Object
   Set WshShell = CreateObject("wscript.shell")
   WshShell.Sendkeys CStr(text), wait
   Set WshShell = Nothing
End Sub

Private Sub cmb_GotFocus()
cmb.text = ""
End Sub

Private Sub cmb_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyTab Then
    Sendkeys "{DOWN}"
End If
If KeyCode = vbKeyEscape Then
    End
End If
If KeyCode = vbKeyReturn And cmb.ListIndex > -1 Then
    If records(cmb.ListIndex).runType = 0 Then '0 means absolute
        Shell records(cmb.ListIndex).path, vbNormalFocus
    Else
        Shell currDir + "..\..\" + records(cmb.ListIndex).path, vbNormalFocus 'this is gonna be placed inside tools\&BROWSER
    End If
    End
End If
End Sub

Private Sub Form_Deactivate()
    End
End Sub

Private Sub Form_Load()
'Set windows in bottom right corner
Me.Left = Screen.Width - Me.Width
Me.Top = Screen.Height - Me.Height
'Load
currDir = App.path + "\DATA\"
strFile = Dir(currDir)

Do While Len(strFile)
    fileCount = fileCount + 1
    strFile = Dir()
Loop


ReDim records(fileCount)
strFile = Dir(currDir)
fileCount = 0

Do While strFile > ""
    Dim tmpFile As Integer
    tmpFile = FreeFile
    Open currDir + strFile For Input As #tmpFile
    Input #tmpFile, records(fileCount).label, records(fileCount).runType, records(fileCount).path
    Close #tmpFile
    
    cmb.AddItem records(fileCount).label
    

    fileCount = fileCount + 1
    strFile = Dir()
Loop

Call SetWindowPos(Me.hwnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE)
Dim retval As Long  ' return value

retval = SetForegroundWindow(Me.hwnd)
SetFocusAPI cmb.hwnd


End Sub

Private Sub Timer1_Timer()
 End
End Sub
