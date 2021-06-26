VERSION 5.00
Begin VB.Form frmSupplier 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "New Supplier"
   ClientHeight    =   2325
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5865
   ForeColor       =   &H00808000&
   Icon            =   "frmSupplier.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2325
   ScaleWidth      =   5865
   StartUpPosition =   2  'CenterScreen
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
      Top             =   1800
      Width           =   1335
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
      Top             =   1800
      Width           =   1695
   End
   Begin VB.TextBox txtContact 
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
      ForeColor       =   &H00808000&
      Height          =   345
      Left            =   2400
      TabIndex        =   5
      Top             =   1200
      Width           =   3375
   End
   Begin VB.TextBox txtAdd 
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
      ForeColor       =   &H00808000&
      Height          =   345
      Left            =   2400
      TabIndex        =   3
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
      ForeColor       =   &H00808000&
      Height          =   345
      Left            =   2400
      TabIndex        =   1
      Top             =   240
      Width           =   3375
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Contact number         :"
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
      TabIndex        =   4
      Top             =   1200
      Width           =   3015
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Address                     :"
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
      TabIndex        =   2
      Top             =   720
      Width           =   3015
   End
   Begin VB.Label lbl2 
      BackStyle       =   0  'Transparent
      Caption         =   "Name*                        :"
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
      TabIndex        =   0
      Top             =   240
      Width           =   3015
   End
End
Attribute VB_Name = "frmSupplier"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Sub Load_Database()
frmPurchase.cmbSup.Clear
frmPurchase.cmbSup.Text = "Select Supplier"

sql(1) = "SELECT * FROM supplier"

Load_Suppliers:
If getRecords(1, 1, 1) = True Then
    frmPurchase.update_Supplier "redim", Str(records(1).RecordCount), 0 'ReDim supplier(records(0).RecordCount - 1)
    tmpC = 1
    Do Until records(1).EOF
        frmPurchase.update_Supplier "set_id", Str(tmpC), records(1).Fields(0) 'supplier(tmpC).id = records(0).fields(0)
        frmPurchase.update_Supplier "set_name", Str(tmpC), records(1).Fields(1) 'supplier(tmpC).name = records(0).fields(1)
        frmPurchase.update_Supplier "add_sup", Str(tmpC), 0 'cmbSup.AddItem supplier(tmpC).name
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If
End Sub

Private Sub cmdAdd_Click()
'data compatability check
If txtName.Text = "" Then
    MsgBox "Supplier needs to have a name !"
    Exit Sub
ElseIf Len(txtName) > 50 Then
    MsgBox "Supplier name is too long !"
    Exit Sub
End If
If Len(txtAdd) > 100 Then
    MsgBox "Supplier address is too long !"
    Exit Sub
End If
If InStr(txtContact, " ") Then
    MsgBox "Contact number cannot contain spaces !"
    Exit Sub
ElseIf Len(txtContact) > 10 Then
    MsgBox "Contact number has to be 10 numbers !" & vbCrLf & "e.g. - 0712345678"
    Exit Sub
End If


sql(1) = "INSERT INTO supplier(name,address,telephone,user) VALUES('" & txtName.Text & "','" & txtAdd.Text & "','" & txtContact.Text & "','" & username & "')"
If sendRecords(1, 1) = True Then 'this actually calls the function sendrecords
    Load_Database
    Unload Me
Else
    MsgBox "Data out of bounds  !"
End If
End Sub

Private Sub cmdCancel_Click()
Unload Me
End Sub
