VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmStudent 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Add New Student"
   ClientHeight    =   4095
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5895
   Icon            =   "frmStudent.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4095
   ScaleWidth      =   5895
   StartUpPosition =   2  'CenterScreen
   Begin VB.ComboBox cmbGrade 
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
      ItemData        =   "frmStudent.frx":10CA
      Left            =   2400
      List            =   "frmStudent.frx":10CC
      TabIndex        =   3
      Text            =   "Select Grade"
      Top             =   1800
      Width           =   3375
   End
   Begin VB.ComboBox cmbExam 
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
      ItemData        =   "frmStudent.frx":10CE
      Left            =   2400
      List            =   "frmStudent.frx":10D0
      TabIndex        =   4
      Text            =   "Select Exam"
      Top             =   2520
      Width           =   3375
   End
   Begin VB.ComboBox cmbMed 
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
      ItemData        =   "frmStudent.frx":10D2
      Left            =   2400
      List            =   "frmStudent.frx":10DF
      TabIndex        =   5
      Text            =   "Select Medium"
      Top             =   3120
      Width           =   3375
   End
   Begin VB.ComboBox cmbCat 
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
      ItemData        =   "frmStudent.frx":10FC
      Left            =   2400
      List            =   "frmStudent.frx":1106
      TabIndex        =   1
      Text            =   "Select Gender"
      Top             =   720
      Width           =   3375
   End
   Begin VB.TextBox txtName 
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
      Left            =   2400
      MaxLength       =   50
      TabIndex        =   0
      Top             =   240
      Width           =   3375
   End
   Begin VB.CommandButton cmdAdd 
      BackColor       =   &H80000002&
      Caption         =   "Add"
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
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   3720
      Width           =   1695
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H80000002&
      Caption         =   "Cancel"
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
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   3720
      Width           =   1335
   End
   Begin MSComCtl2.DTPicker dtDate 
      Height          =   375
      Left            =   2400
      TabIndex        =   2
      Top             =   1320
      Width           =   3375
      _ExtentX        =   5953
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
      Format          =   121634819
      CurrentDate     =   38718
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Medium "
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
      Height          =   375
      Left            =   120
      TabIndex        =   13
      Top             =   3120
      Width           =   3015
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Selected Exams"
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
      Height          =   375
      Left            =   120
      TabIndex        =   12
      Top             =   2400
      Width           =   3015
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Grade"
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
      Height          =   375
      Left            =   120
      TabIndex        =   11
      Top             =   1800
      Width           =   3015
   End
   Begin VB.Label lbl2 
      BackStyle       =   0  'Transparent
      Caption         =   "Name* :"
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
      Height          =   375
      Left            =   120
      TabIndex        =   10
      Top             =   240
      Width           =   3015
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Gender :"
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
      Height          =   375
      Left            =   120
      TabIndex        =   9
      Top             =   720
      Width           =   3015
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Date of Birth"
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
      Height          =   375
      Left            =   120
      TabIndex        =   8
      Top             =   1320
      Width           =   3015
   End
End
Attribute VB_Name = "frmStudent"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdAdd_Click()
Dim tmpName As String
Dim tmpGender As String
Dim tmpDOB As Date
Dim tmpGrade As String
Dim tmpExam As String
Dim tmpMedium As String
On Error GoTo Handler
If check_data(txtName.Text, 50) = False Then Exit Sub
tmpName = txtName.Text

If cmbCat.Text = "Male" Then
    tmpGender = "M"
Else
If cmbCat.Text = "Female" Then
    tmpGender = "F"
Else
    MsgBox "Error: Unsupported input for gender!", vbCritical
    Exit Sub
End If
End If

tmpDOB = dtDate.Year & "-" & dtDate.Month & "-" & dtDate.Day

If Int(cmbGrade.Text) < 6 Or Int(cmbGrade.Text) > 13 Then
    MsgBox "Error: Unsupported input for grade!", vbCritical
    Exit Sub
Else
    tmpGrade = cmbGrade.Text
End If

If cmbExam.Text = "SLMC8" Then
    tmpExam = "1"
Else
    If cmbExam.Text = "SLMC11" Then
    tmpExam = "2"
Else
    If cmbExam.Text = "SLMC13" Then
    tmpExam = "3"
Else
    MsgBox "Error: Unsupported input for exam!", vbCritical
    Exit Sub
End If
End If
End If

If cmbMed.Text = "Sinhala" Then
    tmpMedium = "S"
Else
    If cmbMed.Text = "Tamil" Then
    tmpMedium = "T"
Else
    If cmbMed.Text = "English" Then
    tmpMedium = "E"
Else
    MsgBox "Error: Unsupported input for medium!", vbCritical
    Exit Sub
End If
End If
End If

frmApplication.Add_Student tmpName, tmpGender, tmpDOB, tmpGrade, tmpExam, tmpMedium
txtName.Text = ""
Me.Hide

Exit Sub
Handler:
MsgBox "An error occured!", vbCritical
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub

Private Sub Form_Activate()
txtName.SetFocus
End Sub

Private Sub Form_Load()
cmbGrade.AddItem "6"
cmbGrade.AddItem "7"
cmbGrade.AddItem "8"
cmbGrade.AddItem "9"
cmbGrade.AddItem "10"
cmbGrade.AddItem "11"
cmbGrade.AddItem "12"
cmbGrade.AddItem "13"
cmbExam.AddItem "SLMC8"
cmbExam.AddItem "SLMC11"
cmbExam.AddItem "SLMC13"
End Sub

