VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "mscomctl.ocx"
Begin VB.Form frmDuplicateCheck 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Duplicate Application Viewer"
   ClientHeight    =   6210
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   11055
   Icon            =   "frmDuplicateCheck.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6210
   ScaleWidth      =   11055
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdCont 
      BackColor       =   &H80000002&
      Caption         =   "Discard Warning && Continue"
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
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   5760
      Width           =   3615
   End
   Begin VB.CommandButton cmdNew 
      BackColor       =   &H80000002&
      Caption         =   "New Application"
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
      Left            =   8880
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   5760
      Width           =   2055
   End
   Begin VB.ListBox liAllDup 
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
      Height          =   1785
      ItemData        =   "frmDuplicateCheck.frx":7D32
      Left            =   120
      List            =   "frmDuplicateCheck.frx":7D39
      TabIndex        =   2
      Top             =   480
      Width           =   10815
   End
   Begin MSComctlLib.ListView lstStud 
      Height          =   2775
      Left            =   120
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   2880
      Width           =   10695
      _ExtentX        =   18865
      _ExtentY        =   4895
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
   Begin VB.Label lbl2 
      BackStyle       =   0  'Transparent
      Caption         =   "All Duplicates :"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   0
      Width           =   3015
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Students under duplicate :"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   2400
      Width           =   3015
   End
End
Attribute VB_Name = "frmDuplicateCheck"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private teachers() As teacher
Private students() As student
Dim entryMode As String

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

Private Sub cmdCont_Click()
If MsgBox("The current application will be added to the database, continue?", vbYesNo) = vbYes Then
    If entryMode = "STAND" Then
    frmApplication.Show
    frmApplication.send_data
    Unload Me
    End If
    If entryMode = "BASIC" Then
    frmBasApplication.Show
    frmBasApplication.send_data
    Unload Me
    End If
End If
End Sub

Private Sub cmdNew_Click()
If entryMode = "STAND" Then
    frmApplication.Show
    frmApplication.refresh_form
    Unload Me
End If
If entryMode = "BASIC" Then
    frmBasApplication.Show
    frmBasApplication.refresh_form
    Unload Me
End If
End Sub

Private Sub Form_Load()
ReDim teachers(0)
ReDim students(0)
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
Sub Load_School(censusNo As String, entryM As String)
entryMode = entryM
liAllDup.Clear
sql(1) = "SELECT id,appMethod,telephone,numStud,user,recvDate FROM teacher WHERE schoolId=""" & censusNo & """"
If getRecords(1, 1, 1) = True Then
    ReDim Preserve teachers(records(1).RecordCount)
    tmpC = 1
    Do Until records(1).EOF
        teachers(tmpC).id = records(1).Fields(0)
        teachers(tmpC).appMethod = records(1).Fields(1)
        teachers(tmpC).telephone = records(1).Fields(2)
        teachers(tmpC).numStud = records(1).Fields(3)
        teachers(tmpC).user = records(1).Fields(4)
        teachers(tmpC).recvDate = records(1).Fields(5)
        Select Case teachers(tmpC).appMethod
        Case Is = "PST"
            tmpLine = "By Post"
        Case Is = "FAX"
            tmpLine = "By Fax"
        Case Is = "EML"
            tmpLine = "By E-Mail"
        Case Is = "WAP"
            tmpLine = "By WhatsApp"
        End Select
        tmpString = "AppNo. " & teachers(tmpC).id & " - " & _
                    tmpLine & ", recvd. on " & teachers(tmpC).recvDate & " - " & _
                    teachers(tmpC).telephone & " - " & _
                    teachers(tmpC).numStud & " student/s - " & _
                    "Added by " & teachers(tmpC).user
        liAllDup.AddItem tmpString
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
Else
    MsgBox "Error: Couldn't access database!", vbCritical
End If
End Sub

Private Sub liAllDup_Click()

sql(1) = "SELECT id,name,gender,dob,grade,slmc,medium FROM student WHERE teacherId=""" & teachers(liAllDup.ListIndex + 1).id & """"
If getRecords(1, 1, 1) = True Then
    ReDim Preserve students(records(1).RecordCount)
    tmpC = 1
    Do Until records(1).EOF
        students(tmpC).id = records(1).Fields(0)
        students(tmpC).name = records(1).Fields(1)
        students(tmpC).gender = records(1).Fields(2)
        students(tmpC).dob = records(1).Fields(3)
        students(tmpC).grade = records(1).Fields(4)
        students(tmpC).slmc = records(1).Fields(5)
        students(tmpC).medium = records(1).Fields(6)
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
Else
    MsgBox "Error: Couldn't access database!", vbCritical
End If
Refresh_Student_List
End Sub
