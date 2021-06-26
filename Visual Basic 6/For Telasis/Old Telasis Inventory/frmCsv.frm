VERSION 5.00
Begin VB.Form frmCsv 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Generate CSV"
   ClientHeight    =   7410
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   14700
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7410
   ScaleWidth      =   14700
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdCsv 
      Caption         =   "Generate !"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   12120
      TabIndex        =   14
      Top             =   3960
      Width           =   2295
   End
   Begin VB.TextBox txtCom 
      Height          =   1575
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   9
      Top             =   5760
      Width           =   4095
   End
   Begin VB.TextBox txtAft 
      Height          =   2000
      Left            =   10320
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   8
      Top             =   5280
      Width           =   3000
   End
   Begin VB.TextBox txtImp 
      Height          =   2000
      Left            =   7320
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   7
      Top             =   5280
      Width           =   3000
   End
   Begin VB.TextBox txtBef 
      Height          =   2000
      Left            =   4275
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   6
      Top             =   5280
      Width           =   3000
   End
   Begin VB.ListBox liOut 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3060
      Left            =   6120
      TabIndex        =   1
      Top             =   600
      Width           =   5895
   End
   Begin VB.ListBox liIn 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3060
      ItemData        =   "frmCsv.frx":0000
      Left            =   120
      List            =   "frmCsv.frx":0002
      TabIndex        =   0
      Top             =   600
      Width           =   5895
   End
   Begin VB.Label Label5 
      Caption         =   "Purchases :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   13
      Top             =   120
      Width           =   3015
   End
   Begin VB.Label Label4 
      Caption         =   "Impact on inventory"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7800
      TabIndex        =   12
      Top             =   4920
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "Inventory after"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   10800
      TabIndex        =   11
      Top             =   4920
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Inventory before"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4680
      TabIndex        =   10
      Top             =   4920
      Width           =   2055
   End
   Begin VB.Label lblParty 
      Caption         =   "Supplier"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   4560
      Width           =   4215
   End
   Begin VB.Label lblDate 
      Caption         =   "Date/Time"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   3840
      Width           =   4215
   End
   Begin VB.Label lbl2 
      Caption         =   "Sales :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6120
      TabIndex        =   3
      Top             =   120
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "Comments"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   5280
      Width           =   1815
   End
End
Attribute VB_Name = "frmCsv"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private tempDetail() As String
Private Type Entry
            No As String
            Date As String
            Party As String
            Comments As String
            Item() As String
End Type
Private Entry() As Entry
Private tmpTransCount() As Integer
Private sortEntries As New Dictionary 'the purpose of this dictionary is to sort
Private Sub cmdCsv_Click()
If MsgBox("Generating a CSV consumes time and processing power, continue?", vbYesNo) = vbYes Then
Generate
Shell "explorer.exe /e, " & App.Path & "\DATA\CSV\", vbNormalFocus
Unload Me
End If
End Sub

Private Sub Form_Load()
Check_Records
End Sub
Sub Check_Records()
For i = 1 To transIn
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\TRANS\I" & i & ".txt" For Input As #tmpFile
Line Input #tmpFile, tmpLine 'Date label
Line Input #tmpFile, tmpLine
tempDetail = Split(tmpLine, ",")
liIn.AddItem ("I" & i & " on " & tempDetail(0))
Close #tmpFile
Next
For i = 1 To transOut
tmpFile = FreeFile
Open App.Path & "\DATA\TRANS\O" & i & ".txt" For Input As #tmpFile
Line Input #tmpFile, tmpLine 'Date label
Line Input #tmpFile, tmpLine
tempDetail = Split(tmpLine, ",")
liOut.AddItem ("O" & i & " on " & tempDetail(0))
Close #tmpFile
Next
End Sub

Private Sub liIn_Click()
If liIn.ListIndex >= 0 Then
liOut.ListIndex = -1
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\TRANS\I" & (liIn.ListIndex + 1) & ".txt" For Input As #tmpFile
Line Input #tmpFile, tmpLine 'Date label
Line Input #tmpFile, tmpLine
tempDetail = Split(tmpLine, ",")
lblDate.Caption = "Date/Time : " & tempDetail(0) & " at " & tempDetail(1)
Line Input #tmpFile, tmpLine
Line Input #tmpFile, tmpLine 'fill in the before purchase
txtBef.Text = ""
Do Until tmpLine = "-----Supplier-----"
txtBef.Text = txtBef.Text & tmpLine & vbNewLine
Line Input #tmpFile, tmpLine
Loop
Line Input #tmpFile, tmpLine 'gets supplier name
lblParty.Caption = "Supplier : " & tmpLine
Line Input #tmpFile, tmpLine ' products  purchased
Line Input #tmpFile, tmpLine
txtImp.Text = ""
Do Until tmpLine = "-----Comments-----"
txtImp.Text = txtImp.Text & tmpLine & vbNewLine
Line Input #tmpFile, tmpLine
Loop
txtCom.Text = "" 'comments
Line Input #tmpFile, tmpLine
Do Until tmpLine = "-----Inventory_after_purchase-----"
txtCom.Text = txtCom.Text & tmpLine & vbNewLine
Line Input #tmpFile, tmpLine
Loop
txtAft.Text = "" ' fill in the after purchase dtails
Line Input #tmpFile, tmpLine
txtAft.Text = txtAft.Text & tmpLine & vbNewLine
Do While Not EOF(tmpFile)
Line Input #tmpFile, tmpLine
txtAft.Text = txtAft.Text & tmpLine & vbNewLine
Loop
Close #tmpFile
End If
End Sub

Private Sub liout_Click()
If liOut.ListIndex >= 0 Then
liIn.ListIndex = -1
Dim tmpLine As String
Dim tmpFile As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\TRANS\O" & (liOut.ListIndex + 1) & ".txt" For Input As #tmpFile
Line Input #tmpFile, tmpLine 'Date label
Line Input #tmpFile, tmpLine
tempDetail = Split(tmpLine, ",")
lblDate.Caption = "Date/Time : " & tempDetail(0) & " at " & tempDetail(1)
Line Input #tmpFile, tmpLine
Line Input #tmpFile, tmpLine 'fill in the before sale
txtBef.Text = ""
Do Until tmpLine = "-----Customer-----"
txtBef.Text = txtBef.Text & tmpLine & vbNewLine
Line Input #tmpFile, tmpLine
Loop
Line Input #tmpFile, tmpLine 'gets supplier name
lblParty.Caption = "Customer : " & tmpLine
Line Input #tmpFile, tmpLine ' products  purchased
Line Input #tmpFile, tmpLine
txtImp.Text = ""
Do Until tmpLine = "-----Comments-----"
txtImp.Text = txtImp.Text & tmpLine & vbNewLine
Line Input #tmpFile, tmpLine
Loop
txtCom.Text = "" 'comments
Line Input #tmpFile, tmpLine
Do Until tmpLine = "-----Inventory_after_sale-----"
txtCom.Text = txtCom.Text & tmpLine & vbNewLine
Line Input #tmpFile, tmpLine
Loop
txtAft.Text = "" ' fill in the after purchase dtails
Line Input #tmpFile, tmpLine
txtAft.Text = txtAft.Text & tmpLine & vbNewLine
Do While Not EOF(tmpFile)
Line Input #tmpFile, tmpLine
txtAft.Text = txtAft.Text & tmpLine & vbNewLine
Loop
Close #tmpFile
End If
End Sub

Sub Generate()
Dim tmpTot As Integer
tmpTot = transIn + transOut
ReDim Entry(tmpTot) As Entry
ReDim tmpTransCount(prodTotal - 1)
For i = 1 To transIn
Dim tmpLine As String
Dim tmpFile, tmpFile2 As Integer
tmpFile = FreeFile
Open App.Path & "\DATA\TRANS\I" & i & ".txt" For Input As #tmpFile
Line Input #tmpFile, tmpLine 'Date label
Line Input #tmpFile, tmpLine
tempDetail = Split(tmpLine, ",")
'liIn.AddItem ("I" & i & " on " & tempDetail(0))
Dim tmpTime() As String
tmpTime = Split(tempDetail(1), " ")
tempDetail(1) = tmpTime(1) & tmpTime(0)
'MsgBox tempDetail(0) & "," & tempDetail(1) & vbTab & "I" & i
sortEntries.Add tempDetail(0) & "," & tempDetail(1), "I" & i
Close #tmpFile
Next
For i = 1 To transOut
tmpFile = FreeFile
Open App.Path & "\DATA\TRANS\O" & i & ".txt" For Input As #tmpFile
Line Input #tmpFile, tmpLine 'Date label
Line Input #tmpFile, tmpLine
tempDetail = Split(tmpLine, ",")
'liOut.AddItem ("O" & i & " on " & tempDetail(0))
tmpTime = Split(tempDetail(1), " ")
tempDetail(1) = tmpTime(1) & tmpTime(0)
'MsgBox tempDetail(0) & "," & tempDetail(1) & vbTab & "O" & i
sortEntries.Add tempDetail(0) & "," & tempDetail(1), "O" & i
Close #tmpFile
Next
Dim tmpArr() As String
Dim tmpDict As Dictionary
ReDim tmpArr(0 To sortEntries.Count - 1)
'Fill the array with the keys from the Dictionary
For i = 0 To sortEntries.Count - 1
    tmpArr(i) = sortEntries.Keys(i)
Next i

'Sort the array using the bubble sort method
For i = LBound(tmpArr) To UBound(tmpArr) - 1
    For j = i + 1 To UBound(tmpArr)
        If tmpArr(i) > tmpArr(j) Then
            Temp = tmpArr(j)
            tmpArr(j) = tmpArr(i)
            tmpArr(i) = Temp
        End If
    Next j
Next i

'Create an instance of the temporary Dictionary
Set tmpDict = New Dictionary

'Add the keys and items to the temporary Dictionary,
'using the sorted keys from the array
For i = LBound(tmpArr) To UBound(tmpArr)
    KeyVal = tmpArr(i)
    tmpDict.Add KeyVal, sortEntries.Item(KeyVal)
Next i

'Set the Dict object to the TempDict object
Set sortEntries = tmpDict

sortedKeys = sortEntries.Keys

tmpFile = FreeFile
Open App.Path & "\DATA\CSV\" & Format(Now, "yyyy-mm-dd hhmm") & ".csv" For Output As #tmpFile
tmpstring = "Date,Time,TransactionNo,Supplier/Customer,Comments"
For j = 0 To (prodTotal - 1)
tmpstring = tmpstring & "," & prod(j).name 'Date,Time,TransactionNo,Supplier/Customer,Comments,Item1,Item2,I.....
Next
Print #tmpFile, tmpstring ' prints column titles to file
For i = 0 To (sortEntries.Count - 1)
tmpFile2 = FreeFile
Open App.Path & "\DATA\TRANS\" & sortEntries(sortedKeys(i)) & ".txt" For Input As #tmpFile2
Line Input #tmpFile2, tmpLine 'Date label
Line Input #tmpFile2, tmpLine
tempDetail = Split(tmpLine, ",")
tmpstring = tempDetail(0) & "," & tempDetail(1) & "," & sortEntries(sortedKeys(i)) & "," 'ex - 2012/03/01,12:01:08 AM,I100,
Line Input #tmpFile2, tmpLine 'transaction history label

If Mid(sortEntries(sortedKeys(i)), 1, 1) = "I" Then 'INCOMING ENTRIES - PURCHASES
Do Until tmpLine = "-----Supplier-----"
Line Input #tmpFile2, tmpLine
Loop
Line Input #tmpFile2, tmpLine 'gets supplier name
tmpstring = tmpstring & tmpLine & "," 'ex - 2012/03/01,12:01:08 AM,I100,Made-up Coorp,
Line Input #tmpFile2, tmpLine ' products  purchased
For k = 0 To UBound(tmpTransCount) 'make all values 0 in array
tmpTransCount(k) = 0
Next
Line Input #tmpFile2, tmpLine
Do Until tmpLine = "-----Comments-----"
tempDetail = Split(tmpLine, ",")
For k = 0 To UBound(tmpTransCount)
If tempDetail(0) = prod(k).name Then
tmpTransCount(k) = tempDetail(1)
End If
Next
Line Input #tmpFile2, tmpLine
Loop
tmpitems = ""
For k = 0 To UBound(tmpTransCount)
tmpitems = tmpitems & "+" & tmpTransCount(k) & "," 'ex - +Item1,+Item2,+I.....
Next
Line Input #tmpFile2, tmpLine
Do Until tmpLine = "-----Inventory_after_purchase-----"
tmpstring = tmpstring & Chr$(34) & tmpLine & Chr$(34) & "&CHAR(10)&"  'ex - 2012/03/01,12:01:08 AM,I100,Made-up Coorp,It's very hard\nyyolo\n
Line Input #tmpFile2, tmpLine
Loop
tmpstring = tmpstring & "," & tmpitems  'ex - 2012/03/01,12:01:08 AM,I100,Made-up Coorp,It's very hard\nyyolo\n,+Item1,+Item2,+I.....
Close #tmpFile2
'Data required for an 'incoming' entry is collected
Print #tmpFile, tmpstring

Else

If Mid(sortEntries(sortedKeys(i)), 1, 1) = "O" Then 'OUTGOING ENTRIES - SALES
Do Until tmpLine = "-----Customer-----"
Line Input #tmpFile2, tmpLine
Loop
Line Input #tmpFile2, tmpLine 'gets customer name
tmpstring = tmpstring & tmpLine & "," 'ex - 2012/03/01,12:01:08 AM,I100,Made-up Coorp,

Line Input #tmpFile2, tmpLine ' products  sold
For k = 0 To UBound(tmpTransCount) 'make all values 0 in array
tmpTransCount(k) = 0
Next
Line Input #tmpFile2, tmpLine
Do Until tmpLine = "-----Comments-----"
tempDetail = Split(tmpLine, ",")
For k = 0 To UBound(tmpTransCount)
If tempDetail(0) = prod(k).name Then
tmpTransCount(k) = tempDetail(1)
End If
Next
Line Input #tmpFile2, tmpLine
Loop
tmpitems = ""
For k = 0 To UBound(tmpTransCount)
tmpitems = tmpitems & "-" & tmpTransCount(k) & "," 'ex - -Item1,-Item2,-I.....
Next
Line Input #tmpFile2, tmpLine
Do Until tmpLine = "-----Inventory_after_sale-----"
tmpstring = tmpstring & Chr$(34) & tmpLine & Chr$(34) & "&CHAR(10)&"  'ex - 2012/03/01,12:01:08 AM,I100,Made-up Coorp,It's very hard\nyyolo\n
Line Input #tmpFile2, tmpLine
Loop
tmpstring = tmpstring & "," & tmpitems  'ex - 2012/03/01,12:01:08 AM,I100,Made-up Coorp,It's very hard\nyyolo\n,-Item1,-Item2,-I.....
Close #tmpFile2
'Data required for an 'outgoing' entry is collected
Print #tmpFile, tmpstring

End If
End If


Next

Close #tmpFile
MsgBox "CSV Generated !"
sortEntries.RemoveAll
End Sub
