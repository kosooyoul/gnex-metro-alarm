VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "코드"
   ClientHeight    =   7275
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10185
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   7275
   ScaleWidth      =   10185
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "돋움체"
         Size            =   9
         Charset         =   129
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   7215
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   3  '양방향
      TabIndex        =   0
      Top             =   0
      Width           =   10215
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Resize()
    If Me.Width < 3000 Then Me.Width = 3000
    If Me.Height < 2000 Then Me.Height = 2000

    Text1.Width = Me.Width - 120
    Text1.Height = Me.Height - 420
End Sub
