VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmBasApplication 
   BackColor       =   &H80000003&
   Caption         =   "Basic Application"
   ClientHeight    =   3315
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   10710
   Icon            =   "frmBasApplication.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   233.04
   ScaleMode       =   0  'User
   ScaleWidth      =   721.212
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdSubmit 
      BackColor       =   &H80000002&
      Caption         =   "Submit"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9840
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   0
      Width           =   855
   End
   Begin VB.Frame Frame2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000003&
      Caption         =   "School Details"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   855
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   10455
      Begin VB.TextBox txtCens 
         BackColor       =   &H80000003&
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
         Height          =   345
         Left            =   7440
         MaxLength       =   6
         TabIndex        =   8
         Top             =   360
         Width           =   2895
      End
      Begin VB.TextBox txtSName 
         BackColor       =   &H80000003&
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
         Height          =   345
         Left            =   960
         Locked          =   -1  'True
         TabIndex        =   7
         TabStop         =   0   'False
         Top             =   360
         Width           =   4815
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "Name :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   5
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Census Number :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5880
         TabIndex        =   4
         Top             =   360
         Width           =   1695
      End
   End
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000003&
      Caption         =   "Other Details"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   1095
      Left            =   120
      TabIndex        =   2
      Top             =   2160
      Width           =   10455
      Begin VB.TextBox txtNumStud 
         BackColor       =   &H80000003&
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
         Height          =   345
         Left            =   7080
         MaxLength       =   2
         TabIndex        =   11
         Top             =   480
         Width           =   1335
      End
      Begin VB.ComboBox cmbTyp 
         Appearance      =   0  'Flat
         BackColor       =   &H80000003&
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
         Height          =   420
         ItemData        =   "frmBasApplication.frx":10CA
         Left            =   2040
         List            =   "frmBasApplication.frx":10DA
         TabIndex        =   10
         Text            =   "Select Type"
         Top             =   480
         Width           =   1935
      End
      Begin MSComCtl2.DTPicker dtDate 
         Height          =   375
         Left            =   8640
         TabIndex        =   12
         Top             =   480
         Width           =   1695
         _ExtentX        =   2990
         _ExtentY        =   661
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CalendarBackColor=   -2147483645
         CalendarTitleBackColor=   -2147483645
         CustomFormat    =   "yyyy/MM/dd"
         Format          =   173277187
         CurrentDate     =   38718
      End
      Begin VB.Label Label13 
         BackStyle       =   0  'Transparent
         Caption         =   "Received Date"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   8640
         TabIndex        =   15
         Top             =   240
         Width           =   1695
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "No. of Students in Application :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4080
         TabIndex        =   14
         Top             =   480
         Width           =   3015
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "Application Type :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   6
         Top             =   480
         Width           =   1695
      End
   End
   Begin VB.Frame frm1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000003&
      Caption         =   "Teacher Details"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   975
      Left            =   120
      TabIndex        =   0
      Top             =   1080
      Width           =   10455
      Begin VB.TextBox txtTCont 
         BackColor       =   &H80000003&
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
         Height          =   345
         Left            =   1800
         MaxLength       =   10
         TabIndex        =   9
         Top             =   360
         Width           =   8535
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Contact Number :"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   1695
      End
   End
End
Attribute VB_Name = "frmBasApplication"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private scholOK As Boolean

Sub refresh_form()
txtCens.Text = ""
txtTCont.Text = ""
txtCens.SetFocus
End Sub

Sub send_data()
If check_data(txtTCont.Text, 10) = False Then Exit Sub
If cmbTyp.ListIndex < 0 Then Exit Sub


tmpDT = dtDate.Year & "-" & dtDate.Month & "-" & dtDate.Day
tmpTelephone = txtTCont.Text
If cmbTyp.Text = "Post" Then tmpAppMethod = "PST"
If cmbTyp.Text = "Fax" Then tmpAppMethod = "FAX"
If cmbTyp.Text = "E-Mail" Then tmpAppMethod = "EML"
If cmbTyp.Text = "WhatsApp" Then tmpAppMethod = "WAP"
tmpNumStud = Int(txtNumStud.Text)
tmpSchoolId = txtCens.Text
tmpUser = username

sql(1) = "INSERT INTO teacher(recvDate,telephone,appMethod,numStud,schoolId,user) VALUES(""" & _
            tmpDT & """,""" & _
            tmpTelephone & """,""" & _
            tmpAppMethod & """,""" & _
            tmpNumStud & """,""" & _
            tmpSchoolId & """,""" & _
            tmpUser & """)"
sql(2) = "SELECT LAST_INSERT_ID()" 'need to get the teacher id (application id) assigned by the server
If sendRecords(1, 1) = True Then
    If getRecords(1, 2, 1) = True Then
        tmpAppId = records(1).Fields(0)
        closeRecords (1)
    End If
    MsgBox "Info: The application number is " & tmpAppId, vbInformation
    refresh_form
Else
    MsgBox "Error: Application wasn't sent into database!", vbCritical
    
End If
End Sub

Private Sub cmdSubmit_Click()
If scholOK = False Then Exit Sub
If IsNumeric(txtNumStud.Text) = False Or InStr(txtNumStud.Text, "+") Or InStr(txtNumStud.Text, "-") Or InStr(txtNumStud.Text, ".") Then
    MsgBox "Error: Number of students incorrect!", vbCritical
    txtNumStud.SetFocus
    Exit Sub
End If
sql(1) = "SELECT id FROM teacher WHERE schoolId=""" & txtCens.Text & """"
If getRecords(1, 1, 1) = True Then
    MsgBox "Warning: " & txtSName.Text & " has duplicates!", vbCritical
    frmDuplicateCheck.Show
    frmDuplicateCheck.Load_School txtCens.Text, "BASIC"
    closeRecords (1)
Else
    send_data
End If
End Sub

Private Sub Form_Load()
dtDate.Value = Date
End Sub

Private Sub txtCens_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then
    sql(1) = "SELECT name FROM school WHERE id=""" & txtCens.Text & """"
    If getRecords(1, 1, 1) = True Then
        txtSName.Text = records(1).Fields(0)  'school name
        closeRecords (1)
        scholOK = True
        txtTCont.SetFocus
        MsgBox "Info: School found!", vbInformation
    Else
        txtSName.Text = "School not found!"
        scholOK = False
        txtCens.SetFocus
        MsgBox "Error: School not found!", vbCritical
    End If
Else
    txtSName.Text = "Searching for school..."
    scholOK = False
End If
End Sub
Private Sub txtTCont_LostFocus()
If IsNumeric(txtTCont.Text) = False Or Len(txtTCont.Text) < 10 Or InStr(txtTCont.Text, "+") Or InStr(txtTCont.Text, "-") Or InStr(txtTCont.Text, ".") Then
MsgBox "Error: Number incorrect!", vbCritical
txtTCont.SetFocus
End If
End Sub
