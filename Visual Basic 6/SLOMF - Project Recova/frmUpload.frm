VERSION 5.00
Begin VB.Form frmUpload 
   BackColor       =   &H80000003&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Upload Schools into Database"
   ClientHeight    =   1830
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5115
   Icon            =   "frmUpload.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1830
   ScaleWidth      =   5115
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdNew 
      BackColor       =   &H80000002&
      Caption         =   "Check Schools Integrity"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   1320
      Width           =   3135
   End
   Begin VB.CommandButton cmdUpReg 
      BackColor       =   &H80000002&
      Caption         =   "Upload Regional Data !"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   840
      Width           =   2655
   End
   Begin VB.CommandButton cmdUpload 
      BackColor       =   &H80000002&
      Caption         =   "Upload schools!"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   2880
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   840
      Width           =   2055
   End
   Begin VB.CommandButton cmdCancel 
      BackColor       =   &H80000002&
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1320
      Width           =   1095
   End
   Begin VB.Label lblt 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   495
      Left            =   240
      TabIndex        =   6
      Top             =   360
      Width           =   4695
   End
   Begin VB.Label lblStat 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   375
      Left            =   1560
      TabIndex        =   2
      Top             =   0
      Width           =   3375
   End
   Begin VB.Label lbl1 
      BackStyle       =   0  'Transparent
      Caption         =   "Progress :"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404000&
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   2055
   End
End
Attribute VB_Name = "frmUpload"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Declare Function GetTickCount Lib "kernel32" () As Long

Private schoolCount As Integer
Private startTime As Double
Private Sub cmdCancel_Click()
Unload Me
End Sub
Private Sub cmdNew_Click()
Dim tmpLine As String
Dim tmpFile As Integer
If Dir(App.Path + "\DATA\Schools.dat") <> "" Then
    tmpFile = FreeFile
    Open App.Path + "\DATA\Schools.dat" For Input As #tmpFile
    tmpC = 1
    Do Until EOF(tmpFile)
        Line Input #tmpFile, tmpLine
        tmpData = Split(tmpLine, "|") ' 0-7 CensusNo|Name|Address|Telephone|Province|District|Zone|Division
        'get the ids of all the province, district, zone, division
        sql(1) = "SELECT id FROM school WHERE name=""" & tmpData(1) & """"
        If getRecords(1, 1, 1) = True Then
            'only add if the relationship does not exist
            closeRecords (1)
        Else
            tmpString = tmpData(1)
            tmpFile2 = FreeFile
            Open App.Path & "\DATA\IntegrityCheck.dat" For Append As #tmpFile2
            Print #tmpFile2, tmpString & vbNewLine
            Close #tmpFile2
        End If
        tmpC = tmpC + 1
    Loop
    Close #tmpFile



End If
End Sub
Private Sub cmdUpReg_Click()
'Provinces
Dim tmpLine As String
Dim tmpFile As Integer

If Dir(App.Path + "\DATA\Provinces.dat") <> "" Then
    tmpFile = FreeFile
    Open App.Path + "\DATA\Provinces.dat" For Input As #tmpFile
    Do Until EOF(tmpFile)
        Line Input #tmpFile, tmpLine
        sql(1) = "INSERT INTO province(name) VALUES(""" & tmpLine & """)"
        If sendRecords(1, 1) = True Then
        End If
    Loop
    Close #tmpFile
    MsgBox "Provinces uploaded !"
End If

'Districts
If Dir(App.Path + "\DATA\Districts.dat") <> "" Then
    tmpFile = FreeFile
    Open App.Path + "\DATA\Districts.dat" For Input As #tmpFile
    Do Until EOF(tmpFile)
        Line Input #tmpFile, tmpLine
        sql(1) = "INSERT INTO district(name) VALUES(""" & tmpLine & """)"
        If sendRecords(1, 1) = True Then
        End If
    Loop
    Close #tmpFile
    MsgBox "Districts uploaded !"
End If

'Zones
If Dir(App.Path + "\DATA\Zones.dat") <> "" Then
    tmpFile = FreeFile
    Open App.Path + "\DATA\Zones.dat" For Input As #tmpFile
    Do Until EOF(tmpFile)
        Line Input #tmpFile, tmpLine
        sql(1) = "INSERT INTO zone(name) VALUES(""" & tmpLine & """)"
        If sendRecords(1, 1) = True Then
        End If
    Loop
    Close #tmpFile
    MsgBox "Zones uploaded !"
End If

'Divisions
If Dir(App.Path + "\DATA\Divisions.dat") <> "" Then
    tmpFile = FreeFile
    Open App.Path + "\DATA\Divisions.dat" For Input As #tmpFile
    Do Until EOF(tmpFile)
        Line Input #tmpFile, tmpLine
        sql(1) = "INSERT INTO division(name) VALUES(""" & tmpLine & """)"
        If sendRecords(1, 1) = True Then
        End If
    Loop
    Close #tmpFile
    MsgBox "Divisions uploaded !"
End If

End Sub



Private Sub cmdUpload_Click()
If Dir(App.Path + "\DATA\Schools.dat") <> "" Then
    timeCount = GetTickCount()
    Dim tmpLine As String
    Dim tmpFile As Integer
    tmpFile = FreeFile
    
    Open App.Path + "\DATA\SchoolCount.dat" For Input As #tmpFile
    Line Input #tmpFile, tmpLine
    schoolCount = Int(tmpLine)
    Close #tmpFile
    
    tmpFile = FreeFile
    Open App.Path + "\DATA\Schools.dat" For Input As #tmpFile
    tmpC = 1
    Do Until EOF(tmpFile)
        Line Input #tmpFile, tmpLine
        tmpData = Split(tmpLine, "|") ' 0-7 CensusNo|Name|Address|Telephone|Province|District|Zone|Division
        'get the ids of all the province, district, zone, division
        sql(1) = "SELECT id FROM province WHERE name=""" & tmpData(4) & """"
        sql(2) = "SELECT id FROM district WHERE name=""" & tmpData(5) & """"
        sql(3) = "SELECT id FROM zone WHERE name=""" & tmpData(6) & """"
        sql(4) = "SELECT id FROM division WHERE name=""" & tmpData(7) & """"
        If getRecords(1, 1, 1) = True Then
            tmpProvId = records(1).Fields(0)  'province id
            closeRecords (1)
        End If
        If getRecords(1, 2, 1) = True Then
            tmpDistId = records(1).Fields(0)  'district id
            closeRecords (1)
        End If
        If getRecords(1, 3, 1) = True Then
            tmpZoneId = records(1).Fields(0)  'zone id
            closeRecords (1)
        End If
        If getRecords(1, 4, 1) = True Then
            tmpDivId = records(1).Fields(0)  'division id
            closeRecords (1)
        End If
        sql(5) = "SELECT provId FROM prov_dist WHERE provId=" & tmpProvId & " AND distId=" & tmpDistId
        sql(6) = "SELECT zoneId FROM zone_div WHERE zoneId=" & tmpZoneId & " AND divId=" & tmpDivId
        sql(7) = "INSERT INTO prov_dist(provId,distId) VALUES(" & tmpProvId & "," & tmpDistId & ")"
        sql(8) = "INSERT INTO zone_div(zoneId,divId) VALUES(" & tmpZoneId & "," & tmpDivId & ")"
'        If getRecords(1, 5, 1) = True Then
'            'only add if the relationship does not exist
'            closeRecords (1)
'        Else
'            If sendRecords(1, 7) = True Then
'            End If
'        End If
'        If getRecords(1, 6, 1) = True Then
'            'only add if the relationship does not exist
'            closeRecords (1)
'        Else
'            If sendRecords(1, 8) = True Then
'            End If
'        End If
        'first set up the relationships between the regions, get their ids then update the school table !
        'sql(9) = "INSERT INTO school(id,name,address,telephone,provId,distId,zoneId,divId) VALUES(""" & tmpData(0) & """,""" & tmpData(1) & """,""" & tmpData(2) & """,""" & tmpData(3) & """," & tmpProvId & "," & tmpDistId & "," & tmpZoneId & "," & tmpDivId & ")"
        sql(9) = "INSERT INTO school(id,name,address,distId) VALUES(""" & tmpData(0) & """,""" & tmpData(1) & """,""" & tmpData(2) & """," & tmpDistId & ")"
        If sendRecords(1, 9) = True Then
        End If
        
        lblStat.Caption = tmpC & " / " & schoolCount
        lblt.Caption = "Time elapsed : " & Format(((GetTickCount() - timeCount) / 60000), "0.00") & " mins"
        lblt.Refresh
        lblStat.Refresh
        Me.Refresh
        tmpC = tmpC + 1
    Loop
    Close #tmpFile
    
    MsgBox schoolCount & " schools uploaded in " & Format(((GetTickCount() - timeCount) / 60000), "0.00") & " minutes !"

End If
End Sub

