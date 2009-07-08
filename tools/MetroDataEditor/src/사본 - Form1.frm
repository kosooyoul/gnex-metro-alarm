VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Metro Data Editor 1"
   ClientHeight    =   12120
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   19080
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   808
   ScaleMode       =   3  '픽셀
   ScaleWidth      =   1272
   StartUpPosition =   3  'Windows 기본값
   Begin VB.TextBox TextStationCount 
      BackColor       =   &H00E0E0E0&
      Height          =   270
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   258
      Text            =   "1 개"
      Top             =   10065
      Width           =   735
   End
   Begin VB.CommandButton Command10 
      Caption         =   ">"
      Height          =   315
      Left            =   5400
      TabIndex        =   257
      Top             =   11280
      Width           =   375
   End
   Begin VB.CommandButton Command3 
      Caption         =   "라인 설정"
      Height          =   315
      Left            =   4320
      TabIndex        =   236
      Top             =   11280
      Width           =   1095
   End
   Begin VB.CommandButton Command9 
      Caption         =   "<"
      Height          =   315
      Left            =   3960
      TabIndex        =   256
      Top             =   11280
      Width           =   375
   End
   Begin VB.CommandButton Command8 
      Caption         =   "선택"
      Height          =   375
      Left            =   1920
      TabIndex        =   255
      Top             =   360
      Width           =   855
   End
   Begin VB.CommandButton Command7 
      Caption         =   "다음역"
      Height          =   375
      Left            =   1080
      TabIndex        =   254
      Top             =   360
      Width           =   855
   End
   Begin VB.CommandButton Command6 
      Caption         =   "이전역"
      Height          =   375
      Left            =   240
      TabIndex        =   253
      Top             =   360
      Width           =   855
   End
   Begin VB.TextBox TextLineName 
      BackColor       =   &H00E0E0E0&
      Height          =   270
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   251
      Text            =   "-"
      Top             =   10920
      Width           =   1095
   End
   Begin VB.CommandButton CommandCreateCode 
      Caption         =   "코드생성"
      Height          =   975
      Left            =   12600
      TabIndex        =   250
      Top             =   9960
      Width           =   855
   End
   Begin VB.CommandButton CommandLoad 
      Caption         =   "임시 파일 읽기"
      Height          =   495
      Left            =   10680
      TabIndex        =   249
      Top             =   10440
      Width           =   1935
   End
   Begin VB.CommandButton CommandSave 
      Caption         =   "임시 저장"
      Height          =   495
      Left            =   10680
      TabIndex        =   248
      Top             =   9960
      Width           =   1935
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00000000&
      Caption         =   "sync"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   9360
      TabIndex        =   247
      Top             =   10980
      Value           =   1  '확인
      Width           =   735
   End
   Begin VB.TextBox textInputStationName 
      Height          =   270
      Left            =   6360
      TabIndex        =   246
      Top             =   11040
      Width           =   1935
   End
   Begin VB.CommandButton Command5 
      Caption         =   "삭제"
      Height          =   315
      Left            =   8400
      TabIndex        =   245
      Top             =   10560
      Width           =   855
   End
   Begin VB.CommandButton Command4 
      Caption         =   "추가"
      Height          =   315
      Left            =   8400
      TabIndex        =   244
      Top             =   11040
      Width           =   855
   End
   Begin VB.ListBox List1 
      Height          =   1140
      Left            =   6360
      TabIndex        =   243
      Top             =   9840
      Width           =   1935
   End
   Begin VB.TextBox TextLineNumber 
      Height          =   270
      Left            =   4320
      TabIndex        =   242
      Text            =   "0"
      Top             =   10560
      Width           =   1095
   End
   Begin VB.TextBox TextEndStt 
      BackColor       =   &H00E0E0E0&
      Height          =   270
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   240
      Text            =   "0"
      Top             =   10200
      Width           =   1095
   End
   Begin VB.TextBox TextStartStt 
      BackColor       =   &H00E0E0E0&
      Height          =   270
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   239
      Text            =   "0"
      Top             =   9840
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      BorderStyle     =   0  '없음
      Caption         =   "Frame1"
      Height          =   1695
      Left            =   120
      TabIndex        =   226
      Top             =   9555
      Width           =   3255
      Begin VB.CommandButton Command2 
         Caption         =   "리셋"
         Height          =   320
         Left            =   2160
         TabIndex        =   234
         Top             =   1365
         Width           =   855
      End
      Begin VB.CommandButton Command1 
         Caption         =   "확인"
         Height          =   320
         Left            =   1200
         TabIndex        =   233
         Top             =   1365
         Width           =   855
      End
      Begin VB.TextBox TextTime 
         Height          =   270
         Left            =   1200
         TabIndex        =   229
         Top             =   1040
         Width           =   1815
      End
      Begin VB.TextBox TextName 
         Height          =   270
         Left            =   1200
         TabIndex        =   228
         Top             =   675
         Width           =   1815
      End
      Begin VB.TextBox TextId 
         Height          =   270
         Left            =   1200
         TabIndex        =   227
         Top             =   315
         Width           =   1815
      End
      Begin VB.Label LabelPrevIndex 
         BackStyle       =   0  '투명
         Caption         =   "0"
         ForeColor       =   &H0000FFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   235
         Top             =   120
         Width           =   735
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "다음역까지소요시간"
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   240
         TabIndex        =   232
         Top             =   1000
         Width           =   975
      End
      Begin VB.Label Label2 
         BackStyle       =   0  '투명
         Caption         =   "역 이름"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   231
         Top             =   720
         Width           =   975
      End
      Begin VB.Label Label1 
         BackStyle       =   0  '투명
         Caption         =   "역 ID"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   230
         Top             =   360
         Width           =   975
      End
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00400040&
      BorderStyle     =   0  '없음
      Height          =   495
      Left            =   12840
      ScaleHeight     =   33
      ScaleMode       =   3  '픽셀
      ScaleWidth      =   33
      TabIndex        =   0
      Top             =   11520
      Width           =   495
      Begin VB.Label MetroJoint1 
         AutoSize        =   -1  'True
         BackStyle       =   0  '투명
         Caption         =   "["
         BeginProperty Font 
            Name            =   "Wingdings"
            Size            =   12
            Charset         =   2
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   120
         Width           =   210
      End
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   0
      X1              =   736
      X2              =   976
      Y1              =   175
      Y2              =   415
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFFFF&
      X1              =   0
      X2              =   1272
      Y1              =   624
      Y2              =   624
   End
   Begin VB.Label Label7 
      BackStyle       =   0  '투명
      Caption         =   "호선이름"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3480
      TabIndex        =   252
      Top             =   10920
      Width           =   855
   End
   Begin VB.Label Label6 
      BackStyle       =   0  '투명
      Caption         =   "라인번호"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3480
      TabIndex        =   241
      Top             =   10560
      Width           =   855
   End
   Begin VB.Label Label5 
      BackStyle       =   0  '투명
      Caption         =   "종작역"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3720
      TabIndex        =   238
      Top             =   10200
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  '투명
      Caption         =   "시작역"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3720
      TabIndex        =   237
      Top             =   9840
      Width           =   615
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   255
      Index           =   239
      Left            =   4200
      TabIndex        =   225
      Top             =   4425
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   255
      Index           =   238
      Left            =   4560
      TabIndex        =   224
      Top             =   4785
      Width           =   210
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF8080&
      BorderWidth     =   2
      Index           =   54
      X1              =   288
      X2              =   312
      Y1              =   303
      Y2              =   327
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Index           =   53
      X1              =   496
      X2              =   496
      Y1              =   295
      Y2              =   375
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Index           =   52
      X1              =   392
      X2              =   496
      Y1              =   375
      Y2              =   375
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Index           =   51
      X1              =   112
      X2              =   624
      Y1              =   479
      Y2              =   479
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Index           =   50
      X1              =   112
      X2              =   328
      Y1              =   439
      Y2              =   439
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Index           =   49
      X1              =   112
      X2              =   112
      Y1              =   439
      Y2              =   479
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Index           =   48
      X1              =   328
      X2              =   392
      Y1              =   439
      Y2              =   375
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   237
      Left            =   9240
      TabIndex        =   223
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroJoint 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "["
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   55
      Left            =   15000
      TabIndex        =   95
      Top             =   11640
      Width           =   210
   End
   Begin VB.Label MetroJoint 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "["
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   54
      Left            =   14520
      TabIndex        =   94
      Top             =   11640
      Width           =   210
   End
   Begin VB.Label MetroJoint 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "["
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   53
      Left            =   14040
      TabIndex        =   93
      Top             =   11640
      Width           =   210
   End
   Begin VB.Label MetroJoint 
      AutoSize        =   -1  'True
      BackStyle       =   0  '투명
      Caption         =   "["
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   52
      Left            =   13560
      TabIndex        =   92
      Top             =   11640
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   236
      Left            =   8640
      TabIndex        =   222
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   235
      Left            =   8040
      TabIndex        =   221
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   234
      Left            =   7560
      TabIndex        =   220
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   233
      Left            =   7080
      TabIndex        =   219
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   232
      Left            =   6600
      TabIndex        =   218
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   231
      Left            =   6120
      TabIndex        =   217
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   230
      Left            =   5640
      TabIndex        =   216
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   229
      Left            =   5160
      TabIndex        =   215
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   228
      Left            =   4740
      TabIndex        =   214
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   227
      Left            =   4320
      TabIndex        =   213
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   226
      Left            =   3900
      TabIndex        =   212
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   225
      Left            =   3420
      TabIndex        =   211
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   224
      Left            =   2940
      TabIndex        =   210
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   223
      Left            =   2460
      TabIndex        =   209
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   222
      Left            =   1980
      TabIndex        =   208
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   221
      Left            =   1560
      TabIndex        =   207
      Top             =   7065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   220
      Left            =   1560
      TabIndex        =   206
      Top             =   6465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   219
      Left            =   2040
      TabIndex        =   205
      Top             =   6465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   218
      Left            =   2520
      TabIndex        =   204
      Top             =   6465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   217
      Left            =   3000
      TabIndex        =   203
      Top             =   6465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   216
      Left            =   3600
      TabIndex        =   202
      Top             =   6465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   215
      Left            =   4200
      TabIndex        =   201
      Top             =   6465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   214
      Left            =   4800
      TabIndex        =   200
      Top             =   6465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   213
      Left            =   5160
      TabIndex        =   199
      Top             =   6105
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   212
      Left            =   5520
      TabIndex        =   198
      Top             =   5745
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   211
      Left            =   5760
      TabIndex        =   197
      Top             =   5505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   210
      Left            =   6240
      TabIndex        =   196
      Top             =   5505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   209
      Left            =   6600
      TabIndex        =   195
      Top             =   5505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   208
      Left            =   6960
      TabIndex        =   194
      Top             =   5505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   207
      Left            =   7320
      TabIndex        =   193
      Top             =   5505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   206
      Left            =   7320
      TabIndex        =   192
      Top             =   4905
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Index           =   205
      Left            =   6960
      TabIndex        =   191
      Top             =   4440
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Index           =   204
      Left            =   18480
      TabIndex        =   190
      Top             =   3465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Index           =   203
      Left            =   18120
      TabIndex        =   189
      Top             =   3465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Index           =   202
      Left            =   17760
      TabIndex        =   188
      Top             =   3465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Index           =   201
      Left            =   17400
      TabIndex        =   187
      Top             =   3465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Index           =   200
      Left            =   17040
      TabIndex        =   186
      Top             =   3465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   255
      Index           =   199
      Left            =   16800
      TabIndex        =   185
      Top             =   3225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   198
      Left            =   18480
      TabIndex        =   184
      Top             =   2985
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   197
      Left            =   18120
      TabIndex        =   183
      Top             =   2985
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   196
      Left            =   17760
      TabIndex        =   182
      Top             =   2985
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   195
      Left            =   17400
      TabIndex        =   181
      Top             =   2985
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   194
      Left            =   17040
      TabIndex        =   180
      Top             =   2985
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   193
      Left            =   16800
      TabIndex        =   179
      Top             =   3225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   192
      Left            =   16320
      TabIndex        =   178
      Top             =   3225
      Width           =   210
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   47
      X1              =   552
      X2              =   576
      Y1              =   223
      Y2              =   239
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF00FF&
      BorderWidth     =   2
      Index           =   46
      X1              =   1144
      X2              =   1240
      Y1              =   239
      Y2              =   239
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF00FF&
      BorderWidth     =   2
      Index           =   45
      X1              =   1128
      X2              =   1144
      Y1              =   223
      Y2              =   239
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   44
      X1              =   1144
      X2              =   1240
      Y1              =   207
      Y2              =   207
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   43
      X1              =   1144
      X2              =   1128
      Y1              =   207
      Y2              =   223
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   39
      X1              =   672
      X2              =   704
      Y1              =   127
      Y2              =   103
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   191
      Left            =   15720
      TabIndex        =   177
      Top             =   3225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   190
      Left            =   15120
      TabIndex        =   176
      Top             =   3225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   189
      Left            =   14520
      TabIndex        =   175
      Top             =   3225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   188
      Left            =   14160
      TabIndex        =   174
      Top             =   3225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   187
      Left            =   13800
      TabIndex        =   173
      Top             =   3225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   186
      Left            =   13320
      TabIndex        =   172
      Top             =   3225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   185
      Left            =   12360
      TabIndex        =   171
      Top             =   3225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   184
      Left            =   12180
      TabIndex        =   170
      Top             =   3045
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   183
      Left            =   12000
      TabIndex        =   169
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   182
      Left            =   11640
      TabIndex        =   168
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   181
      Left            =   11280
      TabIndex        =   167
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   180
      Left            =   10920
      TabIndex        =   166
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   179
      Left            =   10440
      TabIndex        =   165
      Top             =   1425
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   178
      Left            =   9960
      TabIndex        =   164
      Top             =   1785
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   177
      Left            =   9960
      TabIndex        =   163
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   176
      Left            =   9960
      TabIndex        =   162
      Top             =   2985
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   175
      Left            =   9960
      TabIndex        =   161
      Top             =   3465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   174
      Left            =   9600
      TabIndex        =   160
      Top             =   3465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   173
      Left            =   9240
      TabIndex        =   159
      Top             =   3465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   172
      Left            =   8880
      TabIndex        =   158
      Top             =   3465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   171
      Left            =   8520
      TabIndex        =   157
      Top             =   3465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   170
      Left            =   8160
      TabIndex        =   156
      Top             =   3225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   169
      Left            =   7800
      TabIndex        =   155
      Top             =   3105
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   168
      Left            =   7080
      TabIndex        =   154
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   167
      Left            =   6720
      TabIndex        =   153
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   166
      Left            =   6360
      TabIndex        =   152
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   165
      Left            =   6000
      TabIndex        =   151
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   164
      Left            =   5640
      TabIndex        =   150
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   163
      Left            =   5280
      TabIndex        =   149
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   162
      Left            =   4920
      TabIndex        =   148
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   161
      Left            =   4560
      TabIndex        =   147
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   160
      Left            =   4200
      TabIndex        =   146
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   159
      Left            =   3840
      TabIndex        =   145
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   158
      Left            =   3480
      TabIndex        =   144
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   157
      Left            =   3120
      TabIndex        =   143
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   255
      Index           =   156
      Left            =   2760
      TabIndex        =   142
      Top             =   2865
      Width           =   210
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   33
      X1              =   1072
      X2              =   1048
      Y1              =   295
      Y2              =   255
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   32
      X1              =   1048
      X2              =   1072
      Y1              =   367
      Y2              =   335
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   31
      X1              =   560
      X2              =   528
      Y1              =   367
      Y2              =   335
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   28
      X1              =   1072
      X2              =   1072
      Y1              =   335
      Y2              =   295
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   27
      X1              =   1048
      X2              =   560
      Y1              =   367
      Y2              =   367
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   23
      X1              =   880
      X2              =   808
      Y1              =   255
      Y2              =   175
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   22
      X1              =   808
      X2              =   544
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   21
      X1              =   544
      X2              =   528
      Y1              =   175
      Y2              =   191
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   20
      X1              =   1272
      X2              =   1272
      Y1              =   23
      Y2              =   167
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   19
      X1              =   976
      X2              =   1056
      Y1              =   143
      Y2              =   23
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   18
      X1              =   1056
      X2              =   1272
      Y1              =   23
      Y2              =   23
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   15
      X1              =   384
      X2              =   384
      Y1              =   199
      Y2              =   247
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   14
      X1              =   712
      X2              =   976
      Y1              =   143
      Y2              =   143
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   13
      X1              =   696
      X2              =   712
      Y1              =   175
      Y2              =   143
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   11
      X1              =   624
      X2              =   696
      Y1              =   287
      Y2              =   287
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   10
      X1              =   576
      X2              =   624
      Y1              =   239
      Y2              =   287
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   9
      X1              =   552
      X2              =   576
      Y1              =   247
      Y2              =   239
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   6
      X1              =   1144
      X2              =   976
      Y1              =   415
      Y2              =   415
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   5
      X1              =   736
      X2              =   704
      Y1              =   95
      Y2              =   55
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   4
      X1              =   704
      X2              =   384
      Y1              =   55
      Y2              =   55
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   3
      X1              =   384
      X2              =   384
      Y1              =   55
      Y2              =   127
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   2
      X1              =   384
      X2              =   192
      Y1              =   127
      Y2              =   127
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   155
      Left            =   17040
      TabIndex        =   141
      Top             =   6105
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   154
      Left            =   16680
      TabIndex        =   140
      Top             =   6105
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   153
      Left            =   16320
      TabIndex        =   139
      Top             =   6105
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   152
      Left            =   15960
      TabIndex        =   138
      Top             =   6105
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   151
      Left            =   15600
      TabIndex        =   137
      Top             =   6105
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   150
      Left            =   15240
      TabIndex        =   136
      Top             =   6105
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   149
      Left            =   14880
      TabIndex        =   135
      Top             =   6105
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   148
      Left            =   14520
      TabIndex        =   134
      Top             =   6105
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   147
      Left            =   14160
      TabIndex        =   133
      Top             =   5745
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   146
      Left            =   13800
      TabIndex        =   132
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   145
      Left            =   13440
      TabIndex        =   131
      Top             =   5025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   144
      Left            =   13200
      TabIndex        =   130
      Top             =   4785
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   143
      Left            =   12960
      TabIndex        =   129
      Top             =   4545
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   142
      Left            =   12720
      TabIndex        =   128
      Top             =   4305
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   141
      Left            =   12480
      TabIndex        =   127
      Top             =   4065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   140
      Left            =   12240
      TabIndex        =   126
      Top             =   3825
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   139
      Left            =   12000
      TabIndex        =   125
      Top             =   3585
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   138
      Left            =   11760
      TabIndex        =   124
      Top             =   3345
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   137
      Left            =   11400
      TabIndex        =   123
      Top             =   2985
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   136
      Left            =   10920
      TabIndex        =   122
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   135
      Left            =   10920
      TabIndex        =   121
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   134
      Left            =   10920
      TabIndex        =   120
      Top             =   1305
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   133
      Left            =   10440
      TabIndex        =   119
      Top             =   705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   132
      Left            =   9840
      TabIndex        =   118
      Top             =   705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   131
      Left            =   9240
      TabIndex        =   117
      Top             =   705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   130
      Left            =   8640
      TabIndex        =   116
      Top             =   705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   129
      Left            =   8040
      TabIndex        =   115
      Top             =   705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   128
      Left            =   7440
      TabIndex        =   114
      Top             =   705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   127
      Left            =   6600
      TabIndex        =   113
      Top             =   705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   126
      Left            =   6120
      TabIndex        =   112
      Top             =   705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   125
      Left            =   5640
      TabIndex        =   111
      Top             =   705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   124
      Left            =   5640
      TabIndex        =   110
      Top             =   1065
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   123
      Left            =   5640
      TabIndex        =   109
      Top             =   1425
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   122
      Left            =   5640
      TabIndex        =   108
      Top             =   1785
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   121
      Left            =   5160
      TabIndex        =   107
      Top             =   1785
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   120
      Left            =   4680
      TabIndex        =   106
      Top             =   1785
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   119
      Left            =   4200
      TabIndex        =   105
      Top             =   1785
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   118
      Left            =   3720
      TabIndex        =   104
      Top             =   1785
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   117
      Left            =   3240
      TabIndex        =   103
      Top             =   1785
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   116
      Left            =   2760
      TabIndex        =   102
      Top             =   1785
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   114
      Left            =   7800
      TabIndex        =   101
      Top             =   3945
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   113
      Left            =   7800
      TabIndex        =   100
      Top             =   4905
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   112
      Left            =   8280
      TabIndex        =   99
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   111
      Left            =   8880
      TabIndex        =   98
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   110
      Left            =   9480
      TabIndex        =   97
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   109
      Left            =   10080
      TabIndex        =   96
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   108
      Left            =   10680
      TabIndex        =   91
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   107
      Left            =   11280
      TabIndex        =   90
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   106
      Left            =   12000
      TabIndex        =   89
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   105
      Left            =   12600
      TabIndex        =   88
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   104
      Left            =   13200
      TabIndex        =   87
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   103
      Left            =   13800
      TabIndex        =   86
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   102
      Left            =   14160
      TabIndex        =   85
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   101
      Left            =   14520
      TabIndex        =   84
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   100
      Left            =   14880
      TabIndex        =   83
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   99
      Left            =   15240
      TabIndex        =   82
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   98
      Left            =   15600
      TabIndex        =   81
      Top             =   5385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   97
      Left            =   15960
      TabIndex        =   80
      Top             =   4905
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   96
      Left            =   15960
      TabIndex        =   79
      Top             =   4305
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   95
      Left            =   15600
      TabIndex        =   78
      Top             =   3705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   94
      Left            =   15240
      TabIndex        =   77
      Top             =   3705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   93
      Left            =   14880
      TabIndex        =   76
      Top             =   3705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   92
      Left            =   14520
      TabIndex        =   75
      Top             =   3705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   90
      Left            =   13200
      TabIndex        =   73
      Top             =   2985
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   89
      Left            =   12930
      TabIndex        =   72
      Top             =   2655
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   88
      Left            =   12690
      TabIndex        =   71
      Top             =   2385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   87
      Left            =   12360
      TabIndex        =   70
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Index           =   115
      Left            =   2160
      TabIndex        =   69
      Top             =   2880
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   86
      Left            =   13800
      TabIndex        =   68
      Top             =   3705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   85
      Left            =   13440
      TabIndex        =   67
      Top             =   3705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   84
      Left            =   13080
      TabIndex        =   66
      Top             =   3705
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   83
      Left            =   12720
      TabIndex        =   65
      Top             =   3225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   82
      Left            =   12360
      TabIndex        =   64
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   81
      Left            =   12000
      TabIndex        =   63
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   80
      Left            =   11640
      TabIndex        =   62
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   79
      Left            =   11280
      TabIndex        =   61
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   78
      Left            =   10920
      TabIndex        =   60
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   77
      Left            =   10620
      TabIndex        =   59
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   76
      Left            =   10320
      TabIndex        =   58
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   75
      Left            =   9960
      TabIndex        =   57
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   74
      Left            =   9540
      TabIndex        =   56
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   73
      Left            =   9120
      TabIndex        =   55
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   72
      Left            =   8760
      TabIndex        =   54
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   71
      Left            =   8400
      TabIndex        =   53
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   70
      Left            =   8040
      TabIndex        =   52
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   69
      Left            =   7800
      TabIndex        =   51
      Top             =   2745
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   68
      Left            =   7800
      TabIndex        =   50
      Top             =   3105
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   67
      Left            =   7800
      TabIndex        =   49
      Top             =   3465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   65
      Left            =   7080
      TabIndex        =   47
      Top             =   3585
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   64
      Left            =   6360
      TabIndex        =   46
      Top             =   3585
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   63
      Left            =   5640
      TabIndex        =   45
      Top             =   3585
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   62
      Left            =   5640
      TabIndex        =   44
      Top             =   2865
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   61
      Left            =   18960
      TabIndex        =   43
      Top             =   2385
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   60
      Left            =   18960
      TabIndex        =   42
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   59
      Left            =   18960
      TabIndex        =   41
      Top             =   1665
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   58
      Left            =   18960
      TabIndex        =   40
      Top             =   1305
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   57
      Left            =   18960
      TabIndex        =   39
      Top             =   945
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   56
      Left            =   18960
      TabIndex        =   38
      Top             =   585
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   55
      Left            =   18960
      TabIndex        =   37
      Top             =   225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   54
      Left            =   18600
      TabIndex        =   36
      Top             =   225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   53
      Left            =   18240
      TabIndex        =   35
      Top             =   225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   52
      Left            =   17880
      TabIndex        =   34
      Top             =   225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   51
      Left            =   17520
      TabIndex        =   33
      Top             =   225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   50
      Left            =   17160
      TabIndex        =   32
      Top             =   225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   49
      Left            =   16800
      TabIndex        =   31
      Top             =   225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   48
      Left            =   16440
      TabIndex        =   30
      Top             =   225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   47
      Left            =   16080
      TabIndex        =   29
      Top             =   225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   46
      Left            =   15720
      TabIndex        =   28
      Top             =   225
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   45
      Left            =   15480
      TabIndex        =   27
      Top             =   585
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   44
      Left            =   15240
      TabIndex        =   26
      Top             =   945
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   43
      Left            =   15000
      TabIndex        =   25
      Top             =   1305
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   42
      Left            =   14760
      TabIndex        =   24
      Top             =   1665
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   41
      Left            =   14520
      TabIndex        =   23
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   40
      Left            =   14160
      TabIndex        =   22
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   39
      Left            =   13800
      TabIndex        =   21
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   38
      Left            =   13440
      TabIndex        =   20
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   37
      Left            =   13080
      TabIndex        =   19
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   36
      Left            =   12720
      TabIndex        =   18
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   35
      Left            =   12360
      TabIndex        =   17
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   34
      Left            =   12000
      TabIndex        =   16
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   33
      Left            =   11640
      TabIndex        =   15
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   32
      Left            =   11280
      TabIndex        =   14
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   31
      Left            =   10920
      TabIndex        =   13
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   30
      Left            =   10560
      TabIndex        =   12
      Top             =   2025
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   29
      Left            =   10320
      TabIndex        =   11
      Top             =   2505
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   28
      Left            =   10320
      TabIndex        =   10
      Top             =   3105
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   27
      Left            =   10320
      TabIndex        =   9
      Top             =   3585
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   26
      Left            =   10320
      TabIndex        =   8
      Top             =   4185
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   25
      Left            =   9720
      TabIndex        =   7
      Top             =   4185
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   24
      Left            =   9240
      TabIndex        =   6
      Top             =   4185
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   23
      Left            =   8520
      TabIndex        =   5
      Top             =   3465
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   22
      Left            =   8160
      TabIndex        =   4
      Top             =   3585
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   20
      Left            =   6960
      TabIndex        =   2
      Top             =   4080
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Index           =   66
      Left            =   7800
      TabIndex        =   48
      Top             =   3945
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   21
      Left            =   7800
      TabIndex        =   3
      Top             =   3945
      Width           =   210
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   1
      X1              =   736
      X2              =   736
      Y1              =   95
      Y2              =   175
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   12
      X1              =   696
      X2              =   696
      Y1              =   279
      Y2              =   175
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   24
      X1              =   928
      X2              =   832
      Y1              =   255
      Y2              =   143
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   30
      X1              =   528
      X2              =   528
      Y1              =   335
      Y2              =   271
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   17
      X1              =   480
      X2              =   528
      Y1              =   247
      Y2              =   271
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   16
      X1              =   528
      X2              =   528
      Y1              =   271
      Y2              =   191
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   8
      X1              =   496
      X2              =   552
      Y1              =   295
      Y2              =   247
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   38
      X1              =   192
      X2              =   480
      Y1              =   199
      Y2              =   199
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   36
      X1              =   576
      X2              =   664
      Y1              =   239
      Y2              =   239
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   34
      X1              =   480
      X2              =   552
      Y1              =   199
      Y2              =   223
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   37
      X1              =   672
      X2              =   672
      Y1              =   127
      Y2              =   239
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   35
      X1              =   704
      X2              =   760
      Y1              =   103
      Y2              =   175
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   6
      Index           =   40
      X1              =   760
      X2              =   784
      Y1              =   175
      Y2              =   175
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   42
      X1              =   832
      X2              =   1128
      Y1              =   223
      Y2              =   223
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   41
      X1              =   784
      X2              =   832
      Y1              =   175
      Y2              =   223
   End
   Begin VB.Shape ShapeEnd 
      BorderColor     =   &H000000FF&
      BorderWidth     =   2
      DrawMode        =   2  '검정
      FillStyle       =   0  '단색
      Height          =   255
      Left            =   240
      Top             =   1425
      Width           =   255
   End
   Begin VB.Shape ShapeStart 
      BorderColor     =   &H000000FF&
      BorderWidth     =   2
      DrawMode        =   12  'Nop
      FillStyle       =   0  '단색
      Height          =   255
      Left            =   240
      Top             =   1425
      Width           =   255
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   12
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   255
      Index           =   91
      Left            =   13800
      TabIndex        =   74
      Top             =   3705
      Width           =   210
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   29
      X1              =   1048
      X2              =   928
      Y1              =   255
      Y2              =   255
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   26
      X1              =   928
      X2              =   880
      Y1              =   255
      Y2              =   255
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   25
      X1              =   480
      X2              =   384
      Y1              =   247
      Y2              =   247
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim PrevIndex As Integer
Dim PrevIndexColor As Long
Dim SelectedPrev As Boolean

Dim AutoSetId As Boolean
Dim SelectedStartStt As Integer
Dim SelectedStart As Boolean
Dim SelectedEndStt As Integer

Private Sub Command1_Click()
    Stt(PrevIndex).Id = TextId.Text
    Stt(PrevIndex).StationName = PrevIndex
    Stt(PrevIndex).Time = TextTime.Text
    If PrevIndex < List1.ListCount Then List1.RemoveItem PrevIndex
    List1.AddItem TextName.Text, PrevIndex
    List1.ListIndex = PrevIndex
End Sub

Private Sub Command10_Click()
    If Val(TextLineNumber.Text) < 30 Then
        TextLineNumber.Text = Val(TextLineNumber.Text) + 1
    End If
End Sub

Private Sub Command2_Click()
    TextId.Text = Stt(PrevIndex).Id
    TextName.Text = List1.List(Stt(PrevIndex).StationName)
    TextTime.Text = Stt(PrevIndex).Time
End Sub

Private Sub Command3_Click()
    If AutoSetId = True Then
        AutoSetId = False
        SelectedStart = False
        Me.BackColor = RGB(0, 0, 0)
    Else
        SelectedStartStt = 0
        SelectedEndStt = 0
        AutoSetId = True
        Me.BackColor = RGB(20, 20, 20)
    End If
End Sub

Private Sub Command4_Click()
    If Trim(textInputStationName.Text) <> "" Then
        List1.AddItem (Trim(textInputStationName.Text))
        List1.ListIndex = List1.ListCount - 1
        
        Stt(List1.ListIndex).StationName = List1.ListIndex
        Call MetroStation_Click(List1.ListIndex)
        
        textInputStationName.Text = ""
    End If
End Sub

Private Sub Command5_Click()
    Dim PrevListIndex As Integer
    PrevListIndex = List1.ListIndex
    If Not List1.ListIndex Then
        List1.RemoveItem (List1.ListIndex)
        List1.ListIndex = PrevListIndex - 1
    End If
End Sub

Private Sub Command6_Click()
    Dim Index As Integer
    
    If PrevIndex = 0 Then Exit Sub
    
    Index = PrevIndex - 1
    
    If SelectedPrev = True Then
        MetroStation(PrevIndex).ForeColor = PrevIndexColor
    End If

    PrevIndex = Index
    PrevIndexColor = MetroStation(Index).ForeColor
    MetroStation(Index).ForeColor = RGB(255, 255, 255)
    MetroStation(Index).ZOrder 0
    SelectedPrev = True
    
    LabelPrevIndex = Index
    Call Command2_Click
    
End Sub

Private Sub Command7_Click()
    Dim Index As Integer
    
    If PrevIndex + 1 = MetroStation.Count Then Exit Sub
    
    Index = PrevIndex + 1
    
    If SelectedPrev = True Then
        MetroStation(PrevIndex).ForeColor = PrevIndexColor
    End If

    PrevIndex = Index
    PrevIndexColor = MetroStation(Index).ForeColor
    MetroStation(Index).ForeColor = RGB(255, 255, 255)
    MetroStation(Index).ZOrder 0
    SelectedPrev = True
    
    LabelPrevIndex = Index
    Call Command2_Click
    
End Sub

Private Sub Command8_Click()
    Call MetroStation_Click(PrevIndex)
End Sub

Private Sub Command9_Click()
    If Val(TextLineNumber.Text) > 0 Then
        TextLineNumber.Text = Val(TextLineNumber.Text) - 1
    End If
End Sub

Private Sub CommandCreateCode_Click()
    Dim Filenumber As Integer
    Dim TempData As String
    
    Form2.Show
    Form2.Text1 = MakeSource
    
    On Error GoTo Err:
       
    TempData = GetSttData()
        Filenumber = FreeFile
        Open fnCode For Output As Filenumber
            Print #Filenumber, Form2.Text1
        Close Filenumber
    MsgBox "코드를 성공적으로 생성하였습니다." & vbCrLf & "다음 파일에 저장되었습니다." & vbCrLf & fnCode
    Exit Sub
Err:
    If Err.Number > 0 Then MsgBox "파일을 저장할 수 없습니다." & vbCrLf & Err.Description
    
End Sub

Private Sub CommandLoad_Click()
    Dim Filenumber As Integer
    Dim TempData As String
    Dim i As Integer

    On Error GoTo Err:

    Filenumber = FreeFile
    Open fnStt For Input As Filenumber
        Do Until EOF(Filenumber)
            Line Input #Filenumber, TempData
                If Trim(TempData) <> "" Then Call SetSttData(TempData)
        Loop
    Close Filenumber
        
    Filenumber = FreeFile
    Open fnLine For Input As Filenumber
        Do Until EOF(Filenumber)
            Line Input #Filenumber, TempData
                If Trim(TempData) <> "" Then Call SetLineData(TempData)
        Loop
    Close Filenumber
        
    Form1.List1.Clear
    Filenumber = FreeFile
    Open fnNameList For Input As Filenumber
        Do Until EOF(Filenumber)
            Line Input #Filenumber, TempData
                If Trim(TempData) <> "" Then Call SetNameListData(TempData)
        Loop
    Close Filenumber
    
    List1.ListIndex = List1.ListCount - 1
        
    Exit Sub
Err:
    If Err.Number > 0 Then MsgBox Err.Description
End Sub

Private Sub CommandSave_Click()
    Dim Filenumber As Integer
    Dim TempData As String
    
    On Error GoTo Err:
       
    TempData = GetSttData()
        Filenumber = FreeFile
        Open fnStt For Output As Filenumber
            Print #Filenumber, TempData
        Close Filenumber
    
    TempData = GetLineData()
        Filenumber = FreeFile
        Open fnLine For Output As Filenumber
            Print #Filenumber, TempData
        Close Filenumber
    
    TempData = GetNameListData()
        Filenumber = FreeFile
        Open fnNameList For Output As Filenumber
            Print #Filenumber, TempData
        Close Filenumber
    
    Exit Sub
Err:
    If Err.Number > 0 Then MsgBox Err.Description
End Sub

Private Sub Form_Load()
    SelectedPrev = False
    SelectedStart = False
    AutoSetId = False
    
    fnStt = App.Path + "\fnStt.dat"
    fnLine = App.Path + "\fnLine.dat"
    fnNameList = App.Path + "\fnNameList.dat"
    fnCode = App.Path + "\StationData.h"
End Sub

Private Sub MetroJoint_Click(Index As Integer)

End Sub

Private Sub MetroStation_Click(Index As Integer)
    Dim i As Integer
    
    If AutoSetId = True Then
        If SelectedStart = False Then
            SelectedStartStt = Index
            TextStartStt.Text = SelectedStartStt
            ShapeStart.Left = MetroStation(Index).Left
            ShapeStart.Top = MetroStation(Index).Top
            SelectedStart = True
        Else
            SelectedEndStt = Index
            TextEndStt.Text = SelectedEndStt
            ShapeEnd.Left = MetroStation(Index).Left
            ShapeEnd.Top = MetroStation(Index).Top
            
            TextLineName.Text = InputBox("", "호선 이름", "")
            AutoSetId = False
            SelectedStart = False
            Me.BackColor = RGB(0, 0, 0)
            
            MetroLine(Val(TextLineNumber.Text)).StartIndex = TextStartStt.Text
            MetroLine(Val(TextLineNumber.Text)).EndIndex = TextEndStt.Text
            MetroLine(Val(TextLineNumber.Text)).LineName = TextLineName.Text
            
            If SelectedStartStt < SelectedEndStt Then
                For i = SelectedStartStt To SelectedEndStt
                    Stt(i).Id = Val(TextLineNumber.Text) * 100 + Trim(i - SelectedStartStt)
                Next i
            Else
                For i = SelectedEndStt To SelectedStartStt
                    Stt(i).Id = Val(TextLineNumber.Text) * 100 + Trim(i - SelectedEndStt)
                Next i
            End If
            
        End If
    End If

    If SelectedPrev = True Then
        MetroStation(PrevIndex).ForeColor = PrevIndexColor
    End If

    PrevIndex = Index
    PrevIndexColor = MetroStation(Index).ForeColor
    MetroStation(Index).ForeColor = RGB(255, 255, 255)
    MetroStation(Index).ZOrder 0
    SelectedPrev = True
    
    LabelPrevIndex = Index
    Call Command2_Click
        
    
End Sub

Private Sub MetroStation_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    MetroStation(Index).ToolTipText = Stt(Index).StationName
End Sub

Private Sub textInputStationName_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then Call Command4_Click
End Sub

Private Sub TextLineNumber_Change()
    TextLineNumber.Text = Val(TextLineNumber.Text)
    TextStartStt.Text = MetroLine(TextLineNumber).StartIndex
    TextEndStt.Text = MetroLine(TextLineNumber).EndIndex
    TextLineName.Text = MetroLine(TextLineNumber).LineName
    ShapeStart.Left = MetroStation(MetroLine(TextLineNumber).StartIndex).Left
    ShapeStart.Top = MetroStation(MetroLine(TextLineNumber).StartIndex).Top
    ShapeEnd.Left = MetroStation(MetroLine(TextLineNumber).EndIndex).Left
    ShapeEnd.Top = MetroStation(MetroLine(TextLineNumber).EndIndex).Top
    TextStationCount.Text = (Abs(TextEndStt.Text - TextStartStt.Text) + 1) & " 개"
End Sub
