VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "WhatsApp Link Generator"
   ClientHeight    =   915
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5835
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   915
   ScaleWidth      =   5835
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txt 
      Height          =   375
      Left            =   1200
      TabIndex        =   0
      Top             =   240
      Width           =   3375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub txt_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyReturn Then
    Clipboard.Clear
    Clipboard.SetText ("https://web.whatsapp.com/send?phone=94" & Mid(txt.Text, 2))
    txt.Text = ""
End If
End Sub
