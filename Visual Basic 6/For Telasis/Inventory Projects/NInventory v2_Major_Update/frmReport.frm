VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form frmReport 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Reports"
   ClientHeight    =   3900
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6045
   Icon            =   "frmReport.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3900
   ScaleWidth      =   6045
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox chkSal 
      Appearance      =   0  'Flat
      BackColor       =   &H80000003&
      Caption         =   "Sales"
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
      Height          =   255
      Left            =   1800
      TabIndex        =   9
      Top             =   1800
      Width           =   2655
   End
   Begin VB.CheckBox chkPurch 
      Appearance      =   0  'Flat
      BackColor       =   &H80000003&
      Caption         =   "Purchases"
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
      Height          =   255
      Left            =   1800
      TabIndex        =   8
      Top             =   1440
      Width           =   2655
   End
   Begin VB.CommandButton cmdGenerate 
      BackColor       =   &H80000002&
      Caption         =   "Generate!"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   780
      Left            =   4560
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1320
      Width           =   1335
   End
   Begin MSComCtl2.DTPicker dtSDate 
      Height          =   375
      Left            =   2040
      TabIndex        =   1
      Top             =   120
      Width           =   2055
      _ExtentX        =   3625
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
      Format          =   85000195
      CurrentDate     =   43220
   End
   Begin MSComCtl2.DTPicker dtSTime 
      Height          =   375
      Left            =   4080
      TabIndex        =   2
      Top             =   120
      Width           =   1575
      _ExtentX        =   2778
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
      Format          =   85000194
      CurrentDate     =   43220
   End
   Begin MSComCtl2.DTPicker dtEDate 
      Height          =   375
      Left            =   2040
      TabIndex        =   4
      Top             =   600
      Width           =   2055
      _ExtentX        =   3625
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
      Format          =   85458947
      CurrentDate     =   43220
   End
   Begin MSComCtl2.DTPicker dtETime 
      Height          =   375
      Left            =   4080
      TabIndex        =   5
      Top             =   600
      Width           =   1575
      _ExtentX        =   2778
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
      Format          =   85458946
      CurrentDate     =   43220
   End
   Begin VB.Frame frmSup 
      BackColor       =   &H80000003&
      Caption         =   "Select Supplier"
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
      Height          =   1575
      Left            =   0
      TabIndex        =   12
      Top             =   2280
      Visible         =   0   'False
      Width           =   6015
      Begin VB.ListBox liSup 
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
         Left            =   120
         TabIndex        =   13
         ToolTipText     =   "Double click to enlarge text."
         Top             =   360
         Width           =   5775
      End
   End
   Begin VB.Frame frmCust 
      BackColor       =   &H80000003&
      Caption         =   "Select Customer"
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
      Height          =   1575
      Left            =   0
      TabIndex        =   10
      Top             =   2280
      Visible         =   0   'False
      Width           =   6015
      Begin VB.ListBox liCust 
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
         Left            =   120
         TabIndex        =   11
         ToolTipText     =   "Double click to enlarge text."
         Top             =   360
         Width           =   5775
      End
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Check for what  ?"
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
      Left            =   240
      TabIndex        =   7
      Top             =   1080
      Width           =   3015
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "To     :"
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
      Left            =   240
      TabIndex        =   6
      Top             =   600
      Width           =   3015
   End
   Begin VB.Label lbl1 
      BackStyle       =   0  'Transparent
      Caption         =   "From     :"
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
      Left            =   240
      TabIndex        =   3
      Top             =   120
      Width           =   3015
   End
End
Attribute VB_Name = "frmReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private supplier() As supplier
Private customer() As customer
Private expType As String

Sub Load_Data()
ReDim supplier(0)
ReDim customer(0)

sql(1) = "SELECT id,name FROM supplier"
sql(2) = "SELECT id,name FROM customer"

Load_Suppliers:
If getRecords(1, 1, 1) = True Then
    ReDim supplier(records(1).RecordCount - 1)
    tmpC = 0
    Do Until records(1).EOF
        supplier(tmpC).id = records(1).Fields(0)
        supplier(tmpC).name = records(1).Fields(1)
        liSup.AddItem supplier(tmpC).name
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If

Load_Customers:
If getRecords(1, 2, 1) = True Then
    ReDim customer(records(1).RecordCount - 1)
    tmpC = 0
    Do Until records(1).EOF
        customer(tmpC).id = records(1).Fields(0)
        customer(tmpC).name = records(1).Fields(1)
        liCust.AddItem customer(tmpC).name
        tmpC = tmpC + 1
        records(1).MoveNext
    Loop
    closeRecords (1)
End If
End Sub

Sub Handle_Filter()
If chkPurch.Value = 1 And chkSal.Value = 1 Then
    frmSup.Visible = False
    frmCust.Visible = False
    expType = "ALL"
End If
If chkPurch.Value = 0 And chkSal.Value = 0 Then
    frmSup.Visible = False
    frmCust.Visible = False
    expType = "NOSELECT"
End If
If chkPurch.Value = 1 And chkSal.Value = 0 Then
    frmSup.Visible = True
    frmCust.Visible = False
    expType = "PURCH"
End If
If chkPurch.Value = 0 And chkSal.Value = 1 Then
    frmSup.Visible = False
    frmCust.Visible = True
    expType = "SALE"
End If
liCust.ListIndex = -1
liSup.ListIndex = -1
End Sub

Private Sub Form_Load()
dtSDate.Value = Date
dtSTime.Value = Time()
dtEDate.Value = Date
dtETime.Value = Time()
Load_Data
End Sub

Private Sub chkPurch_Click()
Handle_Filter
End Sub

Private Sub chkSal_Click()
Handle_Filter
End Sub

Private Sub cmdGenerate_Click()
If expType = "NOSELECT" Or expType = "NOSELECT" Then Exit Sub 'nothing to do if not selected !
If liCust.ListIndex > -1 Or liSup.ListIndex > -1 Then expType = "_" & expType 'when a specific party needs to be filtered ~

tmpSDT = dtSDate.Year & "-" & dtSDate.Month & "-" & dtSDate.Day & Format(dtSTime.Value, " hh:mm:ss")
tmpEDT = dtEDate.Year & "-" & dtEDate.Month & "-" & dtEDate.Day & Format(dtETime.Value, " hh:mm:ss")

'create folder if it doesnt exist for report export
'\REPORTS\2019-01-21'
tmpDir = App.Path + "\REPORTS\" + Format(Date, "YYYY-MM-DD")
If Dir(tmpDir, vbDirectory) = "" Then
    MkDir (tmpDir)
End If
tmpDir = tmpDir + "\" + Format(Time(), "hh-mm-ss")
MkDir (tmpDir)
Select Case expType
Case Is = "ALL"
    
     'we need to seperately check on the relevant ids and those ids on nsproduct, sproduct tables
    sql(1) = "SELECT purchase.id,dateTime,supplier.name,comment,purchase.user,supplier.id FROM purchase,supplier WHERE ( dateTime BETWEEN '" & tmpSDT & "' AND '" & tmpEDT & "' ) AND supplier.id = purchase.supplierId" 'this will get us the id's
    If getRecords(1, 1, 1) = True Then
        Do Until records(1).EOF
            tmpString = ",Purchase,,," & vbNewLine 'to add all the stuff in, 1 file for each purchase !
            tmpLine = "Purchase ID:," & records(1).Fields(0) & ",,," & vbNewLine _
                      & "Date/Time:," & records(1).Fields(1) & ",,," & vbNewLine _
                      & "Supplier:," & records(1).Fields(2) & ",,," & vbNewLine _
                      & "Comment:," & records(1).Fields(3) & ",,," & vbNewLine _
                      & "Added User:," & records(1).Fields(4) & ",,," & vbNewLine _
                      & ",,,," & vbNewLine _
                      & "Product ID,Product Name,Product Serial,Quantity,Comment" & vbNewLine
            tmpString = tmpString & tmpLine
            'what nsproducts do we have under this purchase id ?
            sql(2) = "SELECT nsProductId,name,purchase_nsprod.quantity,comment FROM purchase_nsprod,nsproduct,prod_name WHERE nsProductId=nsproduct.id AND nsproduct.pnId=prod_name.id AND purchaseId=" & records(1).Fields(0) 'this will get us all the nsproduct details
            If getRecords(1, 2, 2) = True Then
                Do Until records(2).EOF
                    tmpLine = "NS" & records(2).Fields(0) & "," _
                                   & records(2).Fields(1) & ",," _
                                   & records(2).Fields(2) & "," _
                                   & records(2).Fields(3) & vbNewLine
                    tmpString = tmpString & tmpLine
                    records(2).MoveNext
                Loop
                closeRecords (2)
            End If
            'what sproducts do we have under this purchase id ?
            sql(3) = "SELECT sProductId,name,serial,comment FROM purchase_sprod,sproduct,prod_name WHERE sProductId=sproduct.id AND sproduct.pnId=prod_name.id AND purchaseId=" & records(1).Fields(0) 'this will get us all the nsproduct details
            If getRecords(1, 3, 2) = True Then
                Do Until records(2).EOF
                    tmpLine = "S" & records(2).Fields(0) & "," _
                                  & records(2).Fields(1) & "," _
                                  & records(2).Fields(2) & ",," _
                                  & records(2).Fields(3) & vbNewLine
                    tmpString = tmpString & tmpLine
                    records(2).MoveNext
                Loop
                closeRecords (2)
            End If
            
            tmpFile = FreeFile
            '2017-05-01_21-00-11_purchase1_supplier1.csv <---eg file name
            Open tmpDir & "\" & Format(records(1).Fields(1), "YYYY-MM-DD_HH-MM-SS") & "_purchase" & records(1).Fields(0) & "_supplier" & records(1).Fields(5) & ".csv" For Output As #tmpFile
            Print #tmpFile, tmpString
            Close #tmpFile
            
            records(1).MoveNext
        Loop
        closeRecords (1)
    End If
    
        'we need to seperately check on the relevant ids and those ids on nsproduct, sproduct tables
    sql(1) = "SELECT sale.id,dateTime,customer.name,comment,sale.user,customer.id FROM sale,customer WHERE ( dateTime BETWEEN '" & tmpSDT & "' AND '" & tmpEDT & "' ) AND customer.id = sale.customerId" 'this will get us the id's
    If getRecords(1, 1, 1) = True Then
        Do Until records(1).EOF
            tmpString = ",Sale,,," & vbNewLine 'to add all the stuff in, 1 file for each sale !
            tmpLine = "Sale ID:," & records(1).Fields(0) & ",,," & vbNewLine _
                      & "Date/Time:," & records(1).Fields(1) & ",,," & vbNewLine _
                      & "Customer:," & records(1).Fields(2) & ",,," & vbNewLine _
                      & "Comment:," & records(1).Fields(3) & ",,," & vbNewLine _
                      & "Added User:," & records(1).Fields(4) & ",,," & vbNewLine _
                      & ",,,," & vbNewLine _
                      & "Product ID,Product Name,Product Serial,Quantity,Comment" & vbNewLine
            tmpString = tmpString & tmpLine
            'what nsproducts do we have under this sale id ?
            sql(2) = "SELECT nsProductId,name,sale_nsprod.quantity,comment FROM sale_nsprod,nsproduct,prod_name WHERE nsProductId=nsproduct.id AND nsproduct.pnId=prod_name.id AND saleId=" & records(1).Fields(0) 'this will get us all the nsproduct details
            If getRecords(1, 2, 2) = True Then
                Do Until records(2).EOF
                    tmpLine = "NS" & records(2).Fields(0) & "," _
                                   & records(2).Fields(1) & ",," _
                                   & records(2).Fields(2) & "," _
                                   & records(2).Fields(3) & vbNewLine
                    tmpString = tmpString & tmpLine
                    records(2).MoveNext
                Loop
                closeRecords (2)
            End If
            'what sproducts do we have under this sale id ?
            sql(3) = "SELECT sProductId,name,serial,comment FROM sale_sprod,sproduct,prod_name WHERE sProductId=sproduct.id AND sproduct.pnId=prod_name.id AND saleId=" & records(1).Fields(0) 'this will get us all the nsproduct details
            If getRecords(1, 3, 2) = True Then
                Do Until records(2).EOF
                    tmpLine = "S" & records(2).Fields(0) & "," _
                                  & records(2).Fields(1) & "," _
                                  & records(2).Fields(2) & ",," _
                                  & records(2).Fields(3) & vbNewLine
                    tmpString = tmpString & tmpLine
                    records(2).MoveNext
                Loop
                closeRecords (2)
            End If
            
            tmpFile = FreeFile
            '2017-05-01_21-00-11_sale1_customer1.csv <---eg file name
            Open tmpDir & "\" & Format(records(1).Fields(1), "YYYY-MM-DD_HH-MM-SS") & "_sale" & records(1).Fields(0) & "_customer" & records(1).Fields(5) & ".csv" For Output As #tmpFile
            Print #tmpFile, tmpString
            Close #tmpFile
            
            records(1).MoveNext
        Loop
        closeRecords (1)
    End If
    
Case Is = "PURCH"
    'we need to seperately check on the relevant ids and those ids on nsproduct, sproduct tables
    sql(1) = "SELECT purchase.id,dateTime,supplier.name,comment,purchase.user,supplier.id FROM purchase,supplier WHERE ( dateTime BETWEEN '" & tmpSDT & "' AND '" & tmpEDT & "' ) AND supplier.id = purchase.supplierId" 'this will get us the id's
    If getRecords(1, 1, 1) = True Then
        Do Until records(1).EOF
            tmpString = ",Purchase,,," & vbNewLine 'to add all the stuff in, 1 file for each purchase !
            tmpLine = "Purchase ID:," & records(1).Fields(0) & ",,," & vbNewLine _
                      & "Date/Time:," & records(1).Fields(1) & ",,," & vbNewLine _
                      & "Supplier:," & records(1).Fields(2) & ",,," & vbNewLine _
                      & "Comment:," & records(1).Fields(3) & ",,," & vbNewLine _
                      & "Added User:," & records(1).Fields(4) & ",,," & vbNewLine _
                      & ",,,," & vbNewLine _
                      & "Product ID,Product Name,Product Serial,Quantity,Comment" & vbNewLine
            tmpString = tmpString & tmpLine
            'what nsproducts do we have under this purchase id ?
            sql(2) = "SELECT nsProductId,name,purchase_nsprod.quantity,comment FROM purchase_nsprod,nsproduct,prod_name WHERE nsProductId=nsproduct.id AND nsproduct.pnId=prod_name.id AND purchaseId=" & records(1).Fields(0) 'this will get us all the nsproduct details
            If getRecords(1, 2, 2) = True Then
                Do Until records(2).EOF
                    tmpLine = "NS" & records(2).Fields(0) & "," _
                                   & records(2).Fields(1) & ",," _
                                   & records(2).Fields(2) & "," _
                                   & records(2).Fields(3) & vbNewLine
                    tmpString = tmpString & tmpLine
                    records(2).MoveNext
                Loop
                closeRecords (2)
            End If
            'what sproducts do we have under this purchase id ?
            sql(3) = "SELECT sProductId,name,serial,comment FROM purchase_sprod,sproduct,prod_name WHERE sProductId=sproduct.id AND sproduct.pnId=prod_name.id AND purchaseId=" & records(1).Fields(0) 'this will get us all the nsproduct details
            If getRecords(1, 3, 2) = True Then
                Do Until records(2).EOF
                    tmpLine = "S" & records(2).Fields(0) & "," _
                                  & records(2).Fields(1) & "," _
                                  & records(2).Fields(2) & ",," _
                                  & records(2).Fields(3) & vbNewLine
                    tmpString = tmpString & tmpLine
                    records(2).MoveNext
                Loop
                closeRecords (2)
            End If
            
            tmpFile = FreeFile
            '2017-05-01_21-00-11_purchase1_supplier1.csv <---eg file name
            Open tmpDir & "\" & Format(records(1).Fields(1), "YYYY-MM-DD_HH-MM-SS") & "_purchase" & records(1).Fields(0) & "_supplier" & records(1).Fields(5) & ".csv" For Output As #tmpFile
            Print #tmpFile, tmpString
            Close #tmpFile
            
            records(1).MoveNext
        Loop
        closeRecords (1)
    End If

Case Is = "SALE"

    'we need to seperately check on the relevant ids and those ids on nsproduct, sproduct tables
    sql(1) = "SELECT sale.id,dateTime,customer.name,comment,sale.user,customer.id FROM sale,customer WHERE ( dateTime BETWEEN '" & tmpSDT & "' AND '" & tmpEDT & "' ) AND customer.id = sale.customerId" 'this will get us the id's
    If getRecords(1, 1, 1) = True Then
        Do Until records(1).EOF
            tmpString = ",Sale,,," & vbNewLine 'to add all the stuff in, 1 file for each sale !
            tmpLine = "Sale ID:," & records(1).Fields(0) & ",,," & vbNewLine _
                      & "Date/Time:," & records(1).Fields(1) & ",,," & vbNewLine _
                      & "Customer:," & records(1).Fields(2) & ",,," & vbNewLine _
                      & "Comment:," & records(1).Fields(3) & ",,," & vbNewLine _
                      & "Added User:," & records(1).Fields(4) & ",,," & vbNewLine _
                      & ",,,," & vbNewLine _
                      & "Product ID,Product Name,Product Serial,Quantity,Comment" & vbNewLine
            tmpString = tmpString & tmpLine
            'what nsproducts do we have under this sale id ?
            sql(2) = "SELECT nsProductId,name,sale_nsprod.quantity,comment FROM sale_nsprod,nsproduct,prod_name WHERE nsProductId=nsproduct.id AND nsproduct.pnId=prod_name.id AND saleId=" & records(1).Fields(0) 'this will get us all the nsproduct details
            If getRecords(1, 2, 2) = True Then
                Do Until records(2).EOF
                    tmpLine = "NS" & records(2).Fields(0) & "," _
                                   & records(2).Fields(1) & ",," _
                                   & records(2).Fields(2) & "," _
                                   & records(2).Fields(3) & vbNewLine
                    tmpString = tmpString & tmpLine
                    records(2).MoveNext
                Loop
                closeRecords (2)
            End If
            'what sproducts do we have under this sale id ?
            sql(3) = "SELECT sProductId,name,serial,comment FROM sale_sprod,sproduct,prod_name WHERE sProductId=sproduct.id AND sproduct.pnId=prod_name.id AND saleId=" & records(1).Fields(0) 'this will get us all the nsproduct details
            If getRecords(1, 3, 2) = True Then
                Do Until records(2).EOF
                    tmpLine = "S" & records(2).Fields(0) & "," _
                                  & records(2).Fields(1) & "," _
                                  & records(2).Fields(2) & ",," _
                                  & records(2).Fields(3) & vbNewLine
                    tmpString = tmpString & tmpLine
                    records(2).MoveNext
                Loop
                closeRecords (2)
            End If
            
            tmpFile = FreeFile
            '2017-05-01_21-00-11_sale1_customer1.csv <---eg file name
            Open tmpDir & "\" & Format(records(1).Fields(1), "YYYY-MM-DD_HH-MM-SS") & "_sale" & records(1).Fields(0) & "_customer" & records(1).Fields(5) & ".csv" For Output As #tmpFile
            Print #tmpFile, tmpString
            Close #tmpFile
            
            records(1).MoveNext
        Loop
        closeRecords (1)
    End If
    
Case Is = "_PURCH"
    
   'we need to seperately check on the relevant ids and those ids on nsproduct, sproduct tables
    sql(1) = "SELECT purchase.id,dateTime,supplier.name,comment,purchase.user,supplier.id FROM purchase,supplier WHERE ( dateTime BETWEEN '" & tmpSDT & "' AND '" & tmpEDT & "' ) AND supplier.id = purchase.supplierId AND supplier.id=" & supplier(liSup.ListIndex).id  'this will get us the id's, filtered by selected supplier
    If getRecords(1, 1, 1) = True Then
        Do Until records(1).EOF
            tmpString = ",Purchase,,," & vbNewLine 'to add all the stuff in, 1 file for each purchase !
            tmpLine = "Purchase ID:," & records(1).Fields(0) & ",,," & vbNewLine _
                      & "Date/Time:," & records(1).Fields(1) & ",,," & vbNewLine _
                      & "Supplier:," & records(1).Fields(2) & ",,," & vbNewLine _
                      & "Comment:," & records(1).Fields(3) & ",,," & vbNewLine _
                      & "Added User:," & records(1).Fields(4) & ",,," & vbNewLine _
                      & ",,,," & vbNewLine _
                      & "Product ID,Product Name,Product Serial,Quantity,Comment" & vbNewLine
            tmpString = tmpString & tmpLine
            'what nsproducts do we have under this purchase id ?
            sql(2) = "SELECT nsProductId,name,purchase_nsprod.quantity,comment FROM purchase_nsprod,nsproduct,prod_name WHERE nsProductId=nsproduct.id AND nsproduct.pnId=prod_name.id AND purchaseId=" & records(1).Fields(0) 'this will get us all the nsproduct details
            If getRecords(1, 2, 2) = True Then
                Do Until records(2).EOF
                    tmpLine = "NS" & records(2).Fields(0) & "," _
                                   & records(2).Fields(1) & ",," _
                                   & records(2).Fields(2) & "," _
                                   & records(2).Fields(3) & vbNewLine
                    tmpString = tmpString & tmpLine
                    records(2).MoveNext
                Loop
                closeRecords (2)
            End If
            'what sproducts do we have under this purchase id ?
            sql(3) = "SELECT sProductId,name,serial,comment FROM purchase_sprod,sproduct,prod_name WHERE sProductId=sproduct.id AND sproduct.pnId=prod_name.id AND purchaseId=" & records(1).Fields(0) 'this will get us all the nsproduct details
            If getRecords(1, 3, 2) = True Then
                Do Until records(2).EOF
                    tmpLine = "S" & records(2).Fields(0) & "," _
                                  & records(2).Fields(1) & "," _
                                  & records(2).Fields(2) & ",," _
                                  & records(2).Fields(3) & vbNewLine
                    tmpString = tmpString & tmpLine
                    records(2).MoveNext
                Loop
                closeRecords (2)
            End If
            
            tmpFile = FreeFile
            '2017-05-01_21-00-11_purchase1_supplier1.csv <---eg file name
            Open tmpDir & "\" & Format(records(1).Fields(1), "YYYY-MM-DD_HH-MM-SS") & "_purchase" & records(1).Fields(0) & "_supplier" & records(1).Fields(5) & ".csv" For Output As #tmpFile
            Print #tmpFile, tmpString
            Close #tmpFile
            
            records(1).MoveNext
        Loop
        closeRecords (1)
    End If
    
Case Is = "_SALE"

    'we need to seperately check on the relevant ids and those ids on nsproduct, sproduct tables
    sql(1) = "SELECT sale.id,dateTime,customer.name,comment,sale.user,customer.id FROM sale,customer WHERE ( dateTime BETWEEN '" & tmpSDT & "' AND '" & tmpEDT & "' ) AND customer.id = sale.customerId AND customer.id=" & customer(liCust.ListIndex).id   'this will get us the id's, filtered by selected customer
    If getRecords(1, 1, 1) = True Then
        Do Until records(1).EOF
            tmpString = ",Sale,,," & vbNewLine 'to add all the stuff in, 1 file for each sale !
            tmpLine = "Sale ID:," & records(1).Fields(0) & ",,," & vbNewLine _
                      & "Date/Time:," & records(1).Fields(1) & ",,," & vbNewLine _
                      & "Customer:," & records(1).Fields(2) & ",,," & vbNewLine _
                      & "Comment:," & records(1).Fields(3) & ",,," & vbNewLine _
                      & "Added User:," & records(1).Fields(4) & ",,," & vbNewLine _
                      & ",,,," & vbNewLine _
                      & "Product ID,Product Name,Product Serial,Quantity,Comment" & vbNewLine
            tmpString = tmpString & tmpLine
            'what nsproducts do we have under this sale id ?
            sql(2) = "SELECT nsProductId,name,sale_nsprod.quantity,comment FROM sale_nsprod,nsproduct,prod_name WHERE nsProductId=nsproduct.id AND nsproduct.pnId=prod_name.id AND saleId=" & records(1).Fields(0) 'this will get us all the nsproduct details
            If getRecords(1, 2, 2) = True Then
                Do Until records(2).EOF
                    tmpLine = "NS" & records(2).Fields(0) & "," _
                                   & records(2).Fields(1) & ",," _
                                   & records(2).Fields(2) & "," _
                                   & records(2).Fields(3) & vbNewLine
                    tmpString = tmpString & tmpLine
                    records(2).MoveNext
                Loop
                closeRecords (2)
            End If
            'what sproducts do we have under this sale id ?
            sql(3) = "SELECT sProductId,name,serial,comment FROM sale_sprod,sproduct,prod_name WHERE sProductId=sproduct.id AND sproduct.pnId=prod_name.id AND saleId=" & records(1).Fields(0) 'this will get us all the nsproduct details
            If getRecords(1, 3, 2) = True Then
                Do Until records(2).EOF
                    tmpLine = "S" & records(2).Fields(0) & "," _
                                  & records(2).Fields(1) & "," _
                                  & records(2).Fields(2) & ",," _
                                  & records(2).Fields(3) & vbNewLine
                    tmpString = tmpString & tmpLine
                    records(2).MoveNext
                Loop
                closeRecords (2)
            End If
            
            tmpFile = FreeFile
            '2017-05-01_21-00-11_sale1_customer1.csv <---eg file name
            Open tmpDir & "\" & Format(records(1).Fields(1), "YYYY-MM-DD_HH-MM-SS") & "_sale" & records(1).Fields(0) & "_customer" & records(1).Fields(5) & ".csv" For Output As #tmpFile
            Print #tmpFile, tmpString
            Close #tmpFile
            
            records(1).MoveNext
        Loop
        closeRecords (1)
    End If

End Select

If expType = "ALL" Then tmpLine = "Purchases & Sales"
If expType = "PURCH" Then tmpLine = "Purchases"
If expType = "SALE" Then tmpLine = "Sales"
If expType = "_PURCH" Then tmpLine = "Purchases made from " & liSup.Text
If expType = "_SALE" Then tmpLine = "Sales made from " & liCust.Text

tmpString = "Report generated on:" & vbNewLine & Format(Date, "YYYY-MM-DD") & " " & Format(Time(), "hh:mm:ss") & vbNewLine & vbNewLine _
               & "Generated By:" & vbNewLine & username & vbNewLine & vbNewLine _
               & "Query Info:" & vbNewLine & tmpLine & vbNewLine & vbNewLine _
               & "From: " & tmpSDT & " To: " & tmpEDT
tmpFile = FreeFile
Open tmpDir & "\&Report Info.txt" For Output As #tmpFile
Print #tmpFile, tmpString
Close #tmpFile

Me.Hide
MsgBox "Report generation successful !"
Shell "explorer.exe " & tmpDir, vbNormalFocus
Unload Me
End Sub


