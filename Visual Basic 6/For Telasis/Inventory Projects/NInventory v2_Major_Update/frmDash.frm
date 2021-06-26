VERSION 5.00
Begin VB.Form frmDash 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Inventory Dashboard"
   ClientHeight    =   6330
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   12090
   Icon            =   "frmDash.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6330
   ScaleWidth      =   12090
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame frmProd 
      BackColor       =   &H80000003&
      Caption         =   "Category A"
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
      Height          =   4695
      Left            =   3360
      TabIndex        =   23
      Top             =   1560
      Visible         =   0   'False
      Width           =   5175
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
         Height          =   4200
         Left            =   120
         TabIndex        =   24
         ToolTipText     =   "Double click to enlarge text."
         Top             =   360
         Width           =   4935
      End
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H80000003&
      Caption         =   "Info"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   975
      Left            =   2760
      TabIndex        =   2
      Top             =   0
      Width           =   6375
      Begin VB.ListBox liInfo 
         BackColor       =   &H80000003&
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   630
         Left            =   120
         TabIndex        =   25
         ToolTipText     =   "Click here and press C to adjust settings. Double click to enlarge selected text."
         Top             =   240
         Width           =   6135
      End
   End
   Begin VB.Frame frmCat 
      BackColor       =   &H80000003&
      Caption         =   "Categories"
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
      Height          =   4455
      Left            =   120
      TabIndex        =   1
      Top             =   1680
      Width           =   11895
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   19
         Left            =   9360
         MouseIcon       =   "frmDash.frx":7D32
         MousePointer    =   99  'Custom
         TabIndex        =   22
         Top             =   3240
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   18
         Left            =   9360
         MouseIcon       =   "frmDash.frx":803C
         MousePointer    =   99  'Custom
         TabIndex        =   21
         Top             =   2280
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   17
         Left            =   9360
         MouseIcon       =   "frmDash.frx":8346
         MousePointer    =   99  'Custom
         TabIndex        =   20
         Top             =   1320
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   16
         Left            =   9360
         MouseIcon       =   "frmDash.frx":8650
         MousePointer    =   99  'Custom
         TabIndex        =   19
         Top             =   360
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   15
         Left            =   7080
         MouseIcon       =   "frmDash.frx":895A
         MousePointer    =   99  'Custom
         TabIndex        =   18
         Top             =   3240
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   14
         Left            =   7080
         MouseIcon       =   "frmDash.frx":8C64
         MousePointer    =   99  'Custom
         TabIndex        =   17
         Top             =   2280
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   13
         Left            =   7080
         MouseIcon       =   "frmDash.frx":8F6E
         MousePointer    =   99  'Custom
         TabIndex        =   16
         Top             =   1320
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   12
         Left            =   7080
         MouseIcon       =   "frmDash.frx":9278
         MousePointer    =   99  'Custom
         TabIndex        =   15
         Top             =   360
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   11
         Left            =   4800
         MouseIcon       =   "frmDash.frx":9582
         MousePointer    =   99  'Custom
         TabIndex        =   14
         Top             =   3240
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   10
         Left            =   4800
         MouseIcon       =   "frmDash.frx":988C
         MousePointer    =   99  'Custom
         TabIndex        =   13
         Top             =   2280
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   9
         Left            =   4800
         MouseIcon       =   "frmDash.frx":9B96
         MousePointer    =   99  'Custom
         TabIndex        =   12
         Top             =   1320
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   8
         Left            =   4800
         MouseIcon       =   "frmDash.frx":9EA0
         MousePointer    =   99  'Custom
         TabIndex        =   11
         Top             =   360
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   7
         Left            =   2520
         MouseIcon       =   "frmDash.frx":A1AA
         MousePointer    =   99  'Custom
         TabIndex        =   10
         Top             =   3240
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   6
         Left            =   2520
         MouseIcon       =   "frmDash.frx":A4B4
         MousePointer    =   99  'Custom
         TabIndex        =   9
         Top             =   2280
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   5
         Left            =   2520
         MouseIcon       =   "frmDash.frx":A7BE
         MousePointer    =   99  'Custom
         TabIndex        =   8
         Top             =   1320
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   4
         Left            =   2520
         MouseIcon       =   "frmDash.frx":AAC8
         MousePointer    =   99  'Custom
         TabIndex        =   7
         Top             =   360
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   3
         Left            =   360
         MouseIcon       =   "frmDash.frx":ADD2
         MousePointer    =   99  'Custom
         TabIndex        =   6
         Top             =   3240
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   2
         Left            =   360
         MouseIcon       =   "frmDash.frx":B0DC
         MousePointer    =   99  'Custom
         TabIndex        =   5
         Top             =   2280
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   1
         Left            =   360
         MouseIcon       =   "frmDash.frx":B3E6
         MousePointer    =   99  'Custom
         TabIndex        =   4
         Top             =   1320
         Visible         =   0   'False
         Width           =   1320
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Index           =   0
         Left            =   360
         MouseIcon       =   "frmDash.frx":B6F0
         MousePointer    =   99  'Custom
         TabIndex        =   3
         Top             =   360
         Visible         =   0   'False
         Width           =   1320
      End
   End
   Begin VB.Image cmdCategory 
      Height          =   735
      Left            =   9480
      MouseIcon       =   "frmDash.frx":B9FA
      MousePointer    =   99  'Custom
      Picture         =   "frmDash.frx":BD04
      Stretch         =   -1  'True
      ToolTipText     =   "Category Manager"
      Top             =   720
      Width           =   735
   End
   Begin VB.Image cmdSell 
      Height          =   495
      Left            =   11160
      MouseIcon       =   "frmDash.frx":FFFD
      MousePointer    =   99  'Custom
      Picture         =   "frmDash.frx":10307
      Stretch         =   -1  'True
      ToolTipText     =   "Sell products"
      Top             =   840
      Width           =   495
   End
   Begin VB.Image cmdSearch 
      Height          =   495
      Left            =   9960
      MouseIcon       =   "frmDash.frx":1146B
      MousePointer    =   99  'Custom
      Picture         =   "frmDash.frx":11775
      Stretch         =   -1  'True
      ToolTipText     =   "Search database"
      Top             =   120
      Width           =   495
   End
   Begin VB.Image cmdPurchase 
      Height          =   495
      Left            =   10440
      MouseIcon       =   "frmDash.frx":14257
      MousePointer    =   99  'Custom
      Picture         =   "frmDash.frx":14561
      Stretch         =   -1  'True
      ToolTipText     =   "Purchase products"
      Top             =   840
      Width           =   495
   End
   Begin VB.Image cmdLOut 
      Height          =   495
      Left            =   11400
      MouseIcon       =   "frmDash.frx":168BA
      MousePointer    =   99  'Custom
      Picture         =   "frmDash.frx":16BC4
      Stretch         =   -1  'True
      ToolTipText     =   "Log out"
      Top             =   120
      Width           =   495
   End
   Begin VB.Image cmdSettings 
      Height          =   495
      Left            =   10680
      MouseIcon       =   "frmDash.frx":18B15
      MousePointer    =   99  'Custom
      Picture         =   "frmDash.frx":18E1F
      Stretch         =   -1  'True
      ToolTipText     =   "Settings"
      Top             =   120
      Width           =   495
   End
   Begin VB.Image cmdReport 
      Height          =   495
      Left            =   9240
      MouseIcon       =   "frmDash.frx":1B3E9
      MousePointer    =   99  'Custom
      Picture         =   "frmDash.frx":1B6F3
      Stretch         =   -1  'True
      ToolTipText     =   "Reports"
      Top             =   120
      Width           =   495
   End
   Begin VB.Image imgLogo 
      Height          =   1065
      Left            =   120
      Picture         =   "frmDash.frx":1E279
      Stretch         =   -1  'True
      Top             =   0
      Width           =   2415
   End
   Begin VB.Label lblWelcome 
      BackStyle       =   0  'Transparent
      Caption         =   "Welcome, User !"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   1080
      Width           =   6855
   End
End
Attribute VB_Name = "frmDash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private highlightStat As Boolean
Private allCat() As category
Sub Initialize_Dash()
logStat = False
liInfo.Clear

For i = 0 To 19
    lbl(i).Visible = False
Next
sql(1) = "SELECT * FROM prod_category"

Load_Categories:
If getRecords(1, 1, 1) = True Then
    ReDim allCat(records(1).RecordCount)
    tmpC = 1
    Do Until records(1).EOF
        If tmpC > 20 Then Exit Do
        allCat(tmpC).id = records(1).Fields(0)
        allCat(tmpC).name = records(1).Fields(1)
        lbl(tmpC - 1).Caption = allCat(tmpC).name
        lbl(tmpC - 1).Visible = True
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If

Check_Info:
'We need to check the uncategorized products and raise a ticket for that
sql(1) = "SELECT COUNT(id) FROM prod_name WHERE catId IS NULL"
If getRecords(1, 1, 1) = True Then
    If Int(records(1).Fields(0)) > 0 Then
        liInfo.AddItem "( ! ) " & records(1).Fields(0) & " uncategorized product/s in stock."
    End If
    closeRecords (1)
End If



'Show warning if products are less than a said amount for certain selected products, loaded from a file CustomTicketInfo.dat
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\CustomTicketInfo.dat" For Input As #tmpFile
Do Until EOF(tmpFile)
    Line Input #tmpFile, tmpLine
    If tmpLine = "0" Then GoTo CustomSkip ' stuck on fetching data otherwise ?
    tmpData = Split(tmpLine, ",") ' 0 is the prodid, 1 is the min quantity that should be present
    sql(1) = "SELECT type,name FROM prod_name WHERE id=" & tmpData(0)
    If getRecords(1, 1, 1) = True Then
        If records(1).Fields(0) = "NS" Then
            sql(2) = "SELECT quantity FROM nsproduct WHERE pnId=" & tmpData(0)
            If getRecords(1, 2, 2) = True Then
                If Int(records(2).Fields(0)) < Int(tmpData(1)) Then
                    liInfo.AddItem "( ! ) Only " & records(2).Fields(0) & " " & records(1).Fields(1) & "/s available in stock!"
                End If
                closeRecords (2)
            End If
        Else
            If records(1).Fields(0) = "S" Then
                sql(2) = "SELECT COUNT(id) FROM sproduct WHERE pnId=" & tmpData(0) & " AND customerId IS NULL"
                If getRecords(1, 2, 2) = True Then
                    If Int(records(2).Fields(0)) < Int(tmpData(1)) Then
                        liInfo.AddItem "( ! ) Only " & records(2).Fields(0) & " " & records(1).Fields(1) & "/s available in stock!"
                    End If
                    closeRecords (2)
                End If
            End If
        End If
        closeRecords (1)
    End If
Loop
CustomSkip:
Close #tmpFile

If liInfo.ListCount = 0 Then
    liInfo.AddItem "( + ) You are all caught up! :)"
End If
End Sub

Private Sub Form_Load()
lblWelcome.Caption = "Welcome, " & username & " !"
Initialize_Dash
End Sub

Private Sub Form_Unload(Cancel As Integer)
If logStat = False Then
    disconnectDB (1)
    End
End If
End Sub

Private Sub lbl_Click(Index As Integer)
liProd.Clear
frmProd.Visible = True
frmProd.Caption = lbl(Index).Caption
sql(1) = "SELECT id,type,name FROM prod_name WHERE catId=" & allCat(Index + 1).id
If getRecords(1, 1, 1) = True Then
    tmpC = 1
    Do Until records(1).EOF
        If records(1).Fields(1) = "NS" Then
            sql(2) = "SELECT quantity FROM nsproduct WHERE pnId=" & records(1).Fields(0)
            If getRecords(1, 2, 2) = True Then
                liProd.AddItem (records(1).Fields(2) & " - " & records(2).Fields(0))
                closeRecords (2)
            End If
        Else
        If records(1).Fields(1) = "S" Then
            sql(3) = "SELECT COUNT(id) FROM sproduct WHERE pnId=" & records(1).Fields(0) & " AND customerId IS NULL"
            If getRecords(1, 3, 2) = True Then
                liProd.AddItem (records(1).Fields(2) & " - " & records(2).Fields(0))
                closeRecords (2)
            End If
        End If
        End If
        'allCat(tmpC).name = records(1).Fields(1)
        'lbl(tmpC - 1).Caption = allCat(tmpC).name
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If

End Sub





Private Sub liInfo_DblClick()
MsgBox liInfo.Text
End Sub

Private Sub liInfo_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyC Then
frmCustomTi.Show
End If
End Sub

Private Sub liProd_DblClick()
MsgBox liProd.Text
End Sub

Private Sub liProd_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape And frmProd.Visible = True Then
    frmProd.Visible = False
End If
End Sub

Private Sub cmdCategory_Click()
frmCategoryMan.Show
End Sub

Private Sub cmdReport_Click()
frmReport.Show
End Sub

Private Sub cmdPurchase_Click()
frmPurchase.Show
End Sub

Private Sub cmdSell_Click()
frmSale.Show
End Sub

Private Sub cmdSearch_Click()
frmSearch.Show
End Sub

Private Sub cmdSettings_Click()
frmSettings.Show
End Sub

Private Sub cmdLOut_Click()
frmLogin.Show
logStat = True
Unload Me
End Sub

Private Sub cmdSearch_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdSearch.Picture = LoadPicture(App.Path + "\DATA\ICON\_search.jpg")
highlightStat = True
End Sub

Private Sub cmdReport_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdReport.Picture = LoadPicture(App.Path + "\DATA\ICON\_report.jpg")
highlightStat = True
End Sub

Private Sub cmdSettings_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdSettings.Picture = LoadPicture(App.Path + "\DATA\ICON\_settings.jpg")
highlightStat = True
End Sub

Private Sub cmdLOut_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdLOut.Picture = LoadPicture(App.Path + "\DATA\ICON\_logout.jpg")
highlightStat = True
End Sub

Private Sub cmdPurchase_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdPurchase.Picture = LoadPicture(App.Path + "\DATA\ICON\_purchase.jpg")
highlightStat = True
End Sub

Private Sub cmdSell_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdSell.Picture = LoadPicture(App.Path + "\DATA\ICON\_sale.jpg")
highlightStat = True
End Sub

Private Sub cmdCategory_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
cmdCategory.Picture = LoadPicture(App.Path + "\DATA\ICON\_category.jpg")
highlightStat = True
End Sub

Private Sub lbl_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
lbl(Index).ForeColor = &HFF8080
End Sub

Private Sub frmCat_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
For i = 0 To 19
    lbl(i).ForeColor = &H80000012
Next
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If highlightStat = True Then
    cmdSearch.Picture = LoadPicture(App.Path + "\DATA\ICON\search.jpg")
    cmdReport.Picture = LoadPicture(App.Path + "\DATA\ICON\report.jpg")
    cmdSettings.Picture = LoadPicture(App.Path + "\DATA\ICON\settings.jpg")
    cmdLOut.Picture = LoadPicture(App.Path + "\DATA\ICON\logout.jpg")
    cmdPurchase.Picture = LoadPicture(App.Path + "\DATA\ICON\purchase.jpg")
    cmdSell.Picture = LoadPicture(App.Path + "\DATA\ICON\sale.jpg")
    cmdCategory.Picture = LoadPicture(App.Path + "\DATA\ICON\category.jpg")
    highlightStat = False
End If
If frmProd.Visible = True Then
    frmProd.Visible = False
End If
End Sub
