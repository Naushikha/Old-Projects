VERSION 5.00
Begin VB.Form frmCustomTi 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Select Critical Products"
   ClientHeight    =   4080
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6060
   Icon            =   "frmCustomTi.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4080
   ScaleWidth      =   6060
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdDel 
      BackColor       =   &H80000002&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5640
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   480
      Width           =   375
   End
   Begin VB.CommandButton cmdSave 
      BackColor       =   &H80000002&
      Caption         =   "Save Settings"
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
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   3480
      Width           =   2055
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
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   3480
      Width           =   735
   End
   Begin VB.TextBox txtMin 
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
      ForeColor       =   &H00808000&
      Height          =   345
      Left            =   1920
      TabIndex        =   5
      Top             =   3480
      Width           =   615
   End
   Begin VB.ListBox liProd 
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
      Height          =   1095
      Left            =   840
      TabIndex        =   4
      Top             =   2160
      Width           =   4695
   End
   Begin VB.ListBox liCurr 
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
      Height          =   1095
      Left            =   840
      TabIndex        =   3
      Top             =   480
      Width           =   4695
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Minimum quantity :"
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
      Left            =   0
      TabIndex        =   2
      Top             =   3480
      Width           =   3015
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Select new critical products"
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
      Left            =   0
      TabIndex        =   1
      Top             =   1800
      Width           =   3015
   End
   Begin VB.Label lbl2 
      BackStyle       =   0  'Transparent
      Caption         =   "Current Critical Products with their minimums"
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
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   4815
   End
End
Attribute VB_Name = "frmCustomTi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'using nsproduct to store some stuff :)
Private prod() As nsProduct '0th element in the array denotes the array is empty, it's basically unused space !
Private allProd() As nsProduct
Sub Load_Data()
ReDim Preserve prod(0) 'some initialization to prevent from shit getting outta hand
ReDim Preserve allProd(0)
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\CustomTicketInfo.dat" For Input As #tmpFile
tmpC = 1
Do Until EOF(tmpFile)
    Line Input #tmpFile, tmpLine
    If tmpLine = "0" Then GoTo CustomSkip
    ReDim Preserve prod(tmpC)
    tmpData = Split(tmpLine, ",") ' 0 is the prodid, 1 is the min quantity that should be present
    sql(1) = "SELECT name FROM prod_name WHERE id=" & tmpData(0)
    If getRecords(1, 1, 1) = True Then
        prod(tmpC).id = tmpData(0)
        prod(tmpC).name = records(1).Fields(0)
        prod(tmpC).quantity = tmpData(1)
        closeRecords (1)
    End If
    tmpC = tmpC + 1
Loop
CustomSkip:
Close #tmpFile

sql(1) = "SELECT id,name FROM prod_name"
If getRecords(1, 1, 1) = True Then
    tmpC = 1
    Do Until records(1).EOF
        ReDim Preserve allProd(tmpC)
        allProd(tmpC).id = records(1).Fields(0)
        allProd(tmpC).name = records(1).Fields(1)
        records(1).MoveNext
        tmpC = tmpC + 1
    Loop
    closeRecords (1)
End If

Refresh_Prod_List
Refresh_All_Prod_List
End Sub

Sub Refresh_Prod_List()
liCurr.Clear
For i = 1 To UBound(prod)
        liCurr.AddItem (prod(i).name & " - " & prod(i).quantity)
Next
End Sub

Sub Refresh_All_Prod_List()
liProd.Clear
For i = 1 To UBound(allProd)
        liProd.AddItem allProd(i).name
Next
End Sub

Private Sub Form_Load()
Load_Data
End Sub

Private Sub Form_Unload(Cancel As Integer)
frmDash.Initialize_Dash
frmDash.Show
End Sub

Private Sub cmdAdd_Click()
If Not (IsNumeric(txtMin.Text)) Then Exit Sub
If liProd.ListIndex > -1 And Int(txtMin.Text) > 0 Then
    ReDim Preserve prod(UBound(prod) + 1)
    prod(UBound(prod)).id = allProd(liProd.ListIndex + 1).id
    prod(UBound(prod)).name = allProd(liProd.ListIndex + 1).name
    prod(UBound(prod)).quantity = txtMin.Text
    Refresh_Prod_List
End If
End Sub

Private Sub cmdDel_Click()
If liCurr.ListIndex > -1 Then 'if list is not selected then don't consider..
    For i = (liCurr.ListIndex + 1) To (UBound(prod) - 1)
        prod(i) = prod(i + 1)
    Next
    ReDim Preserve prod(UBound(prod) - 1)
End If
Refresh_Prod_List
End Sub

Private Sub cmdSave_Click()
tmpString = ""
For i = 1 To UBound(prod)
        If i = 1 Then
            tmpString = tmpString & prod(i).id & "," & prod(i).quantity
        Else
            tmpString = tmpString & vbNewLine & prod(i).id & "," & prod(i).quantity  'newline might be a problem at the beginning
        End If
Next
If UBound(prod) = 0 Then tmpString = "0"
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\CustomTicketInfo.dat" For Output As #tmpFile
Print #tmpFile, tmpString
Close #tmpFile

Me.Hide
MsgBox "Custom ticket settings have been updated !"
Unload Me
End Sub
