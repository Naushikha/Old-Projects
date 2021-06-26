VERSION 5.00
Begin VB.Form frmCustomer 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "New Customer"
   ClientHeight    =   2310
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5865
   Icon            =   "frmCustomer.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2310
   ScaleWidth      =   5865
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtName 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   345
      Left            =   2400
      TabIndex        =   4
      Top             =   240
      Width           =   3375
   End
   Begin VB.TextBox txtAdd 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
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
   Begin VB.TextBox txtContact 
      BackColor       =   &H80000003&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   345
      Left            =   2400
      TabIndex        =   2
      Top             =   1200
      Width           =   3375
   End
   Begin VB.CommandButton cmdAdd 
      BackColor       =   &H80000002&
      Caption         =   "Add"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   4080
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1800
      Width           =   1695
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H80000002&
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1800
      Width           =   1335
   End
   Begin VB.Label lbl2 
      BackStyle       =   0  'Transparent
      Caption         =   "Name* :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   375
      Left            =   120
      TabIndex        =   7
      Top             =   240
      Width           =   3015
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Address :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   720
      Width           =   3015
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Contact number :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   1200
      Width           =   3015
   End
End
Attribute VB_Name = "frmCustomer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
Unload Me
End Sub
Private Sub cmdAdd_Click()
If txtName.Text = "" Then Exit Sub

On Error GoTo Handler
frmLoad.Show
mainConnect.Open
sql(0) = "INSERT INTO customer(name,address,telephone,user) VALUES('" & txtName.Text & "','" & txtAdd.Text & "','" & txtContact.Text & "','" & username & "')"
mainConnect.Execute sql(0)
mainConnect.Close
frmLoad.Hide
Load_Database
Unload Me

Exit Sub
Handler:
mainConnect.Close
frmLoad.Hide
MsgBox "Data out of bounds  !"
End Sub
Sub Load_Database()
frmSale.cmbCust.Clear
frmSale.cmbCust.Text = "Select Customer"
On Error GoTo Handler
frmLoad.Show
mainConnect.Open
Load_Customers:
records(0).Open "SELECT * FROM customer", mainConnect
If records(0).RecordCount = 0 Then GoTo Load_End
frmSale.update_Customer "redim", Str(records(0).RecordCount - 1), 0 'ReDim supplier(records(0).RecordCount - 1)
Dim tmpC As Integer
Do Until records(0).EOF
frmSale.update_Customer "set_id", Str(tmpC), records(0).fields(0) 'supplier(tmpC).id = records(0).fields(0)
frmSale.update_Customer "set_name", Str(tmpC), records(0).fields(1) 'supplier(tmpC).name = records(0).fields(1)
frmSale.update_Customer "add_sup", Str(tmpC), 0 'cmbSup.AddItem supplier(tmpC).name
tmpC = tmpC + 1
records(0).MoveNext
Loop

Load_End:
records(0).Close
mainConnect.Close
frmLoad.Hide
Exit Sub
Handler:
mainConnect.Close
frmLoad.Hide
MsgBox "Database is corrupted !"
End Sub

