VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "mscomctl.ocx"
Begin VB.Form frmApplication 
   BackColor       =   &H80000003&
   Caption         =   "Application"
   ClientHeight    =   8310
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   11550
   Icon            =   "frmApplication.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   584.183
   ScaleMode       =   0  'User
   ScaleWidth      =   777.778
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
      Left            =   10680
      Style           =   1  'Graphical
      TabIndex        =   27
      Top             =   0
      Width           =   855
   End
   Begin VB.Frame fmM 
      Appearance      =   0  'Flat
      BackColor       =   &H80000003&
      Caption         =   "Student Details"
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
      Height          =   3975
      Left            =   0
      TabIndex        =   10
      Top             =   4320
      Width           =   11535
      Begin VB.CommandButton cmdNew 
         BackColor       =   &H80000002&
         Caption         =   "New"
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
         Left            =   9600
         Style           =   1  'Graphical
         TabIndex        =   26
         Top             =   240
         Width           =   1215
      End
      Begin VB.CommandButton cmdDel 
         BackColor       =   &H80000002&
         Caption         =   "X"
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
         Left            =   10920
         Style           =   1  'Graphical
         TabIndex        =   11
         TabStop         =   0   'False
         Top             =   240
         Width           =   495
      End
      Begin MSComctlLib.ListView lstStud 
         Height          =   3135
         Left            =   120
         TabIndex        =   12
         TabStop         =   0   'False
         Top             =   720
         Width           =   11295
         _ExtentX        =   19923
         _ExtentY        =   5530
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         _Version        =   393217
         ForeColor       =   4210688
         BackColor       =   -2147483645
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   0
      End
      Begin VB.Label Label12 
         BackStyle       =   0  'Transparent
         Caption         =   "*M - Male  F - Female"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   960
         TabIndex        =   30
         Top             =   360
         Width           =   1695
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "*S - Sinhala  T - Tamil  E - English"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   6600
         TabIndex        =   29
         Top             =   360
         Width           =   3135
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "*SLMC8 - 1  SLMC11 - 2  SLMC13 - 3"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3360
         TabIndex        =   28
         Top             =   360
         Width           =   2895
      End
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
      Height          =   1335
      Left            =   0
      TabIndex        =   7
      Top             =   0
      Width           =   11535
      Begin VB.TextBox txtSAddress 
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
         Left            =   1080
         MaxLength       =   100
         TabIndex        =   17
         Top             =   840
         Width           =   10335
      End
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
         Left            =   8520
         MaxLength       =   6
         TabIndex        =   16
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
         Left            =   1080
         Locked          =   -1  'True
         TabIndex        =   15
         TabStop         =   0   'False
         Top             =   360
         Width           =   5175
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Address :"
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
         TabIndex        =   13
         Top             =   840
         Width           =   1215
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
         TabIndex        =   9
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
         Left            =   6600
         TabIndex        =   8
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
      Left            =   0
      TabIndex        =   4
      Top             =   3240
      Width           =   11535
      Begin VB.ComboBox cmbPay 
         BackColor       =   &H80000003&
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
         Height          =   390
         ItemData        =   "frmApplication.frx":10CA
         Left            =   5160
         List            =   "frmApplication.frx":10D4
         TabIndex        =   22
         Text            =   "Pay. Type"
         Top             =   200
         Width           =   1335
      End
      Begin VB.TextBox txtPay 
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
         Left            =   3360
         Locked          =   -1  'True
         MaxLength       =   27
         TabIndex        =   23
         Top             =   600
         Width           =   3135
      End
      Begin VB.ComboBox cmbPrefDis 
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
         ItemData        =   "frmApplication.frx":10E6
         Left            =   600
         List            =   "frmApplication.frx":10E8
         TabIndex        =   21
         Text            =   "Select District"
         Top             =   480
         Width           =   2295
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
         ItemData        =   "frmApplication.frx":10EA
         Left            =   6960
         List            =   "frmApplication.frx":10FA
         TabIndex        =   24
         Text            =   "Select Type"
         Top             =   480
         Width           =   1935
      End
      Begin MSComCtl2.DTPicker dtDate 
         Height          =   375
         Left            =   9480
         TabIndex        =   25
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
         Left            =   9480
         TabIndex        =   31
         Top             =   240
         Width           =   1695
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "Application Type"
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
         Left            =   6960
         TabIndex        =   14
         Top             =   240
         Width           =   1695
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "Preferred District"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   960
         TabIndex        =   6
         Top             =   240
         Width           =   1575
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Payment Reference"
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
         Left            =   3480
         TabIndex        =   5
         Top             =   240
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
      Height          =   1935
      Left            =   0
      TabIndex        =   0
      Top             =   1320
      Width           =   11535
      Begin VB.TextBox txtTEma 
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
         MaxLength       =   254
         TabIndex        =   20
         Top             =   1320
         Width           =   9615
      End
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
         TabIndex        =   19
         Top             =   840
         Width           =   9615
      End
      Begin VB.TextBox txtTName 
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
         MaxLength       =   50
         TabIndex        =   18
         Top             =   240
         Width           =   9615
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "E-Mail :"
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
         TabIndex        =   3
         Top             =   1320
         Width           =   1695
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
         TabIndex        =   2
         Top             =   840
         Width           =   1695
      End
      Begin VB.Label Label1 
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
         TabIndex        =   1
         Top             =   360
         Width           =   1455
      End
   End
End
Attribute VB_Name = "frmApplication"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private scholOK As Boolean
Private students() As student

Sub Refresh_Student_List()
lstStud.ListItems.Clear
For i = 1 To UBound(students)
        Set li = lstStud.ListItems.Add(, , students(i).name)
        li.SubItems(1) = students(i).gender
        li.SubItems(2) = students(i).dob
        li.SubItems(3) = students(i).grade
        li.SubItems(4) = students(i).slmc
        li.SubItems(5) = students(i).medium
Next
End Sub

Sub Add_Student(name As String, gender As String, dob As Date, grade As String, slmc As String, medium As String)
    ReDim Preserve students(UBound(students) + 1)
    students(UBound(students)).name = name
    students(UBound(students)).gender = gender
    students(UBound(students)).dob = dob
    students(UBound(students)).grade = grade
    students(UBound(students)).slmc = slmc
    students(UBound(students)).medium = medium
    Refresh_Student_List
End Sub

Sub refresh_form()
txtCens.Text = ""
txtSAddress.Text = ""
txtTName.Text = ""
txtTCont.Text = ""
txtTEma.Text = ""
txtPay.Text = ""
ReDim students(0)
Refresh_Student_List
txtCens.SetFocus
End Sub

Sub send_data()
If check_data(txtSAddress.Text, 100) = False Then Exit Sub
If check_data(txtTName.Text, 50) = False Then Exit Sub
If check_data(txtTCont.Text, 10) = False Then Exit Sub
If check_data(txtTEma.Text, 254) = False Then Exit Sub
If cmbPrefDis.ListIndex < 0 Then Exit Sub
If cmbPay.ListIndex < 0 Then Exit Sub
If check_data(txtPay.Text, 27) = False Then Exit Sub 'because we add prefixes to identify ezy or bnk
If cmbTyp.ListIndex < 0 Then Exit Sub
If UBound(students) = 0 Then Exit Sub

tmpDT = dtDate.Year & "-" & dtDate.Month & "-" & dtDate.Day
tmpName = txtTName.Text
tmpAddress = txtSAddress.Text
tmpTelephone = txtTCont.Text
tmpEmail = txtTEma.Text
If cmbPay.Text = "Bank" Then tmpPayRef = "BNK"
If cmbPay.Text = "eZCash" Then tmpPayRef = "EZ" & txtPay.Text
tmpPrefDist = cmbPrefDis.ListIndex + 1
If cmbTyp.Text = "Post" Then tmpAppMethod = "PST"
If cmbTyp.Text = "Fax" Then tmpAppMethod = "FAX"
If cmbTyp.Text = "E-Mail" Then tmpAppMethod = "EML"
If cmbTyp.Text = "WhatsApp" Then tmpAppMethod = "WAP"
tmpNumStud = UBound(students)
tmpSchoolId = txtCens.Text
tmpUser = username

sql(1) = "INSERT INTO teacher(recvDate,name,address,telephone,email,paymRef,prefDist,appMethod,numStud,schoolId,user) VALUES(""" & _
            tmpDT & """,""" & _
            tmpName & """,""" & _
            tmpAddress & """,""" & _
            tmpTelephone & """,""" & _
            tmpEmail & """,""" & _
            tmpPayRef & """,""" & _
            tmpPrefDist & """,""" & _
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
    For i = 1 To UBound(students)
        tmpName = students(i).name
    
        sql(3) = "INSERT INTO student(name,gender,dob,grade,slmc,medium,schoolId,teacherId) VALUES(""" & _
            students(i).name & """,""" & _
            students(i).gender & """,""" & _
            Format(students(i).dob, "yyyy-mm-dd") & """,""" & _
            students(i).grade & """,""" & _
            students(i).slmc & """,""" & _
            students(i).medium & """,""" & _
            tmpSchoolId & """,""" & _
            tmpAppId & """)" 'dynamic sql generated for each student
        If sendRecords(1, 3) = True Then
        Else
            MsgBox "Error: A Student wasn't sent into database!", vbCritical
        End If
    Next
    MsgBox "Info: The application number is " & tmpAppId, vbInformation
    refresh_form
Else
    MsgBox "Error: Application wasn't sent into database!", vbCritical
    
End If
End Sub

Private Sub Form_Load()
ReDim students(0)
GetLocation Me
With lstStud
    .View = lvwReport ' make listview looks like report view
    .ColumnHeaders.Clear ' Clear header
    .ColumnHeaders.Add , , "Name", lstStud.width * 0.4, lvwColumnLeft ' Add header name n width
    .ColumnHeaders.Add , , "Gender", lstStud.width * 0.1, lvwColumnCenter ' Add header name n width
    .ColumnHeaders.Add , , "DoB", lstStud.width * 0.2, lvwColumnCenter ' Add header name n width
    .ColumnHeaders.Add , , "Grade", lstStud.width * 0.1, lvwColumnCenter ' Add header name n width
    .ColumnHeaders.Add , , "Exam", lstStud.width * 0.1, lvwColumnCenter ' Add header name n width
    .ColumnHeaders.Add , , "Medium", lstStud.width * 0.1, lvwColumnCenter ' Add header name n width
End With

dtDate.Value = Date

Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path + "\DATA\districts.dat" For Input As #tmpFile
tmpC = 1
Do Until EOF(tmpFile)
    Line Input #tmpFile, tmpLine 'MADE AN UPDATE
    cmbPrefDis.AddItem tmpC & ". " & tmpLine 'the same file is used to upload the districts to db, so assuming they are tallied when being used!
    tmpC = tmpC + 1
Loop
Close #tmpFile
End Sub

Private Sub Form_Resize()
ResizeControls Me
With lstStud
    .View = lvwReport ' make listview looks like report view
    .ColumnHeaders.Clear ' Clear header
    .ColumnHeaders.Add , , "Name", lstStud.width * 0.4, lvwColumnLeft ' Add header name n width
    .ColumnHeaders.Add , , "Gender", lstStud.width * 0.1, lvwColumnCenter ' Add header name n width
    .ColumnHeaders.Add , , "DoB", lstStud.width * 0.2, lvwColumnCenter ' Add header name n width
    .ColumnHeaders.Add , , "Grade", lstStud.width * 0.1, lvwColumnCenter ' Add header name n width
    .ColumnHeaders.Add , , "Exam", lstStud.width * 0.1, lvwColumnCenter ' Add header name n width
    .ColumnHeaders.Add , , "Medium", lstStud.width * 0.1, lvwColumnCenter ' Add header name n width
End With
End Sub

Private Sub cmbPay_Click()
If cmbPay.Text = "Bank" Then
txtPay.Text = "------"
txtPay.Locked = True
Else
If cmbPay.Text = "eZCash" Then
txtPay.Text = ""
txtPay.Locked = False
End If
End If
End Sub

Private Sub cmdNew_Click()
frmStudent.Show
End Sub

Private Sub cmdDel_Click()
If Not (lstStud.SelectedItem Is Nothing) Then 'if list is not selected then don't consider..
    For i = (lstStud.SelectedItem.Index) To (UBound(students) - 1)
        students(i) = students(i + 1)
    Next
    ReDim Preserve students(UBound(students) - 1)
End If
Refresh_Student_List
End Sub

Private Sub cmdSubmit_Click()
If scholOK = False Then Exit Sub
sql(1) = "SELECT id FROM teacher WHERE schoolId=""" & txtCens.Text & """"
If getRecords(1, 1, 1) = True Then
    MsgBox "Warning: " & txtSName.Text & " has duplicates!", vbCritical
    frmDuplicateCheck.Show
    frmDuplicateCheck.Load_School txtCens.Text, "STAND"
    closeRecords (1)
Else
    send_data
End If
End Sub
Private Sub txtCens_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then
    sql(1) = "SELECT name FROM school WHERE id=""" & txtCens.Text & """"
    If getRecords(1, 1, 1) = True Then
        txtSName.Text = records(1).Fields(0)  'school name
        closeRecords (1)
        scholOK = True
        txtSAddress.SetFocus
        MsgBox "Info: School found!", vbInformation
    Else
        txtSName.Text = "School not found!"
        scholOK = False
        txtSName.SetFocus
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
