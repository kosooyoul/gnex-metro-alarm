VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Metro Data Editor 1"
   ClientHeight    =   12120
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   19080
   LinkTopic       =   "Form1"
   ScaleHeight     =   808
   ScaleMode       =   3  '픽셀
   ScaleWidth      =   1272
   StartUpPosition =   3  'Windows 기본값
   Begin VB.CommandButton Command10 
      Caption         =   ">"
      Height          =   315
      Left            =   5400
      TabIndex        =   329
      Top             =   1800
      Width           =   375
   End
   Begin VB.CommandButton Command3 
      Caption         =   "라인 설정"
      Height          =   315
      Left            =   4320
      TabIndex        =   308
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CommandButton Command9 
      Caption         =   "<"
      Height          =   315
      Left            =   3960
      TabIndex        =   328
      Top             =   1800
      Width           =   375
   End
   Begin VB.CommandButton Command8 
      Caption         =   "선택"
      Height          =   375
      Left            =   1800
      TabIndex        =   327
      Top             =   2280
      Width           =   855
   End
   Begin VB.CommandButton Command7 
      Caption         =   "다음역"
      Height          =   375
      Left            =   960
      TabIndex        =   326
      Top             =   2280
      Width           =   855
   End
   Begin VB.CommandButton Command6 
      Caption         =   "이전역"
      Height          =   375
      Left            =   120
      TabIndex        =   325
      Top             =   2280
      Width           =   855
   End
   Begin VB.TextBox TextLineName 
      BackColor       =   &H00E0E0E0&
      Height          =   270
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   323
      Top             =   1440
      Width           =   1095
   End
   Begin VB.CommandButton CommandCreateCode 
      Caption         =   "코드생성"
      Height          =   975
      Left            =   12600
      TabIndex        =   322
      Top             =   480
      Width           =   855
   End
   Begin VB.CommandButton CommandLoad 
      Caption         =   "임시 파일 읽기"
      Height          =   495
      Left            =   10680
      TabIndex        =   321
      Top             =   960
      Width           =   1935
   End
   Begin VB.CommandButton CommandSave 
      Caption         =   "임시 저장"
      Height          =   495
      Left            =   10680
      TabIndex        =   320
      Top             =   480
      Width           =   1935
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00000000&
      Caption         =   "sync"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   9360
      TabIndex        =   319
      Top             =   1500
      Value           =   1  '확인
      Width           =   735
   End
   Begin VB.TextBox textInputStationName 
      Height          =   270
      Left            =   6360
      TabIndex        =   318
      Top             =   1560
      Width           =   1935
   End
   Begin VB.CommandButton Command5 
      Caption         =   "삭제"
      Height          =   315
      Left            =   8400
      TabIndex        =   317
      Top             =   1080
      Width           =   855
   End
   Begin VB.CommandButton Command4 
      Caption         =   "추가"
      Height          =   315
      Left            =   8400
      TabIndex        =   316
      Top             =   1560
      Width           =   855
   End
   Begin VB.ListBox List1 
      Height          =   1140
      Left            =   6360
      TabIndex        =   315
      Top             =   360
      Width           =   1935
   End
   Begin VB.TextBox TextLineNumber 
      Height          =   270
      Left            =   4320
      TabIndex        =   314
      Top             =   1080
      Width           =   1095
   End
   Begin VB.TextBox TextEndStt 
      BackColor       =   &H00E0E0E0&
      Height          =   270
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   312
      Top             =   720
      Width           =   1095
   End
   Begin VB.TextBox TextStartStt 
      BackColor       =   &H00E0E0E0&
      Height          =   270
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   311
      Top             =   360
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      BorderStyle     =   0  '없음
      Caption         =   "Frame1"
      Height          =   1695
      Left            =   120
      TabIndex        =   298
      Top             =   75
      Width           =   3255
      Begin VB.CommandButton Command2 
         Caption         =   "리셋"
         Height          =   320
         Left            =   2160
         TabIndex        =   306
         Top             =   1365
         Width           =   855
      End
      Begin VB.CommandButton Command1 
         Caption         =   "확인"
         Height          =   320
         Left            =   1200
         TabIndex        =   305
         Top             =   1365
         Width           =   855
      End
      Begin VB.TextBox TextTime 
         Height          =   270
         Left            =   1200
         TabIndex        =   301
         Top             =   1040
         Width           =   1815
      End
      Begin VB.TextBox TextName 
         Height          =   270
         Left            =   1200
         TabIndex        =   300
         Top             =   675
         Width           =   1815
      End
      Begin VB.TextBox TextId 
         Height          =   270
         Left            =   1200
         TabIndex        =   299
         Top             =   315
         Width           =   1815
      End
      Begin VB.Label LabelPrevIndex 
         BackStyle       =   0  '투명
         Caption         =   "0"
         ForeColor       =   &H0000FFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   307
         Top             =   120
         Width           =   735
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "소요시간"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   304
         Top             =   1080
         Width           =   975
      End
      Begin VB.Label Label2 
         BackStyle       =   0  '투명
         Caption         =   "역 이름"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   303
         Top             =   720
         Width           =   975
      End
      Begin VB.Label Label1 
         BackStyle       =   0  '투명
         Caption         =   "역 ID"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   302
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
      Top             =   10920
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
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFFFF&
      X1              =   0
      X2              =   1272
      Y1              =   144
      Y2              =   144
   End
   Begin VB.Label Label7 
      BackStyle       =   0  '투명
      Caption         =   "호선이름"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3480
      TabIndex        =   324
      Top             =   1440
      Width           =   855
   End
   Begin VB.Label Label6 
      BackStyle       =   0  '투명
      Caption         =   "라인번호"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3480
      TabIndex        =   313
      Top             =   1080
      Width           =   855
   End
   Begin VB.Label Label5 
      BackStyle       =   0  '투명
      Caption         =   "종작역"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3720
      TabIndex        =   310
      Top             =   720
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  '투명
      Caption         =   "시작역"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3720
      TabIndex        =   309
      Top             =   360
      Width           =   615
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
      Index           =   50
      Left            =   6840
      TabIndex        =   162
      Top             =   7560
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
      ForeColor       =   &H00400000&
      Height          =   255
      Index           =   239
      Left            =   6480
      TabIndex        =   297
      Top             =   7320
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
      ForeColor       =   &H00400000&
      Height          =   255
      Index           =   238
      Left            =   6840
      TabIndex        =   296
      Top             =   7680
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
      Index           =   49
      Left            =   7200
      TabIndex        =   161
      Top             =   6960
      Width           =   210
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00400000&
      BorderWidth     =   2
      Index           =   54
      X1              =   440
      X2              =   464
      Y1              =   496
      Y2              =   520
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Index           =   53
      X1              =   488
      X2              =   488
      Y1              =   440
      Y2              =   520
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Index           =   52
      X1              =   384
      X2              =   488
      Y1              =   520
      Y2              =   520
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Index           =   51
      X1              =   104
      X2              =   616
      Y1              =   624
      Y2              =   624
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Index           =   50
      X1              =   104
      X2              =   320
      Y1              =   584
      Y2              =   584
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Index           =   49
      X1              =   104
      X2              =   104
      Y1              =   584
      Y2              =   624
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      Index           =   48
      X1              =   320
      X2              =   384
      Y1              =   584
      Y2              =   520
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
      Left            =   9120
      TabIndex        =   295
      Top             =   9240
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
      TabIndex        =   167
      Top             =   11040
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
      TabIndex        =   166
      Top             =   11040
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
      TabIndex        =   165
      Top             =   11040
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
      TabIndex        =   164
      Top             =   11040
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
      Index           =   51
      Left            =   5040
      TabIndex        =   163
      Top             =   8160
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
      Index           =   2
      Left            =   7200
      TabIndex        =   44
      Top             =   6360
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
      Left            =   8520
      TabIndex        =   294
      Top             =   9240
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
      Left            =   7920
      TabIndex        =   293
      Top             =   9240
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
      Left            =   7440
      TabIndex        =   292
      Top             =   9240
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
      Left            =   6960
      TabIndex        =   291
      Top             =   9240
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
      Left            =   6480
      TabIndex        =   290
      Top             =   9240
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
      Left            =   6000
      TabIndex        =   289
      Top             =   9240
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
      Left            =   5520
      TabIndex        =   288
      Top             =   9240
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
      Left            =   5040
      TabIndex        =   287
      Top             =   9240
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
      Left            =   4620
      TabIndex        =   286
      Top             =   9240
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
      Left            =   4200
      TabIndex        =   285
      Top             =   9240
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
      Left            =   3780
      TabIndex        =   284
      Top             =   9240
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
      Left            =   3300
      TabIndex        =   283
      Top             =   9240
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
      Left            =   2820
      TabIndex        =   282
      Top             =   9240
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
      Left            =   2340
      TabIndex        =   281
      Top             =   9240
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
      Left            =   1860
      TabIndex        =   280
      Top             =   9240
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
      Left            =   1440
      TabIndex        =   279
      Top             =   9240
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
      Left            =   1440
      TabIndex        =   278
      Top             =   8640
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
      Left            =   1920
      TabIndex        =   277
      Top             =   8640
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
      Left            =   2400
      TabIndex        =   276
      Top             =   8640
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
      Left            =   2880
      TabIndex        =   275
      Top             =   8640
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
      Left            =   3480
      TabIndex        =   274
      Top             =   8640
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
      Left            =   4080
      TabIndex        =   273
      Top             =   8640
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
      Left            =   4680
      TabIndex        =   272
      Top             =   8640
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
      Left            =   5040
      TabIndex        =   271
      Top             =   8280
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
      Left            =   5400
      TabIndex        =   270
      Top             =   7920
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
      Left            =   5640
      TabIndex        =   269
      Top             =   7680
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
      Left            =   6120
      TabIndex        =   268
      Top             =   7680
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
      Left            =   6480
      TabIndex        =   267
      Top             =   7680
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
      Left            =   6840
      TabIndex        =   266
      Top             =   7680
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
      Left            =   7200
      TabIndex        =   265
      Top             =   7680
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
      Left            =   7200
      TabIndex        =   264
      Top             =   7080
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
      Left            =   7200
      TabIndex        =   263
      Top             =   6480
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
      Index           =   48
      Left            =   16680
      TabIndex        =   160
      Top             =   5280
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
      Index           =   47
      Left            =   16200
      TabIndex        =   159
      Top             =   5280
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
      Left            =   18360
      TabIndex        =   262
      Top             =   5640
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
      Left            =   18000
      TabIndex        =   261
      Top             =   5640
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
      Left            =   17640
      TabIndex        =   260
      Top             =   5640
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
      Left            =   17280
      TabIndex        =   259
      Top             =   5640
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
      Left            =   16920
      TabIndex        =   258
      Top             =   5640
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
      Left            =   16680
      TabIndex        =   257
      Top             =   5400
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
      Left            =   18360
      TabIndex        =   256
      Top             =   5160
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
      Left            =   18000
      TabIndex        =   255
      Top             =   5160
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
      Left            =   17640
      TabIndex        =   254
      Top             =   5160
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
      Left            =   17280
      TabIndex        =   253
      Top             =   5160
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
      Left            =   16920
      TabIndex        =   252
      Top             =   5160
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
      Left            =   16680
      TabIndex        =   251
      Top             =   5400
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
      Left            =   16200
      TabIndex        =   250
      Top             =   5400
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
      Index           =   25
      Left            =   11520
      TabIndex        =   113
      Top             =   4560
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
      Index           =   24
      Left            =   11160
      TabIndex        =   112
      Top             =   4560
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
      Index           =   9
      Left            =   10800
      TabIndex        =   50
      Top             =   4080
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
      Index           =   22
      Left            =   9840
      TabIndex        =   110
      Top             =   4560
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
      Index           =   46
      Left            =   14400
      TabIndex        =   158
      Top             =   5280
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
      Index           =   45
      Left            =   9840
      TabIndex        =   157
      Top             =   5520
      Width           =   210
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   47
      X1              =   544
      X2              =   568
      Y1              =   368
      Y2              =   384
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
      Index           =   4
      Left            =   8400
      TabIndex        =   45
      Top             =   5520
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
      Index           =   19
      Left            =   7680
      TabIndex        =   78
      Top             =   5160
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
      Index           =   18
      Left            =   5520
      TabIndex        =   77
      Top             =   4920
      Width           =   210
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF00FF&
      BorderWidth     =   2
      Index           =   46
      X1              =   1136
      X2              =   1232
      Y1              =   384
      Y2              =   384
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF00FF&
      BorderWidth     =   2
      Index           =   45
      X1              =   1120
      X2              =   1136
      Y1              =   368
      Y2              =   384
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   44
      X1              =   1136
      X2              =   1232
      Y1              =   352
      Y2              =   352
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   43
      X1              =   1136
      X2              =   1120
      Y1              =   352
      Y2              =   368
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   39
      X1              =   664
      X2              =   696
      Y1              =   272
      Y2              =   248
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
      Index           =   44
      Left            =   8760
      TabIndex        =   156
      Top             =   5520
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
      Index           =   43
      Left            =   3360
      TabIndex        =   155
      Top             =   4920
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
      Index           =   191
      Left            =   15600
      TabIndex        =   249
      Top             =   5400
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
      Left            =   15000
      TabIndex        =   248
      Top             =   5400
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
      Left            =   14400
      TabIndex        =   247
      Top             =   5400
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
      Left            =   14100
      TabIndex        =   246
      Top             =   5400
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
      TabIndex        =   245
      Top             =   5400
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
      Left            =   13200
      TabIndex        =   244
      Top             =   5400
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
      Left            =   12240
      TabIndex        =   243
      Top             =   5400
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
      Left            =   12060
      TabIndex        =   242
      Top             =   5220
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
      Left            =   11880
      TabIndex        =   241
      Top             =   5040
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
      Left            =   11520
      TabIndex        =   240
      Top             =   4680
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
      Left            =   11160
      TabIndex        =   239
      Top             =   4680
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
      Left            =   10800
      TabIndex        =   238
      Top             =   4200
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
      Left            =   10320
      TabIndex        =   237
      Top             =   3600
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
      Left            =   9840
      TabIndex        =   236
      Top             =   3960
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
      Left            =   9840
      TabIndex        =   235
      Top             =   4680
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
      Left            =   9840
      TabIndex        =   234
      Top             =   5160
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
      Left            =   9840
      TabIndex        =   233
      Top             =   5640
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
      Left            =   9480
      TabIndex        =   232
      Top             =   5640
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
      Left            =   9120
      TabIndex        =   231
      Top             =   5640
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
      Left            =   8760
      TabIndex        =   230
      Top             =   5640
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
      Left            =   8400
      TabIndex        =   229
      Top             =   5640
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
      Left            =   8040
      TabIndex        =   228
      Top             =   5400
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
      Left            =   7680
      TabIndex        =   227
      Top             =   5280
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
      Left            =   6960
      TabIndex        =   226
      Top             =   5040
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
      Left            =   6600
      TabIndex        =   225
      Top             =   5040
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
      Left            =   6240
      TabIndex        =   224
      Top             =   5040
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
      Left            =   5880
      TabIndex        =   223
      Top             =   5040
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
      Left            =   5520
      TabIndex        =   222
      Top             =   5040
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
      Left            =   5160
      TabIndex        =   221
      Top             =   5040
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
      Left            =   4800
      TabIndex        =   220
      Top             =   5040
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
      Left            =   4440
      TabIndex        =   219
      Top             =   5040
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
      Left            =   4080
      TabIndex        =   218
      Top             =   5040
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
      Left            =   3720
      TabIndex        =   217
      Top             =   5040
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
      Left            =   3360
      TabIndex        =   216
      Top             =   5040
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
      Left            =   3000
      TabIndex        =   215
      Top             =   5040
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
      Left            =   2640
      TabIndex        =   214
      Top             =   5040
      Width           =   210
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   33
      X1              =   1064
      X2              =   1040
      Y1              =   440
      Y2              =   400
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   32
      X1              =   1040
      X2              =   1064
      Y1              =   512
      Y2              =   480
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   31
      X1              =   552
      X2              =   520
      Y1              =   512
      Y2              =   480
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   29
      X1              =   1040
      X2              =   944
      Y1              =   400
      Y2              =   400
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   28
      X1              =   1064
      X2              =   1064
      Y1              =   480
      Y2              =   440
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   27
      X1              =   1040
      X2              =   552
      Y1              =   512
      Y2              =   512
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   26
      X1              =   920
      X2              =   872
      Y1              =   400
      Y2              =   400
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   23
      X1              =   872
      X2              =   800
      Y1              =   400
      Y2              =   320
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   22
      X1              =   800
      X2              =   536
      Y1              =   320
      Y2              =   320
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   21
      X1              =   536
      X2              =   520
      Y1              =   320
      Y2              =   336
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   20
      X1              =   1264
      X2              =   1264
      Y1              =   168
      Y2              =   312
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   19
      X1              =   968
      X2              =   1048
      Y1              =   288
      Y2              =   168
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   18
      X1              =   1048
      X2              =   1264
      Y1              =   168
      Y2              =   168
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   15
      X1              =   376
      X2              =   376
      Y1              =   344
      Y2              =   392
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   14
      X1              =   704
      X2              =   968
      Y1              =   288
      Y2              =   288
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   13
      X1              =   688
      X2              =   704
      Y1              =   320
      Y2              =   288
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   11
      X1              =   616
      X2              =   688
      Y1              =   432
      Y2              =   432
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   10
      X1              =   568
      X2              =   616
      Y1              =   384
      Y2              =   432
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   9
      X1              =   544
      X2              =   568
      Y1              =   392
      Y2              =   384
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
      Index           =   41
      Left            =   15120
      TabIndex        =   153
      Top             =   8160
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
      Index           =   42
      Left            =   16920
      TabIndex        =   154
      Top             =   8160
      Width           =   210
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   6
      X1              =   1136
      X2              =   968
      Y1              =   560
      Y2              =   560
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   5
      X1              =   728
      X2              =   696
      Y1              =   240
      Y2              =   200
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   4
      X1              =   696
      X2              =   376
      Y1              =   200
      Y2              =   200
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   3
      X1              =   376
      X2              =   376
      Y1              =   200
      Y2              =   272
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   2
      X1              =   376
      X2              =   184
      Y1              =   272
      Y2              =   272
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
      Left            =   16920
      TabIndex        =   213
      Top             =   8280
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
      Left            =   16560
      TabIndex        =   212
      Top             =   8280
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
      Left            =   16200
      TabIndex        =   211
      Top             =   8280
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
      Left            =   15840
      TabIndex        =   210
      Top             =   8280
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
      Left            =   15480
      TabIndex        =   209
      Top             =   8280
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
      Left            =   15120
      TabIndex        =   208
      Top             =   8280
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
      Left            =   14760
      TabIndex        =   207
      Top             =   8280
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
      Index           =   32
      Left            =   13680
      TabIndex        =   144
      Top             =   7440
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
      Index           =   23
      Left            =   10800
      TabIndex        =   111
      Top             =   4560
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
      Index           =   40
      Left            =   13320
      TabIndex        =   152
      Top             =   7080
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
      Index           =   39
      Left            =   12360
      TabIndex        =   151
      Top             =   6120
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
      Index           =   38
      Left            =   11880
      TabIndex        =   150
      Top             =   5640
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
      Index           =   37
      Left            =   11280
      TabIndex        =   149
      Top             =   5040
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
      Index           =   36
      Left            =   7320
      TabIndex        =   148
      Top             =   2760
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
      Index           =   35
      Left            =   6480
      TabIndex        =   147
      Top             =   2760
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
      Left            =   14400
      TabIndex        =   206
      Top             =   8280
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
      Left            =   14040
      TabIndex        =   205
      Top             =   7920
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
      Left            =   13680
      TabIndex        =   204
      Top             =   7560
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
      Left            =   13320
      TabIndex        =   203
      Top             =   7200
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
      Left            =   13080
      TabIndex        =   202
      Top             =   6960
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
      Left            =   12840
      TabIndex        =   201
      Top             =   6720
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
      Left            =   12600
      TabIndex        =   200
      Top             =   6480
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
      Left            =   12360
      TabIndex        =   199
      Top             =   6240
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
      Left            =   12120
      TabIndex        =   198
      Top             =   6000
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
      Left            =   11880
      TabIndex        =   197
      Top             =   5760
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
      Left            =   11640
      TabIndex        =   196
      Top             =   5520
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
      Left            =   11280
      TabIndex        =   195
      Top             =   5160
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
      Left            =   10800
      TabIndex        =   194
      Top             =   4680
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
      Left            =   10800
      TabIndex        =   193
      Top             =   4200
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
      Left            =   10800
      TabIndex        =   192
      Top             =   3480
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
      Left            =   10320
      TabIndex        =   191
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
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   132
      Left            =   9720
      TabIndex        =   190
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
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   131
      Left            =   9120
      TabIndex        =   189
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
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   130
      Left            =   8520
      TabIndex        =   188
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
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   129
      Left            =   7920
      TabIndex        =   187
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
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   128
      Left            =   7320
      TabIndex        =   186
      Top             =   2880
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
      Index           =   34
      Left            =   7680
      TabIndex        =   146
      Top             =   6960
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
      Index           =   29
      Left            =   14400
      TabIndex        =   117
      Top             =   5760
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
      Index           =   28
      Left            =   13680
      TabIndex        =   116
      Top             =   5760
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
      Index           =   3
      Left            =   7680
      TabIndex        =   86
      Top             =   6000
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
      Index           =   12
      Left            =   12240
      TabIndex        =   53
      Top             =   4080
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
      Index           =   8
      Left            =   10200
      TabIndex        =   49
      Top             =   4560
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
      Left            =   6480
      TabIndex        =   185
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
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   126
      Left            =   6000
      TabIndex        =   184
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
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   125
      Left            =   5520
      TabIndex        =   183
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
      ForeColor       =   &H000080FF&
      Height          =   255
      Index           =   124
      Left            =   5520
      TabIndex        =   182
      Top             =   3240
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
      Left            =   5520
      TabIndex        =   181
      Top             =   3600
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
      Left            =   5520
      TabIndex        =   180
      Top             =   3960
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
      Left            =   5040
      TabIndex        =   179
      Top             =   3960
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
      Left            =   4560
      TabIndex        =   178
      Top             =   3960
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
      Left            =   4080
      TabIndex        =   177
      Top             =   3960
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
      Left            =   3600
      TabIndex        =   176
      Top             =   3960
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
      Left            =   3120
      TabIndex        =   175
      Top             =   3960
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
      Left            =   2640
      TabIndex        =   174
      Top             =   3960
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
      Index           =   115
      Left            =   7680
      TabIndex        =   173
      Top             =   6120
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
      Left            =   7680
      TabIndex        =   172
      Top             =   7080
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
      Left            =   8160
      TabIndex        =   171
      Top             =   7560
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
      Left            =   8760
      TabIndex        =   170
      Top             =   7560
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
      Left            =   9360
      TabIndex        =   169
      Top             =   7560
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
      Left            =   9960
      TabIndex        =   168
      Top             =   7560
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
      Index           =   33
      Left            =   11880
      TabIndex        =   145
      Top             =   7440
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
      Index           =   31
      Left            =   14760
      TabIndex        =   119
      Top             =   7440
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
      Index           =   30
      Left            =   15840
      TabIndex        =   118
      Top             =   6360
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
      Left            =   10560
      TabIndex        =   143
      Top             =   7560
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
      Left            =   11160
      TabIndex        =   142
      Top             =   7560
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
      Left            =   11880
      TabIndex        =   141
      Top             =   7560
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
      Left            =   12480
      TabIndex        =   140
      Top             =   7560
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
      Left            =   13080
      TabIndex        =   139
      Top             =   7560
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
      Left            =   13680
      TabIndex        =   138
      Top             =   7560
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
      Left            =   14040
      TabIndex        =   137
      Top             =   7560
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
      Left            =   14400
      TabIndex        =   136
      Top             =   7560
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
      Left            =   14760
      TabIndex        =   135
      Top             =   7560
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
      Left            =   15120
      TabIndex        =   134
      Top             =   7560
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
      Left            =   15480
      TabIndex        =   133
      Top             =   7560
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
      Left            =   15840
      TabIndex        =   132
      Top             =   7080
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
      Left            =   15840
      TabIndex        =   131
      Top             =   6480
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
      Left            =   15480
      TabIndex        =   130
      Top             =   5880
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
      Left            =   15120
      TabIndex        =   129
      Top             =   5880
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
      Left            =   14760
      TabIndex        =   128
      Top             =   5880
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
      Left            =   14400
      TabIndex        =   127
      Top             =   5880
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
      Left            =   14040
      TabIndex        =   126
      Top             =   5880
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
      Index           =   91
      Left            =   13080
      TabIndex        =   125
      Top             =   5160
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
      Left            =   12810
      TabIndex        =   124
      Top             =   4830
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
      Left            =   12570
      TabIndex        =   123
      Top             =   4560
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
      Left            =   12240
      TabIndex        =   122
      Top             =   4200
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
      Index           =   87
      Left            =   13320
      TabIndex        =   121
      Top             =   4680
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
      Left            =   13680
      TabIndex        =   120
      Top             =   5880
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
      Index           =   27
      Left            =   12600
      TabIndex        =   115
      Top             =   5280
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
      Index           =   26
      Left            =   11880
      TabIndex        =   114
      Top             =   4560
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
      Index           =   21
      Left            =   8280
      TabIndex        =   109
      Top             =   4560
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
      Index           =   20
      Left            =   7680
      TabIndex        =   108
      Top             =   4800
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
      Left            =   13320
      TabIndex        =   107
      Top             =   5880
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
      Left            =   12960
      TabIndex        =   106
      Top             =   5880
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
      Left            =   12600
      TabIndex        =   105
      Top             =   5400
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
      Left            =   12240
      TabIndex        =   104
      Top             =   5040
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
      Left            =   11880
      TabIndex        =   103
      Top             =   4680
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
      Left            =   11520
      TabIndex        =   102
      Top             =   4680
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
      Left            =   11160
      TabIndex        =   101
      Top             =   4680
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
      Left            =   10800
      TabIndex        =   100
      Top             =   4680
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
      Left            =   10500
      TabIndex        =   99
      Top             =   4680
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
      Left            =   10200
      TabIndex        =   98
      Top             =   4680
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
      Left            =   9840
      TabIndex        =   97
      Top             =   4680
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
      Left            =   9420
      TabIndex        =   96
      Top             =   4680
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
      Left            =   9000
      TabIndex        =   95
      Top             =   4680
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
      Left            =   8640
      TabIndex        =   94
      Top             =   4680
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
      Left            =   8280
      TabIndex        =   93
      Top             =   4680
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
      Left            =   7920
      TabIndex        =   92
      Top             =   4680
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
      Left            =   7680
      TabIndex        =   91
      Top             =   4920
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
      Left            =   7680
      TabIndex        =   90
      Top             =   5280
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
      Left            =   7680
      TabIndex        =   89
      Top             =   5640
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
      Left            =   6960
      TabIndex        =   87
      Top             =   6000
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
      Left            =   6240
      TabIndex        =   85
      Top             =   5880
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
      Left            =   5520
      TabIndex        =   84
      Top             =   5760
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
      Left            =   5520
      TabIndex        =   83
      Top             =   5040
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
      Left            =   18840
      TabIndex        =   82
      Top             =   4560
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
      Left            =   18840
      TabIndex        =   81
      Top             =   4200
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
      Left            =   18840
      TabIndex        =   80
      Top             =   3840
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
      Left            =   18840
      TabIndex        =   79
      Top             =   3480
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
      Index           =   17
      Left            =   16320
      TabIndex        =   76
      Top             =   2280
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
      Index           =   16
      Left            =   15360
      TabIndex        =   75
      Top             =   2640
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
      Index           =   15
      Left            =   14640
      TabIndex        =   74
      Top             =   3720
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
      Index           =   14
      Left            =   14400
      TabIndex        =   73
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
      ForeColor       =   &H00FF0000&
      Height          =   255
      Index           =   57
      Left            =   18840
      TabIndex        =   72
      Top             =   3120
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
      Left            =   18840
      TabIndex        =   71
      Top             =   2760
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
      Left            =   18840
      TabIndex        =   70
      Top             =   2400
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
      Left            =   18480
      TabIndex        =   69
      Top             =   2400
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
      Left            =   18120
      TabIndex        =   68
      Top             =   2400
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
      Left            =   17760
      TabIndex        =   67
      Top             =   2400
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
      Left            =   17400
      TabIndex        =   66
      Top             =   2400
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
      Left            =   17040
      TabIndex        =   65
      Top             =   2400
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
      Left            =   16680
      TabIndex        =   64
      Top             =   2400
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
      Left            =   16320
      TabIndex        =   63
      Top             =   2400
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
      Left            =   15960
      TabIndex        =   62
      Top             =   2400
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
      Left            =   15600
      TabIndex        =   61
      Top             =   2400
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
      Left            =   15360
      TabIndex        =   60
      Top             =   2760
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
      Left            =   15120
      TabIndex        =   59
      Top             =   3120
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
      Left            =   14880
      TabIndex        =   58
      Top             =   3480
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
      Left            =   14640
      TabIndex        =   57
      Top             =   3840
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
      Left            =   14400
      TabIndex        =   56
      Top             =   4200
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
      Left            =   14040
      TabIndex        =   55
      Top             =   4200
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
      Index           =   13
      Left            =   13320
      TabIndex        =   54
      Top             =   4080
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
      Index           =   11
      Left            =   11880
      TabIndex        =   52
      Top             =   4080
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
      Index           =   10
      Left            =   11520
      TabIndex        =   51
      Top             =   4080
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
      Index           =   7
      Left            =   10200
      TabIndex        =   48
      Top             =   5160
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
      Index           =   6
      Left            =   10200
      TabIndex        =   47
      Top             =   6240
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
      Index           =   5
      Left            =   9600
      TabIndex        =   46
      Top             =   6240
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
      Left            =   13680
      TabIndex        =   43
      Top             =   4200
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
      Left            =   13320
      TabIndex        =   42
      Top             =   4200
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
      Left            =   12960
      TabIndex        =   41
      Top             =   4200
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
      Left            =   12600
      TabIndex        =   40
      Top             =   4200
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
      Left            =   12240
      TabIndex        =   39
      Top             =   4200
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
      Left            =   11880
      TabIndex        =   38
      Top             =   4200
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
      Left            =   11520
      TabIndex        =   37
      Top             =   4200
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
      Left            =   11160
      TabIndex        =   36
      Top             =   4200
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
      Left            =   10800
      TabIndex        =   35
      Top             =   4200
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
      Left            =   10440
      TabIndex        =   34
      Top             =   4200
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
      Left            =   10200
      TabIndex        =   33
      Top             =   4680
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
      Left            =   10200
      TabIndex        =   32
      Top             =   5280
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
      Left            =   10200
      TabIndex        =   31
      Top             =   5760
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
      Left            =   10200
      TabIndex        =   30
      Top             =   6360
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
      Left            =   9600
      TabIndex        =   29
      Top             =   6360
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
      Left            =   9120
      TabIndex        =   28
      Top             =   6360
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
      Left            =   8400
      TabIndex        =   27
      Top             =   5640
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
      Left            =   8040
      TabIndex        =   26
      Top             =   5760
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
      Left            =   7200
      TabIndex        =   24
      Top             =   6480
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
      Index           =   1
      Left            =   5760
      TabIndex        =   23
      Top             =   6360
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
      Index           =   0
      Left            =   3240
      TabIndex        =   22
      Top             =   6360
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
      Index           =   19
      Left            =   6840
      TabIndex        =   21
      Top             =   6480
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
      Index           =   18
      Left            =   6480
      TabIndex        =   20
      Top             =   6480
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
      Index           =   17
      Left            =   6120
      TabIndex        =   19
      Top             =   6480
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
      Index           =   16
      Left            =   5760
      TabIndex        =   18
      Top             =   6480
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
      Index           =   15
      Left            =   5400
      TabIndex        =   17
      Top             =   6480
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
      Index           =   14
      Left            =   5040
      TabIndex        =   16
      Top             =   6480
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
      Index           =   13
      Left            =   4680
      TabIndex        =   15
      Top             =   6480
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
      Index           =   12
      Left            =   4320
      TabIndex        =   14
      Top             =   6480
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
      Index           =   11
      Left            =   3960
      TabIndex        =   13
      Top             =   6480
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
      Index           =   10
      Left            =   3600
      TabIndex        =   12
      Top             =   6480
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
      Index           =   9
      Left            =   3240
      TabIndex        =   11
      Top             =   6480
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
      Index           =   8
      Left            =   2880
      TabIndex        =   10
      Top             =   6480
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
      Index           =   7
      Left            =   2520
      TabIndex        =   9
      Top             =   6480
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
      Index           =   6
      Left            =   2160
      TabIndex        =   8
      Top             =   6480
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
      Index           =   5
      Left            =   1800
      TabIndex        =   7
      Top             =   6480
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
      Index           =   4
      Left            =   1440
      TabIndex        =   6
      Top             =   6480
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
      Index           =   3
      Left            =   1080
      TabIndex        =   5
      Top             =   6480
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
      Index           =   2
      Left            =   720
      TabIndex        =   4
      Top             =   6480
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
      Index           =   1
      Left            =   360
      TabIndex        =   3
      Top             =   6480
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
      Index           =   0
      Left            =   0
      TabIndex        =   2
      Top             =   6480
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
      Left            =   7680
      TabIndex        =   88
      Top             =   6120
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
      Left            =   7680
      TabIndex        =   25
      Top             =   6120
      Width           =   210
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   0
      X1              =   728
      X2              =   968
      Y1              =   320
      Y2              =   560
   End
   Begin VB.Line Line1 
      BorderColor     =   &H000080FF&
      BorderWidth     =   2
      Index           =   1
      X1              =   728
      X2              =   728
      Y1              =   240
      Y2              =   320
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   7
      X1              =   8
      X2              =   488
      Y1              =   440
      Y2              =   440
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   12
      X1              =   688
      X2              =   688
      Y1              =   424
      Y2              =   320
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   25
      X1              =   952
      X2              =   920
      Y1              =   344
      Y2              =   304
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   24
      X1              =   920
      X2              =   824
      Y1              =   400
      Y2              =   288
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00008000&
      BorderWidth     =   2
      Index           =   30
      X1              =   520
      X2              =   520
      Y1              =   480
      Y2              =   416
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   17
      X1              =   376
      X2              =   520
      Y1              =   392
      Y2              =   416
   End
   Begin VB.Line Line1 
      BorderColor     =   &H0000FF00&
      BorderWidth     =   2
      Index           =   16
      X1              =   520
      X2              =   520
      Y1              =   416
      Y2              =   336
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF0000&
      BorderWidth     =   2
      Index           =   8
      X1              =   488
      X2              =   544
      Y1              =   440
      Y2              =   392
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   38
      X1              =   184
      X2              =   472
      Y1              =   344
      Y2              =   344
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   36
      X1              =   568
      X2              =   656
      Y1              =   384
      Y2              =   384
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   34
      X1              =   472
      X2              =   544
      Y1              =   344
      Y2              =   368
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   37
      X1              =   664
      X2              =   664
      Y1              =   272
      Y2              =   384
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   35
      X1              =   696
      X2              =   752
      Y1              =   248
      Y2              =   320
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   6
      Index           =   40
      X1              =   752
      X2              =   776
      Y1              =   320
      Y2              =   320
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   42
      X1              =   824
      X2              =   1120
      Y1              =   368
      Y2              =   368
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800080&
      BorderWidth     =   2
      Index           =   41
      X1              =   776
      X2              =   824
      Y1              =   320
      Y2              =   368
   End
   Begin VB.Shape ShapeEnd 
      BorderColor     =   &H000000FF&
      BorderWidth     =   2
      DrawMode        =   2  '검정
      FillStyle       =   0  '단색
      Height          =   255
      Left            =   120
      Top             =   3600
      Width           =   255
   End
   Begin VB.Shape ShapeStart 
      BorderColor     =   &H000000FF&
      BorderWidth     =   2
      DrawMode        =   12  'Nop
      FillStyle       =   0  '단색
      Height          =   255
      Left            =   120
      Top             =   3600
      Width           =   255
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
End Sub
