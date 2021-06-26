VERSION 5.00
Begin VB.Form frmCategoryMan 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Category Manager"
   ClientHeight    =   6210
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   13890
   Icon            =   "frmCategoryMan.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6210
   ScaleWidth      =   13890
   StartUpPosition =   2  'CenterScreen
   Begin VB.ListBox liProd 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   2010
      ItemData        =   "frmCategoryMan.frx":7D32
      Left            =   6840
      List            =   "frmCategoryMan.frx":7D39
      TabIndex        =   8
      Top             =   3960
      Width           =   6615
   End
   Begin VB.ComboBox cmbCat 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   510
      ItemData        =   "frmCategoryMan.frx":7D45
      Left            =   6840
      List            =   "frmCategoryMan.frx":7D47
      TabIndex        =   7
      Text            =   "Category Name"
      Top             =   480
      Width           =   6735
   End
   Begin VB.ListBox liAllCat 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   2010
      ItemData        =   "frmCategoryMan.frx":7D49
      Left            =   120
      List            =   "frmCategoryMan.frx":7D50
      TabIndex        =   6
      Top             =   3960
      Width           =   6615
   End
   Begin VB.CommandButton cmdAdd 
      BackColor       =   &H80000002&
      Caption         =   "Categorize"
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
      Left            =   6840
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1080
      Width           =   1695
   End
   Begin VB.ListBox liUncat 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   2790
      ItemData        =   "frmCategoryMan.frx":7D5E
      Left            =   120
      List            =   "frmCategoryMan.frx":7D65
      TabIndex        =   2
      Top             =   480
      Width           =   6615
   End
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
      Left            =   13440
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   3960
      Width           =   375
   End
   Begin VB.Label lbl2 
      BackStyle       =   0  'Transparent
      Caption         =   "All Categories"
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
      TabIndex        =   5
      Top             =   3480
      Width           =   3015
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Products under Category :"
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
      Left            =   6840
      TabIndex        =   4
      Top             =   3480
      Width           =   3015
   End
   Begin VB.Label lbl1 
      BackStyle       =   0  'Transparent
      Caption         =   "Uncategorized Products :"
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
      Top             =   0
      Width           =   3015
   End
End
Attribute VB_Name = "frmCategoryMan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private allCat() As category
Private catProd() As category ' we'll use the same type for something different
Private uncatProd() As category ' we'll use the same type for something different

Sub Load_Database()
cmbCat.Clear
liUncat.Clear
liAllCat.Clear
liProd.Clear

sql(1) = "SELECT * FROM prod_name WHERE catId IS NULL"
sql(2) = "SELECT * FROM prod_category"

If getRecords(1, 1, 1) = True Then
    ReDim uncatProd(records(1).RecordCount)
    tmpC = 1
    Do Until records(1).EOF
        uncatProd(tmpC).id = records(1).Fields(0)
        uncatProd(tmpC).name = records(1).Fields(1)
        liUncat.AddItem records(1).Fields(1) & " - " & records(1).Fields(2)
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If
If getRecords(1, 2, 1) = True Then
    ReDim allCat(records(1).RecordCount)
    tmpC = 1
    Do Until records(1).EOF
        allCat(tmpC).id = records(1).Fields(0)
        allCat(tmpC).name = records(1).Fields(1)
        liAllCat.AddItem allCat(tmpC).name
        cmbCat.AddItem allCat(tmpC).name
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If

cmbCat.Text = "Select Category"

End Sub

Private Sub Form_Load()
Load_Database
End Sub

Private Sub Form_Unload(Cancel As Integer)
frmDash.Initialize_Dash
frmDash.Show
End Sub

Private Sub cmdAdd_Click()
If cmbCat.Text = "Select Category" Then Exit Sub ' basic check to makesure :)
    sql(1) = "INSERT INTO prod_category(name) VALUES('" & cmbCat.Text & "')"
    sql(2) = "SELECT LAST_INSERT_ID()"
    If liUncat.ListIndex > -1 Then
    If MsgBox("Add " & liUncat.Text & " to " & cmbCat.Text & " ?", vbYesNo) = vbYes Then
        If cmbCat.ListIndex < 0 Then
            If sendRecords(1, 1) = True Then
                If getRecords(1, 2, 1) = True Then
                tmpCatId = records(1).Fields(0)
                closeRecords (1)
                End If
            End If
            sql(4) = "UPDATE prod_name SET catId=" & tmpCatId & " WHERE id=" & uncatProd(liUncat.ListIndex + 1).id
            If sendRecords(1, 4) = True Then
            End If
        Else
            sql(3) = "UPDATE prod_name SET catId=" & allCat(cmbCat.ListIndex + 1).id & " WHERE id=" & uncatProd(liUncat.ListIndex + 1).id
            If sendRecords(1, 3) = True Then
            End If
        End If
    End If
End If
Load_Database
End Sub

Private Sub liAllCat_Click()
liProd.Clear
'should load the products that belong to that category
sql(1) = "SELECT * FROM prod_name WHERE catId='" & allCat(liAllCat.ListIndex + 1).id & "'"
If getRecords(1, 1, 1) = True Then
    ReDim catProd(records(1).RecordCount)
    tmpC = 1
    Do Until records(1).EOF
        catProd(tmpC).id = records(1).Fields(0)
        catProd(tmpC).name = records(1).Fields(1)
        liProd.AddItem catProd(tmpC).name
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If
End Sub

Private Sub cmdDel_Click()
If liProd.ListIndex > -1 And liAllCat.ListIndex > -1 Then
    sql(1) = "UPDATE prod_name SET catId=NULL WHERE id=" & catProd(liProd.ListIndex + 1).id
    If MsgBox("Delete " & liProd.Text & " from " & liAllCat.Text & " ?", vbYesNo) = vbYes Then
            If sendRecords(1, 1) = True Then
            End If
    End If
End If
Load_Database
End Sub
