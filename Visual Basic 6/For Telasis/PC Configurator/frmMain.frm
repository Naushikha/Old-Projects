VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "PC Configuration Generator for Keells Outlets"
   ClientHeight    =   2835
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7215
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2835
   ScaleWidth      =   7215
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdPre 
      Caption         =   ">"
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
      Left            =   3240
      TabIndex        =   35
      Top             =   600
      Width           =   375
   End
   Begin VB.TextBox txtPOS2 
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
      Left            =   840
      TabIndex        =   24
      Text            =   "32"
      Top             =   2400
      Width           =   495
   End
   Begin VB.TextBox txtPOS3 
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
      Left            =   1440
      TabIndex        =   23
      Text            =   "33"
      Top             =   2400
      Width           =   495
   End
   Begin VB.TextBox txtPOS4 
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
      Left            =   2040
      TabIndex        =   22
      Text            =   "34"
      Top             =   2400
      Width           =   495
   End
   Begin VB.TextBox txtPOS5 
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
      Left            =   2640
      TabIndex        =   21
      Text            =   "35"
      Top             =   2400
      Width           =   495
   End
   Begin VB.TextBox txtPOS6 
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
      Left            =   3240
      TabIndex        =   20
      Text            =   "36"
      Top             =   2400
      Width           =   495
   End
   Begin VB.TextBox txtST1 
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
      Left            =   1440
      TabIndex        =   19
      Text            =   "110"
      Top             =   1800
      Width           =   495
   End
   Begin VB.TextBox txtST2 
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
      Left            =   2040
      TabIndex        =   18
      Text            =   "120"
      Top             =   1800
      Width           =   495
   End
   Begin VB.TextBox txtPOS1 
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
      Left            =   240
      TabIndex        =   17
      Text            =   "31"
      Top             =   2400
      Width           =   495
   End
   Begin VB.TextBox txtHC 
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
      Left            =   840
      TabIndex        =   16
      Text            =   "123"
      Top             =   1800
      Width           =   495
   End
   Begin VB.TextBox txtMGR 
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
      Left            =   240
      TabIndex        =   15
      Text            =   "250"
      Top             =   1800
      Width           =   495
   End
   Begin VB.CommandButton cmdGen 
      Caption         =   "Generate !"
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
      Left            =   5400
      TabIndex        =   14
      Top             =   2280
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.TextBox txtGate 
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
      Left            =   4920
      TabIndex        =   10
      Top             =   1080
      Width           =   2175
   End
   Begin VB.TextBox txtIP 
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
      Left            =   4920
      TabIndex        =   8
      Top             =   360
      Width           =   2175
   End
   Begin VB.TextBox txtSubN 
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
      Left            =   4920
      TabIndex        =   6
      Text            =   "255.255.255.0"
      Top             =   720
      Width           =   2175
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
      TabIndex        =   3
      Top             =   840
      Width           =   1815
   End
   Begin VB.TextBox txtIPC 
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
      TabIndex        =   2
      Top             =   360
      Width           =   1815
   End
   Begin VB.TextBox txtD2 
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
      Left            =   4920
      TabIndex        =   1
      Text            =   "10.3.125.1"
      Top             =   1800
      Width           =   2175
   End
   Begin VB.TextBox txtD1 
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
      Left            =   4920
      TabIndex        =   0
      Text            =   "10.1.125.1"
      Top             =   1440
      Width           =   2175
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
      Left            =   3960
      TabIndex        =   36
      Top             =   2280
      Width           =   1215
   End
   Begin VB.Label Label18 
      Caption         =   "POS6"
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
      Left            =   3240
      TabIndex        =   34
      Top             =   2160
      Width           =   495
   End
   Begin VB.Label Label17 
      Caption         =   "POS5"
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
      Left            =   2640
      TabIndex        =   33
      Top             =   2160
      Width           =   495
   End
   Begin VB.Label Label16 
      Caption         =   "POS4"
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
      Left            =   2040
      TabIndex        =   32
      Top             =   2160
      Width           =   495
   End
   Begin VB.Label Label15 
      Caption         =   "POS3"
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
      Left            =   1440
      TabIndex        =   31
      Top             =   2160
      Width           =   495
   End
   Begin VB.Label Label14 
      Caption         =   "POS2"
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
      Left            =   840
      TabIndex        =   30
      Top             =   2160
      Width           =   495
   End
   Begin VB.Label Label12 
      Caption         =   "POS1"
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
      Left            =   240
      TabIndex        =   29
      Top             =   2160
      Width           =   495
   End
   Begin VB.Label Label11 
      Caption         =   "ST2"
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
      Left            =   2040
      TabIndex        =   28
      Top             =   1560
      Width           =   495
   End
   Begin VB.Label Label10 
      Caption         =   "ST1"
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
      Left            =   1440
      TabIndex        =   27
      Top             =   1560
      Width           =   495
   End
   Begin VB.Label Label9 
      Caption         =   "HC"
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
      Left            =   840
      TabIndex        =   26
      Top             =   1560
      Width           =   495
   End
   Begin VB.Label Label8 
      Caption         =   "MGR"
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
      Left            =   240
      TabIndex        =   25
      Top             =   1560
      Width           =   495
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
      Left            =   120
      TabIndex        =   13
      Top             =   840
      Width           =   1455
   End
   Begin VB.Label Label6 
      Caption         =   "IP CODE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   12
      Top             =   360
      Width           =   855
   End
   Begin VB.Label Label5 
      Caption         =   "Subnet------------"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   11
      Top             =   720
      Width           =   1575
   End
   Begin VB.Label Label4 
      Caption         =   "IP--------------------"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   9
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "Gateway---------"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   7
      Top             =   1080
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "DNS 2-------------"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   5
      Top             =   1800
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "DNS 1-------------"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   3720
      TabIndex        =   4
      Top             =   1440
      Width           =   1575
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdGen_Click()
If txtOUTC.Text = "" Then Exit Sub
currDir = App.Path + "\Export\" + txtOUTC.Text + "\"
MkDir currDir
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile

tmpstring = "OFFICE CREDENTIALS"
tmpemail = "jmsl." & LCase(txtOUTC.Text) & ".mgr@outlook.com"
tmppw = "MGR." & UCase(txtOUTC.Text) & "@jmsl"
tmpLine = tmpemail & " , " & tmppw
tmpstring = tmpstring & vbNewLine & tmpLine

tmpemail = "jmsl." & LCase(txtOUTC.Text) & ".hc@outlook.com"
tmppw = "HC." & UCase(txtOUTC.Text) & "@jmsl"
tmpLine = tmpemail & " , " & tmppw
tmpstring = tmpstring & vbNewLine & tmpLine

tmpemail = "jmsl." & LCase(txtOUTC.Text) & ".st1@outlook.com"
tmppw = "ST1." & UCase(txtOUTC.Text) & "@jmsl"
tmpLine = tmpemail & " , " & tmppw
tmpstring = tmpstring & vbNewLine & tmpLine

tmpemail = "jmsl." & LCase(txtOUTC.Text) & ".st2@outlook.com"
tmppw = "ST2." & UCase(txtOUTC.Text) & "@jmsl"
tmpLine = tmpemail & " , " & tmppw
tmpstring = tmpstring & vbNewLine & tmpLine


Open currDir + "\&Email_Credentials.txt" For Output As #tmpFile
Print #tmpFile, tmpstring
Close #tmpFile

tmpstring = "slmgr /xpr" & vbNewLine & "pause" & vbNewLine
tmpLine = "netsh interface ip set address name=Ethernet static " _
& txtIP.Text & "." & txtMGR.Text & " " & txtSubN.Text & " " & txtGate.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip set dns name=Ethernet static " & txtD1.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip add dns name=Ethernet " & txtD2.Text & " index=2" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "WMIC computersystem where caption=""%computername%"" rename ""JMSL-" & txtOUTC.Text & "-MGR""" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "shutdown /r /t 0"
tmpstring = tmpstring & tmpLine
Open currDir + "\1.MGR.bat" For Output As #tmpFile
Print #tmpFile, tmpstring
Close #tmpFile

tmpstring = "slmgr /xpr" & vbNewLine & "pause" & vbNewLine
tmpLine = "netsh interface ip set address name=Ethernet static " _
& txtIP.Text & "." & txtHC.Text & " " & txtSubN.Text & " " & txtGate.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip set dns name=Ethernet static " & txtD1.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip add dns name=Ethernet " & txtD2.Text & " index=2" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "WMIC computersystem where caption=""%computername%"" rename ""JMSL-" & txtOUTC.Text & "-HC""" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "shutdown /r /t 0"
tmpstring = tmpstring & tmpLine
Open currDir + "\2.HC.bat" For Output As #tmpFile
Print #tmpFile, tmpstring
Close #tmpFile

tmpstring = "slmgr /xpr" & vbNewLine & "pause" & vbNewLine
tmpLine = "netsh interface ip set address name=Ethernet static " _
& txtIP.Text & "." & txtST1.Text & " " & txtSubN.Text & " " & txtGate.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip set dns name=Ethernet static " & txtD1.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip add dns name=Ethernet " & txtD2.Text & " index=2" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "WMIC computersystem where caption=""%computername%"" rename ""JMSL-" & txtOUTC.Text & "-ST1""" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "shutdown /r /t 0"
tmpstring = tmpstring & tmpLine
Open currDir + "\3.ST1.bat" For Output As #tmpFile
Print #tmpFile, tmpstring
Close #tmpFile

tmpstring = "slmgr /xpr" & vbNewLine & "pause" & vbNewLine
tmpLine = "netsh interface ip set address name=Ethernet static " _
& txtIP.Text & "." & txtST2.Text & " " & txtSubN.Text & " " & txtGate.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip set dns name=Ethernet static " & txtD1.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip add dns name=Ethernet " & txtD2.Text & " index=2" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "WMIC computersystem where caption=""%computername%"" rename ""JMSL-" & txtOUTC.Text & "-ST2""" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "shutdown /r /t 0"
tmpstring = tmpstring & tmpLine
Open currDir + "\4.ST2.bat" For Output As #tmpFile
Print #tmpFile, tmpstring
Close #tmpFile

tmpstring = "slmgr /xpr" & vbNewLine & "pause" & vbNewLine
tmpLine = "netsh interface ip set address name=Ethernet static " _
& txtIP.Text & "." & txtPOS1.Text & " " & txtSubN.Text & " " & txtGate.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip set dns name=Ethernet static " & txtD1.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip add dns name=Ethernet " & txtD2.Text & " index=2" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "WMIC computersystem where caption=""%computername%"" rename ""JMSL-" & txtOUTC.Text & "-POS1""" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "shutdown /r /t 0"
tmpstring = tmpstring & tmpLine
Open currDir + "\POS1.bat" For Output As #tmpFile
Print #tmpFile, tmpstring
Close #tmpFile

tmpstring = "slmgr /xpr" & vbNewLine & "pause" & vbNewLine
tmpLine = "netsh interface ip set address name=Ethernet static " _
& txtIP.Text & "." & txtPOS2.Text & " " & txtSubN.Text & " " & txtGate.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip set dns name=Ethernet static " & txtD1.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip add dns name=Ethernet " & txtD2.Text & " index=2" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "WMIC computersystem where caption=""%computername%"" rename ""JMSL-" & txtOUTC.Text & "-POS2""" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "shutdown /r /t 0"
tmpstring = tmpstring & tmpLine
Open currDir + "\POS2.bat" For Output As #tmpFile
Print #tmpFile, tmpstring
Close #tmpFile

tmpstring = "slmgr /xpr" & vbNewLine & "pause" & vbNewLine
tmpLine = "netsh interface ip set address name=Ethernet static " _
& txtIP.Text & "." & txtPOS3.Text & " " & txtSubN.Text & " " & txtGate.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip set dns name=Ethernet static " & txtD1.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip add dns name=Ethernet " & txtD2.Text & " index=2" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "WMIC computersystem where caption=""%computername%"" rename ""JMSL-" & txtOUTC.Text & "-POS3""" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "shutdown /r /t 0"
tmpstring = tmpstring & tmpLine
Open currDir + "\POS3.bat" For Output As #tmpFile
Print #tmpFile, tmpstring
Close #tmpFile

tmpstring = "slmgr /xpr" & vbNewLine & "pause" & vbNewLine
tmpLine = "netsh interface ip set address name=Ethernet static " _
& txtIP.Text & "." & txtPOS4.Text & " " & txtSubN.Text & " " & txtGate.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip set dns name=Ethernet static " & txtD1.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip add dns name=Ethernet " & txtD2.Text & " index=2" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "WMIC computersystem where caption=""%computername%"" rename ""JMSL-" & txtOUTC.Text & "-POS4""" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "shutdown /r /t 0"
tmpstring = tmpstring & tmpLine
Open currDir + "\POS4.bat" For Output As #tmpFile
Print #tmpFile, tmpstring
Close #tmpFile

tmpstring = "slmgr /xpr" & vbNewLine & "pause" & vbNewLine
tmpLine = "netsh interface ip set address name=Ethernet static " _
& txtIP.Text & "." & txtPOS5.Text & " " & txtSubN.Text & " " & txtGate.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip set dns name=Ethernet static " & txtD1.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip add dns name=Ethernet " & txtD2.Text & " index=2" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "WMIC computersystem where caption=""%computername%"" rename ""JMSL-" & txtOUTC.Text & "-POS5""" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "shutdown /r /t 0"
tmpstring = tmpstring & tmpLine
Open currDir + "\POS5.bat" For Output As #tmpFile
Print #tmpFile, tmpstring
Close #tmpFile

tmpstring = "slmgr /xpr" & vbNewLine & "pause" & vbNewLine
tmpLine = "netsh interface ip set address name=Ethernet static " _
& txtIP.Text & "." & txtPOS6.Text & " " & txtSubN.Text & " " & txtGate.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip set dns name=Ethernet static " & txtD1.Text & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "netsh interface ip add dns name=Ethernet " & txtD2.Text & " index=2" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "WMIC computersystem where caption=""%computername%"" rename ""JMSL-" & txtOUTC.Text & "-POS6""" & vbNewLine
tmpstring = tmpstring & tmpLine
tmpLine = "shutdown /r /t 0"
tmpstring = tmpstring & tmpLine
Open currDir + "\POS6.bat" For Output As #tmpFile
Print #tmpFile, tmpstring
Close #tmpFile

MsgBox "Files have been generated !"
Shell "explorer.exe " & currDir, vbNormalFocus
End
End Sub

Private Sub cmdPre_Click()
IPcode = txtIPC.Text
txtIP.Text = "10.50." & IPcode
txtGate.Text = "10.50." & IPcode & ".254"
cmdGen.Visible = True
End Sub
