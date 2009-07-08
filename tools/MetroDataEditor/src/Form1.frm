VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Metro Data Editor 1"
   ClientHeight    =   12840
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   19080
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   856
   ScaleMode       =   3  '픽셀
   ScaleWidth      =   1272
   StartUpPosition =   3  'Windows 기본값
   Begin VB.CommandButton Command14 
      Caption         =   "삭제"
      Height          =   855
      Left            =   17400
      TabIndex        =   630
      Top             =   7800
      Width           =   855
   End
   Begin VB.CommandButton Command13 
      Caption         =   "기지번코드"
      Height          =   375
      Left            =   16200
      TabIndex        =   629
      Top             =   9480
      Width           =   1095
   End
   Begin VB.ListBox List3 
      Height          =   8520
      Left            =   16200
      TabIndex        =   628
      Top             =   120
      Width           =   1095
   End
   Begin VB.TextBox Text4 
      Height          =   270
      Left            =   15120
      TabIndex        =   627
      Top             =   9120
      Width           =   1095
   End
   Begin VB.TextBox Text3 
      Height          =   270
      Left            =   15120
      TabIndex        =   626
      Top             =   8760
      Width           =   1095
   End
   Begin VB.CommandButton Command12 
      Caption         =   "기지번입력"
      Height          =   375
      Left            =   16200
      TabIndex        =   625
      Top             =   9120
      Width           =   1095
   End
   Begin VB.ListBox List2 
      Height          =   8520
      Left            =   15120
      TabIndex        =   624
      Top             =   120
      Width           =   1095
   End
   Begin VB.CommandButton Command11 
      Caption         =   "교차점 코드"
      Height          =   615
      Left            =   12600
      TabIndex        =   623
      Top             =   11400
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   9600
      TabIndex        =   561
      Text            =   "0"
      Top             =   10440
      Width           =   735
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   9600
      TabIndex        =   560
      Text            =   "0"
      Top             =   9960
      Width           =   735
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Check2"
      Height          =   255
      Left            =   14880
      TabIndex        =   39
      Top             =   9480
      Width           =   255
   End
   Begin VB.TextBox TextStationCount 
      BackColor       =   &H00E0E0E0&
      Height          =   270
      Left            =   5520
      Locked          =   -1  'True
      TabIndex        =   38
      Text            =   "1 개"
      Top             =   10545
      Width           =   735
   End
   Begin VB.CommandButton Command10 
      Caption         =   ">"
      Height          =   315
      Left            =   5400
      TabIndex        =   37
      Top             =   11760
      Width           =   375
   End
   Begin VB.CommandButton Command3 
      Caption         =   "라인 설정"
      Height          =   315
      Left            =   4320
      TabIndex        =   16
      Top             =   11760
      Width           =   1095
   End
   Begin VB.CommandButton Command9 
      Caption         =   "<"
      Height          =   315
      Left            =   3960
      TabIndex        =   36
      Top             =   11760
      Width           =   375
   End
   Begin VB.CommandButton Command8 
      Caption         =   "선택"
      Height          =   375
      Left            =   16560
      TabIndex        =   35
      Top             =   10080
      Width           =   855
   End
   Begin VB.CommandButton Command7 
      Caption         =   "다음역"
      Height          =   375
      Left            =   15720
      TabIndex        =   34
      Top             =   10080
      Width           =   855
   End
   Begin VB.CommandButton Command6 
      Caption         =   "이전역"
      Height          =   375
      Left            =   14880
      TabIndex        =   33
      Top             =   10080
      Width           =   855
   End
   Begin VB.TextBox TextLineName 
      BackColor       =   &H00E0E0E0&
      Height          =   270
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   31
      Text            =   "-"
      Top             =   11400
      Width           =   1095
   End
   Begin VB.CommandButton CommandCreateCode 
      Caption         =   "코드생성"
      Height          =   975
      Left            =   12600
      TabIndex        =   30
      Top             =   10440
      Width           =   855
   End
   Begin VB.CommandButton CommandLoad 
      Caption         =   "임시 파일 읽기"
      Height          =   495
      Left            =   10680
      TabIndex        =   29
      Top             =   10920
      Width           =   1935
   End
   Begin VB.CommandButton CommandSave 
      Caption         =   "임시 저장"
      Height          =   495
      Left            =   10680
      TabIndex        =   28
      Top             =   10440
      Width           =   1935
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00000000&
      Caption         =   "sync"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   9360
      TabIndex        =   27
      Top             =   11460
      Value           =   1  '확인
      Width           =   735
   End
   Begin VB.TextBox textInputStationName 
      Height          =   270
      Left            =   6360
      TabIndex        =   26
      Top             =   11520
      Width           =   1935
   End
   Begin VB.CommandButton Command5 
      Caption         =   "삭제"
      Height          =   315
      Left            =   8400
      TabIndex        =   25
      Top             =   11040
      Width           =   855
   End
   Begin VB.CommandButton Command4 
      Caption         =   "추가"
      Height          =   315
      Left            =   8400
      TabIndex        =   24
      Top             =   11520
      Width           =   855
   End
   Begin VB.ListBox List1 
      Height          =   1140
      Left            =   6360
      TabIndex        =   23
      Top             =   10320
      Width           =   1935
   End
   Begin VB.TextBox TextLineNumber 
      Height          =   270
      Left            =   4320
      TabIndex        =   22
      Text            =   "0"
      Top             =   11040
      Width           =   1095
   End
   Begin VB.TextBox TextEndStt 
      BackColor       =   &H00E0E0E0&
      Height          =   270
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   20
      Text            =   "0"
      Top             =   10680
      Width           =   1095
   End
   Begin VB.TextBox TextStartStt 
      BackColor       =   &H00E0E0E0&
      Height          =   270
      Left            =   4320
      Locked          =   -1  'True
      TabIndex        =   19
      Text            =   "0"
      Top             =   10320
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      BorderStyle     =   0  '없음
      Caption         =   "Frame1"
      Height          =   1935
      Left            =   120
      TabIndex        =   6
      Top             =   10035
      Width           =   3255
      Begin VB.CommandButton Command2 
         Caption         =   "리셋"
         Height          =   320
         Left            =   2160
         TabIndex        =   14
         Top             =   1440
         Width           =   855
      End
      Begin VB.CommandButton Command1 
         Caption         =   "확인"
         Height          =   320
         Left            =   1200
         TabIndex        =   13
         Top             =   1440
         Width           =   855
      End
      Begin VB.TextBox TextTime 
         Height          =   270
         Left            =   1200
         TabIndex        =   9
         Top             =   1040
         Width           =   1815
      End
      Begin VB.TextBox TextName 
         Height          =   270
         Left            =   1200
         TabIndex        =   8
         Top             =   675
         Width           =   1815
      End
      Begin VB.TextBox TextId 
         Height          =   270
         Left            =   1200
         TabIndex        =   7
         Top             =   315
         Width           =   1815
      End
      Begin VB.Label LabelPrevIndex 
         BackStyle       =   0  '투명
         Caption         =   "0"
         ForeColor       =   &H0000FFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   120
         Width           =   735
      End
      Begin VB.Label Label3 
         BackStyle       =   0  '투명
         Caption         =   "다음역까지소요시간"
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   240
         TabIndex        =   12
         Top             =   1000
         Width           =   975
      End
      Begin VB.Label Label2 
         BackStyle       =   0  '투명
         Caption         =   "역 이름"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   11
         Top             =   720
         Width           =   975
      End
      Begin VB.Label Label1 
         BackStyle       =   0  '투명
         Caption         =   "역 ID"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   240
         TabIndex        =   10
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
      Top             =   12000
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
      Index           =   64
      Left            =   4800
      TabIndex        =   622
      Top             =   4320
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
      Index           =   63
      Left            =   11880
      TabIndex        =   621
      Top             =   6600
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
      Index           =   62
      Left            =   12840
      TabIndex        =   620
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
      Index           =   61
      Left            =   10560
      TabIndex        =   619
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
      Index           =   60
      Left            =   9600
      TabIndex        =   618
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
      Index           =   59
      Left            =   8280
      TabIndex        =   617
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
      Index           =   58
      Left            =   8760
      TabIndex        =   616
      Top             =   4800
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
      Index           =   57
      Left            =   8760
      TabIndex        =   615
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
      Index           =   56
      Left            =   7680
      TabIndex        =   614
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
      Index           =   51
      Left            =   7200
      TabIndex        =   613
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
      Index           =   50
      Left            =   8760
      TabIndex        =   612
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
      Index           =   49
      Left            =   10800
      TabIndex        =   611
      Top             =   6840
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
      Left            =   11640
      TabIndex        =   610
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
      Index           =   47
      Left            =   9960
      TabIndex        =   609
      Top             =   6840
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
      Left            =   13320
      TabIndex        =   608
      Top             =   8040
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
      Left            =   11880
      TabIndex        =   607
      Top             =   8040
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
      Index           =   44
      Left            =   11400
      TabIndex        =   606
      Top             =   8040
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
      Left            =   12840
      TabIndex        =   605
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
      Index           =   42
      Left            =   12840
      TabIndex        =   604
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
      Index           =   41
      Left            =   12480
      TabIndex        =   603
      Top             =   1920
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
      Left            =   11520
      TabIndex        =   602
      Top             =   1920
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
      Left            =   11160
      TabIndex        =   601
      Top             =   960
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
      Left            =   10080
      TabIndex        =   600
      Top             =   240
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
      Left            =   10080
      TabIndex        =   599
      Top             =   960
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
      Left            =   11520
      TabIndex        =   598
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
      Index           =   35
      Left            =   10440
      TabIndex        =   597
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
      Left            =   9840
      TabIndex        =   596
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
      Index           =   33
      Left            =   9120
      TabIndex        =   595
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
      Index           =   32
      Left            =   4560
      TabIndex        =   594
      Top             =   4800
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
      Left            =   5400
      TabIndex        =   593
      Top             =   4800
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
      Left            =   6120
      TabIndex        =   592
      Top             =   4800
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
      Left            =   6840
      TabIndex        =   591
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
      Index           =   28
      Left            =   6840
      TabIndex        =   590
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
      Index           =   27
      Left            =   6840
      TabIndex        =   589
      Top             =   4800
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
      Left            =   9120
      TabIndex        =   588
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
      Index           =   25
      Left            =   8520
      TabIndex        =   587
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
      Index           =   24
      Left            =   7920
      TabIndex        =   586
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
      Index           =   23
      Left            =   7080
      TabIndex        =   585
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
      Index           =   22
      Left            =   7920
      TabIndex        =   584
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
      Index           =   21
      Left            =   5400
      TabIndex        =   583
      Top             =   1800
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
      Left            =   4800
      TabIndex        =   582
      Top             =   1320
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
      Left            =   4440
      TabIndex        =   581
      Top             =   1800
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
      Left            =   3840
      TabIndex        =   580
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
      Index           =   17
      Left            =   9840
      TabIndex        =   579
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
      Index           =   16
      Left            =   5880
      TabIndex        =   578
      Top             =   3960
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
      Left            =   4020
      TabIndex        =   577
      Top             =   3960
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
      Left            =   3840
      TabIndex        =   576
      Top             =   4680
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
      Left            =   2040
      TabIndex        =   575
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
      Index           =   12
      Left            =   4320
      TabIndex        =   574
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
      Index           =   11
      Left            =   7680
      TabIndex        =   573
      Top             =   6840
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
      Left            =   9960
      TabIndex        =   572
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
      Index           =   9
      Left            =   4680
      TabIndex        =   571
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
      Index           =   8
      Left            =   5880
      TabIndex        =   570
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
      Index           =   7
      Left            =   1680
      TabIndex        =   569
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
      Index           =   6
      Left            =   1080
      TabIndex        =   568
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
      Index           =   5
      Left            =   3480
      TabIndex        =   567
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
      Index           =   4
      Left            =   3480
      TabIndex        =   566
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
      Index           =   3
      Left            =   2040
      TabIndex        =   565
      Top             =   4440
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
      Left            =   3840
      TabIndex        =   564
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
      Index           =   1
      Left            =   3480
      TabIndex        =   563
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
      Index           =   0
      Left            =   600
      TabIndex        =   562
      Top             =   6360
      Width           =   210
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   519
      Left            =   3120
      TabIndex        =   559
      Top             =   7080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   518
      Left            =   3480
      TabIndex        =   558
      Top             =   7080
      Width           =   150
   End
   Begin VB.Shape ShapeEnd 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   255
      Left            =   0
      Top             =   0
      Width           =   255
   End
   Begin VB.Shape ShapeStart 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   255
      Left            =   240
      Top             =   0
      Width           =   255
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄷ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   21
      Left            =   3480
      TabIndex        =   557
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   19
      Left            =   3120
      TabIndex        =   556
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   18
      Left            =   2760
      TabIndex        =   555
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   17
      Left            =   2400
      TabIndex        =   554
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   16
      Left            =   2040
      TabIndex        =   553
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   15
      Left            =   1680
      TabIndex        =   552
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   14
      Left            =   1320
      TabIndex        =   551
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   13
      Left            =   960
      TabIndex        =   550
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   12
      Left            =   840
      TabIndex        =   549
      Top             =   5640
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   11
      Left            =   720
      TabIndex        =   548
      Top             =   5880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   10
      Left            =   600
      TabIndex        =   547
      Top             =   6120
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   9
      Left            =   600
      TabIndex        =   546
      Top             =   6360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   8
      Left            =   600
      TabIndex        =   545
      Top             =   6600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   7
      Left            =   600
      TabIndex        =   544
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   6
      Left            =   600
      TabIndex        =   543
      Top             =   7080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   5
      Left            =   600
      TabIndex        =   542
      Top             =   7320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   4
      Left            =   600
      TabIndex        =   541
      Top             =   7560
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   3
      Left            =   600
      TabIndex        =   540
      Top             =   7800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   2
      Left            =   600
      TabIndex        =   539
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   1
      Left            =   600
      TabIndex        =   538
      Top             =   8280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   0
      Left            =   600
      TabIndex        =   537
      Top             =   8520
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   180
      Index           =   20
      Left            =   3480
      TabIndex        =   536
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   22
      Left            =   3840
      TabIndex        =   535
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   23
      Left            =   4200
      TabIndex        =   534
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   24
      Left            =   4560
      TabIndex        =   533
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   25
      Left            =   5040
      TabIndex        =   532
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   26
      Left            =   5400
      TabIndex        =   531
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   27
      Left            =   6120
      TabIndex        =   530
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   28
      Left            =   6600
      TabIndex        =   529
      Top             =   4320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   29
      Left            =   6840
      TabIndex        =   528
      Top             =   4080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   30
      Left            =   7080
      TabIndex        =   527
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   31
      Left            =   7440
      TabIndex        =   526
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   32
      Left            =   7920
      TabIndex        =   525
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   33
      Left            =   8640
      TabIndex        =   524
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   34
      Left            =   9120
      TabIndex        =   523
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   35
      Left            =   9840
      TabIndex        =   522
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   36
      Left            =   10440
      TabIndex        =   521
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   37
      Left            =   10920
      TabIndex        =   520
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   38
      Left            =   11280
      TabIndex        =   519
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   39
      Left            =   11520
      TabIndex        =   518
      Top             =   2640
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   40
      Left            =   11520
      TabIndex        =   517
      Top             =   2400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   41
      Left            =   11520
      TabIndex        =   516
      Top             =   2160
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   42
      Left            =   11520
      TabIndex        =   515
      Top             =   1920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   43
      Left            =   11160
      TabIndex        =   514
      Top             =   1680
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   44
      Left            =   10800
      TabIndex        =   513
      Top             =   1440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   45
      Left            =   10440
      TabIndex        =   512
      Top             =   1200
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   46
      Left            =   10080
      TabIndex        =   511
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   47
      Left            =   10080
      TabIndex        =   510
      Top             =   720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   48
      Left            =   10080
      TabIndex        =   509
      Top             =   480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   49
      Left            =   10080
      TabIndex        =   508
      Top             =   240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   50
      Left            =   10560
      TabIndex        =   507
      Top             =   240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   51
      Left            =   10920
      TabIndex        =   506
      Top             =   240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   52
      Left            =   11280
      TabIndex        =   505
      Top             =   240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   53
      Left            =   11640
      TabIndex        =   504
      Top             =   240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   54
      Left            =   12000
      TabIndex        =   503
      Top             =   240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   55
      Left            =   12360
      TabIndex        =   502
      Top             =   240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   56
      Left            =   12720
      TabIndex        =   501
      Top             =   240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   57
      Left            =   13080
      TabIndex        =   500
      Top             =   240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   58
      Left            =   13440
      TabIndex        =   499
      Top             =   240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   59
      Left            =   13800
      TabIndex        =   498
      Top             =   480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   60
      Left            =   13800
      TabIndex        =   497
      Top             =   720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   61
      Left            =   13800
      TabIndex        =   496
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   180
      Index           =   62
      Left            =   13800
      TabIndex        =   495
      Top             =   1200
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   180
      Index           =   63
      Left            =   3480
      TabIndex        =   494
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   64
      Left            =   3480
      TabIndex        =   493
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   65
      Left            =   3480
      TabIndex        =   492
      Top             =   6720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   66
      Left            =   3480
      TabIndex        =   491
      Top             =   7080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   67
      Left            =   3480
      TabIndex        =   490
      Top             =   7080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   68
      Left            =   3720
      TabIndex        =   489
      Top             =   7320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   69
      Left            =   3960
      TabIndex        =   488
      Top             =   7560
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   70
      Left            =   4200
      TabIndex        =   487
      Top             =   7800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   71
      Left            =   4440
      TabIndex        =   486
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   72
      Left            =   4680
      TabIndex        =   485
      Top             =   8280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   73
      Left            =   4920
      TabIndex        =   484
      Top             =   8520
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   74
      Left            =   5160
      TabIndex        =   483
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   75
      Left            =   5520
      TabIndex        =   482
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   76
      Left            =   5880
      TabIndex        =   481
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   77
      Left            =   6240
      TabIndex        =   480
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   78
      Left            =   6600
      TabIndex        =   479
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   79
      Left            =   6960
      TabIndex        =   478
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   80
      Left            =   7320
      TabIndex        =   477
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   81
      Left            =   7680
      TabIndex        =   476
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   82
      Left            =   8040
      TabIndex        =   475
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   83
      Left            =   8400
      TabIndex        =   474
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   84
      Left            =   8760
      TabIndex        =   473
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   85
      Left            =   9120
      TabIndex        =   472
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   86
      Left            =   9480
      TabIndex        =   471
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   87
      Left            =   9840
      TabIndex        =   470
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   88
      Left            =   10200
      TabIndex        =   469
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   89
      Left            =   10560
      TabIndex        =   468
      Top             =   8880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   90
      Left            =   10560
      TabIndex        =   467
      Top             =   9240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   91
      Left            =   10200
      TabIndex        =   466
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   92
      Left            =   9840
      TabIndex        =   465
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   93
      Left            =   9480
      TabIndex        =   464
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   94
      Left            =   9120
      TabIndex        =   463
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   95
      Left            =   8760
      TabIndex        =   462
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   180
      Index           =   96
      Left            =   8280
      TabIndex        =   461
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400000&
      Height          =   180
      Index           =   97
      Left            =   7800
      TabIndex        =   460
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "o"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400000&
      Height          =   180
      Index           =   98
      Left            =   7320
      TabIndex        =   459
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FF80&
      Height          =   180
      Index           =   99
      Left            =   2040
      TabIndex        =   458
      Top             =   4440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FF80&
      Height          =   180
      Index           =   100
      Left            =   2400
      TabIndex        =   457
      Top             =   4680
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FF80&
      Height          =   180
      Index           =   101
      Left            =   2760
      TabIndex        =   456
      Top             =   4920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FF80&
      Height          =   180
      Index           =   102
      Left            =   3240
      TabIndex        =   455
      Top             =   4920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FF80&
      Height          =   180
      Index           =   103
      Left            =   3840
      TabIndex        =   454
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   180
      Index           =   104
      Left            =   10440
      TabIndex        =   453
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   180
      Index           =   105
      Left            =   10800
      TabIndex        =   452
      Top             =   3240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   180
      Index           =   106
      Left            =   11160
      TabIndex        =   451
      Top             =   3600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   180
      Index           =   107
      Left            =   11640
      TabIndex        =   450
      Top             =   4020
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   180
      Index           =   108
      Left            =   11640
      TabIndex        =   449
      Top             =   4440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   109
      Left            =   3840
      TabIndex        =   448
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   110
      Left            =   3840
      TabIndex        =   447
      Top             =   5040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   111
      Left            =   3840
      TabIndex        =   446
      Top             =   4680
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   112
      Left            =   3840
      TabIndex        =   445
      Top             =   4200
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   113
      Left            =   4020
      TabIndex        =   444
      Top             =   3960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   114
      Left            =   4440
      TabIndex        =   443
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   115
      Left            =   4800
      TabIndex        =   442
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   116
      Left            =   5160
      TabIndex        =   441
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   117
      Left            =   5520
      TabIndex        =   440
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   118
      Left            =   5880
      TabIndex        =   439
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   119
      Left            =   7080
      TabIndex        =   438
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   120
      Left            =   7440
      TabIndex        =   437
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   121
      Left            =   7920
      TabIndex        =   436
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   122
      Left            =   8520
      TabIndex        =   435
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   123
      Left            =   9120
      TabIndex        =   434
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   124
      Left            =   9840
      TabIndex        =   433
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   125
      Left            =   10200
      TabIndex        =   432
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   126
      Left            =   10560
      TabIndex        =   431
      Top             =   3720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   127
      Left            =   10920
      TabIndex        =   430
      Top             =   3960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   128
      Left            =   11280
      TabIndex        =   429
      Top             =   4200
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   180
      Index           =   129
      Left            =   11640
      TabIndex        =   428
      Top             =   4440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   130
      Left            =   11640
      TabIndex        =   427
      Top             =   4440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   131
      Left            =   11640
      TabIndex        =   426
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   132
      Left            =   11640
      TabIndex        =   425
      Top             =   5160
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   133
      Left            =   11640
      TabIndex        =   424
      Top             =   5520
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   134
      Left            =   11640
      TabIndex        =   423
      Top             =   5880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   135
      Left            =   11640
      TabIndex        =   422
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   136
      Left            =   11220
      TabIndex        =   421
      Top             =   6540
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   137
      Left            =   10800
      TabIndex        =   420
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   138
      Left            =   10440
      TabIndex        =   419
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   139
      Left            =   9960
      TabIndex        =   418
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   140
      Left            =   9600
      TabIndex        =   417
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   141
      Left            =   9240
      TabIndex        =   416
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   142
      Left            =   8760
      TabIndex        =   415
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   143
      Left            =   8400
      TabIndex        =   414
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   144
      Left            =   8040
      TabIndex        =   413
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   145
      Left            =   7680
      TabIndex        =   412
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   146
      Left            =   7200
      TabIndex        =   411
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   147
      Left            =   6600
      TabIndex        =   410
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   148
      Left            =   6120
      TabIndex        =   409
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   149
      Left            =   5640
      TabIndex        =   408
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   150
      Left            =   5160
      TabIndex        =   407
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   151
      Left            =   4560
      TabIndex        =   406
      Top             =   6600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   152
      Left            =   4320
      TabIndex        =   405
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   180
      Index           =   153
      Left            =   3840
      TabIndex        =   404
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   154
      Left            =   1200
      TabIndex        =   403
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   155
      Left            =   1560
      TabIndex        =   402
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   156
      Left            =   1920
      TabIndex        =   401
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   157
      Left            =   2280
      TabIndex        =   400
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   158
      Left            =   2640
      TabIndex        =   399
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   159
      Left            =   3000
      TabIndex        =   398
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   160
      Left            =   3360
      TabIndex        =   397
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   161
      Left            =   3720
      TabIndex        =   396
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   162
      Left            =   4080
      TabIndex        =   395
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   163
      Left            =   4440
      TabIndex        =   394
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   164
      Left            =   4800
      TabIndex        =   393
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   165
      Left            =   4800
      TabIndex        =   392
      Top             =   1320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   166
      Left            =   5400
      TabIndex        =   391
      Top             =   1800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   167
      Left            =   5880
      TabIndex        =   390
      Top             =   1800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   168
      Left            =   6360
      TabIndex        =   389
      Top             =   1800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   169
      Left            =   6840
      TabIndex        =   388
      Top             =   1800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   170
      Left            =   7320
      TabIndex        =   387
      Top             =   1800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   171
      Left            =   7680
      TabIndex        =   386
      Top             =   2040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   172
      Left            =   7920
      TabIndex        =   385
      Top             =   2280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   173
      Left            =   7920
      TabIndex        =   384
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   174
      Left            =   7920
      TabIndex        =   383
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   175
      Left            =   8280
      TabIndex        =   382
      Top             =   4080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   176
      Left            =   8520
      TabIndex        =   381
      Top             =   4440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   177
      Left            =   8760
      TabIndex        =   380
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   178
      Left            =   8760
      TabIndex        =   379
      Top             =   5040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   179
      Left            =   8760
      TabIndex        =   378
      Top             =   5280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   180
      Left            =   8760
      TabIndex        =   377
      Top             =   5520
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   181
      Left            =   8760
      TabIndex        =   376
      Top             =   5760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   182
      Left            =   8760
      TabIndex        =   375
      Top             =   6000
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   183
      Left            =   8760
      TabIndex        =   374
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   184
      Left            =   8760
      TabIndex        =   373
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   185
      Left            =   8760
      TabIndex        =   372
      Top             =   7200
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   186
      Left            =   9000
      TabIndex        =   371
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   187
      Left            =   9480
      TabIndex        =   370
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   188
      Left            =   9960
      TabIndex        =   369
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   189
      Left            =   10320
      TabIndex        =   368
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   190
      Left            =   10680
      TabIndex        =   367
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   191
      Left            =   11040
      TabIndex        =   366
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   192
      Left            =   11400
      TabIndex        =   365
      Top             =   7680
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   180
      Index           =   193
      Left            =   11400
      TabIndex        =   364
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   194
      Left            =   1680
      TabIndex        =   363
      Top             =   2040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   195
      Left            =   1680
      TabIndex        =   362
      Top             =   2400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   196
      Left            =   1680
      TabIndex        =   361
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   197
      Left            =   1680
      TabIndex        =   360
      Top             =   3120
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   198
      Left            =   1680
      TabIndex        =   359
      Top             =   3360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   199
      Left            =   1680
      TabIndex        =   358
      Top             =   3720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   200
      Left            =   1680
      TabIndex        =   357
      Top             =   3960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   201
      Left            =   1860
      TabIndex        =   356
      Top             =   4200
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   202
      Left            =   2040
      TabIndex        =   355
      Top             =   4440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   203
      Left            =   2400
      TabIndex        =   354
      Top             =   4440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   204
      Left            =   2760
      TabIndex        =   353
      Top             =   4440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   205
      Left            =   3120
      TabIndex        =   352
      Top             =   4440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   206
      Left            =   3480
      TabIndex        =   351
      Top             =   4560
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   207
      Left            =   3840
      TabIndex        =   350
      Top             =   4680
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   208
      Left            =   4200
      TabIndex        =   349
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   209
      Left            =   4560
      TabIndex        =   348
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   210
      Left            =   4800
      TabIndex        =   347
      Top             =   4320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   211
      Left            =   5400
      TabIndex        =   346
      Top             =   4320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   212
      Left            =   5640
      TabIndex        =   345
      Top             =   4140
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   213
      Left            =   5880
      TabIndex        =   344
      Top             =   3960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   214
      Left            =   5880
      TabIndex        =   343
      Top             =   3720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   215
      Left            =   5880
      TabIndex        =   342
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   216
      Left            =   6720
      TabIndex        =   341
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   217
      Left            =   7440
      TabIndex        =   340
      Top             =   2400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   218
      Left            =   7920
      TabIndex        =   339
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   219
      Left            =   8520
      TabIndex        =   338
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "o"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   220
      Left            =   8820
      TabIndex        =   337
      Top             =   3360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   221
      Left            =   9120
      TabIndex        =   336
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   222
      Left            =   9600
      TabIndex        =   335
      Top             =   4080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   223
      Left            =   9960
      TabIndex        =   334
      Top             =   4080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   224
      Left            =   10260
      TabIndex        =   333
      Top             =   3900
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   225
      Left            =   10560
      TabIndex        =   332
      Top             =   3720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   226
      Left            =   11460
      TabIndex        =   331
      Top             =   3720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   227
      Left            =   11760
      TabIndex        =   330
      Top             =   3720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   228
      Left            =   11880
      TabIndex        =   329
      Top             =   3840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   229
      Left            =   12180
      TabIndex        =   328
      Top             =   4140
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   230
      Left            =   12480
      TabIndex        =   327
      Top             =   4320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   231
      Left            =   12600
      TabIndex        =   326
      Top             =   4680
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   232
      Left            =   12720
      TabIndex        =   325
      Top             =   5040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   233
      Left            =   12840
      TabIndex        =   324
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C000C0&
      Height          =   180
      Index           =   234
      Left            =   12840
      TabIndex        =   323
      Top             =   5760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF80FF&
      Height          =   180
      Index           =   235
      Left            =   12840
      TabIndex        =   322
      Top             =   5760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF80FF&
      Height          =   180
      Index           =   236
      Left            =   13440
      TabIndex        =   321
      Top             =   5760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF80FF&
      Height          =   180
      Index           =   237
      Left            =   13800
      TabIndex        =   320
      Top             =   5520
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF80FF&
      Height          =   180
      Index           =   238
      Left            =   13800
      TabIndex        =   319
      Top             =   5160
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF80FF&
      Height          =   180
      Index           =   239
      Left            =   13800
      TabIndex        =   318
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF80FF&
      Height          =   180
      Index           =   240
      Left            =   13800
      TabIndex        =   317
      Top             =   4560
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   180
      Index           =   241
      Left            =   12840
      TabIndex        =   316
      Top             =   5760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   180
      Index           =   242
      Left            =   12840
      TabIndex        =   315
      Top             =   6000
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   180
      Index           =   243
      Left            =   12840
      TabIndex        =   314
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   180
      Index           =   244
      Left            =   12840
      TabIndex        =   313
      Top             =   6480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   180
      Index           =   245
      Left            =   12840
      TabIndex        =   312
      Top             =   6720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   180
      Index           =   246
      Left            =   13080
      TabIndex        =   311
      Top             =   7020
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   180
      Index           =   247
      Left            =   13320
      TabIndex        =   310
      Top             =   7320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800080&
      Height          =   180
      Index           =   248
      Left            =   13680
      TabIndex        =   309
      Top             =   7320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   249
      Left            =   1080
      TabIndex        =   308
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   250
      Left            =   1440
      TabIndex        =   307
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   251
      Left            =   1800
      TabIndex        =   306
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   252
      Left            =   2160
      TabIndex        =   305
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   253
      Left            =   2520
      TabIndex        =   304
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   254
      Left            =   2880
      TabIndex        =   303
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   255
      Left            =   3240
      TabIndex        =   302
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   256
      Left            =   3600
      TabIndex        =   301
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   257
      Left            =   3960
      TabIndex        =   300
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   258
      Left            =   4320
      TabIndex        =   299
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   259
      Left            =   4680
      TabIndex        =   298
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   260
      Left            =   4680
      TabIndex        =   297
      Top             =   9000
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   261
      Left            =   4680
      TabIndex        =   296
      Top             =   8640
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   262
      Left            =   4680
      TabIndex        =   295
      Top             =   8280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   263
      Left            =   4680
      TabIndex        =   294
      Top             =   7920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   264
      Left            =   4980
      TabIndex        =   293
      Top             =   7680
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   265
      Left            =   5280
      TabIndex        =   292
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   266
      Left            =   5760
      TabIndex        =   291
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   267
      Left            =   6360
      TabIndex        =   290
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   268
      Left            =   6840
      TabIndex        =   289
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   269
      Left            =   7320
      TabIndex        =   288
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   270
      Left            =   7680
      TabIndex        =   287
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   271
      Left            =   7680
      TabIndex        =   286
      Top             =   7200
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C000&
      Height          =   180
      Index           =   272
      Left            =   7680
      TabIndex        =   285
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   273
      Left            =   7680
      TabIndex        =   284
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   274
      Left            =   7200
      TabIndex        =   283
      Top             =   5760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   275
      Left            =   6840
      TabIndex        =   282
      Top             =   5280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   276
      Left            =   6840
      TabIndex        =   281
      Top             =   5040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   277
      Left            =   6840
      TabIndex        =   280
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   278
      Left            =   6840
      TabIndex        =   279
      Top             =   4440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   279
      Left            =   6840
      TabIndex        =   278
      Top             =   4080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   280
      Left            =   7200
      TabIndex        =   277
      Top             =   4080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   281
      Left            =   7800
      TabIndex        =   276
      Top             =   4080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   282
      Left            =   8280
      TabIndex        =   275
      Top             =   4080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   283
      Left            =   9120
      TabIndex        =   274
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   284
      Left            =   9120
      TabIndex        =   273
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   285
      Left            =   9120
      TabIndex        =   272
      Top             =   2520
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   286
      Left            =   9120
      TabIndex        =   271
      Top             =   2280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   287
      Left            =   9120
      TabIndex        =   270
      Top             =   2040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   288
      Left            =   9120
      TabIndex        =   269
      Top             =   1800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   289
      Left            =   9360
      TabIndex        =   268
      Top             =   1680
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   290
      Left            =   9600
      TabIndex        =   267
      Top             =   1560
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   291
      Left            =   9600
      TabIndex        =   266
      Top             =   1320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   292
      Left            =   9840
      TabIndex        =   265
      Top             =   1140
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   293
      Left            =   10080
      TabIndex        =   264
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   294
      Left            =   11160
      TabIndex        =   263
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   295
      Left            =   11700
      TabIndex        =   262
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   296
      Left            =   12240
      TabIndex        =   261
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   297
      Left            =   13440
      TabIndex        =   260
      Top             =   1920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   298
      Left            =   12960
      TabIndex        =   259
      Top             =   1920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   299
      Left            =   12480
      TabIndex        =   258
      Top             =   1920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   300
      Left            =   11520
      TabIndex        =   257
      Top             =   1920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   301
      Left            =   11160
      TabIndex        =   256
      Top             =   1920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   302
      Left            =   10800
      TabIndex        =   255
      Top             =   1920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   303
      Left            =   10440
      TabIndex        =   254
      Top             =   1920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   304
      Left            =   10080
      TabIndex        =   253
      Top             =   1920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   305
      Left            =   10080
      TabIndex        =   252
      Top             =   2160
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   306
      Left            =   9840
      TabIndex        =   251
      Top             =   2400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   307
      Left            =   9840
      TabIndex        =   250
      Top             =   2640
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   308
      Left            =   9840
      TabIndex        =   249
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   309
      Left            =   9840
      TabIndex        =   248
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   310
      Left            =   9600
      TabIndex        =   247
      Top             =   4080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   311
      Left            =   8760
      TabIndex        =   246
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   312
      Left            =   8400
      TabIndex        =   245
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   313
      Left            =   8040
      TabIndex        =   244
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   314
      Left            =   7680
      TabIndex        =   243
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   315
      Left            =   7320
      TabIndex        =   242
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   316
      Left            =   6840
      TabIndex        =   241
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   317
      Left            =   6120
      TabIndex        =   240
      Top             =   4320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   318
      Left            =   5880
      TabIndex        =   239
      Top             =   3960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   319
      Left            =   5280
      TabIndex        =   238
      Top             =   3960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   320
      Left            =   4920
      TabIndex        =   237
      Top             =   3960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   321
      Left            =   4440
      TabIndex        =   236
      Top             =   3960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   322
      Left            =   4020
      TabIndex        =   235
      Top             =   3960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   323
      Left            =   3960
      TabIndex        =   234
      Top             =   3600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   324
      Left            =   3960
      TabIndex        =   233
      Top             =   3360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   325
      Left            =   3960
      TabIndex        =   232
      Top             =   3120
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   326
      Left            =   3960
      TabIndex        =   231
      Top             =   2760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   327
      Left            =   3960
      TabIndex        =   230
      Top             =   2280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   328
      Left            =   4200
      TabIndex        =   229
      Top             =   2040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   329
      Left            =   4440
      TabIndex        =   228
      Top             =   1800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   330
      Left            =   4440
      TabIndex        =   227
      Top             =   1800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   331
      Left            =   4800
      TabIndex        =   226
      Top             =   1800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   332
      Left            =   5400
      TabIndex        =   225
      Top             =   1800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   333
      Left            =   5280
      TabIndex        =   224
      Top             =   1440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   334
      Left            =   4800
      TabIndex        =   223
      Top             =   1320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00295398&
      Height          =   180
      Index           =   335
      Left            =   4440
      TabIndex        =   222
      Top             =   1560
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H003E507D&
      Height          =   180
      Index           =   336
      Left            =   4440
      TabIndex        =   221
      Top             =   1800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   337
      Left            =   9720
      TabIndex        =   220
      Top             =   240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   338
      Left            =   10080
      TabIndex        =   219
      Top             =   240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   339
      Left            =   10440
      TabIndex        =   218
      Top             =   480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   340
      Left            =   10800
      TabIndex        =   217
      Top             =   720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   341
      Left            =   11160
      TabIndex        =   216
      Top             =   960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   342
      Left            =   11520
      TabIndex        =   215
      Top             =   1200
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   343
      Left            =   11880
      TabIndex        =   214
      Top             =   1440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   344
      Left            =   12240
      TabIndex        =   213
      Top             =   1680
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   345
      Left            =   12480
      TabIndex        =   212
      Top             =   1920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   346
      Left            =   12480
      TabIndex        =   211
      Top             =   2160
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   347
      Left            =   12480
      TabIndex        =   210
      Top             =   2400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   348
      Left            =   12480
      TabIndex        =   209
      Top             =   3000
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   349
      Left            =   12480
      TabIndex        =   208
      Top             =   3240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   350
      Left            =   12480
      TabIndex        =   207
      Top             =   3480
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   351
      Left            =   12480
      TabIndex        =   206
      Top             =   3720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   352
      Left            =   12480
      TabIndex        =   205
      Top             =   4020
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   353
      Left            =   12480
      TabIndex        =   204
      Top             =   4320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   354
      Left            =   12060
      TabIndex        =   203
      Top             =   4560
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   355
      Left            =   11640
      TabIndex        =   202
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   356
      Left            =   11160
      TabIndex        =   201
      Top             =   5160
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   357
      Left            =   10800
      TabIndex        =   200
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   358
      Left            =   10440
      TabIndex        =   199
      Top             =   5640
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   359
      Left            =   10020
      TabIndex        =   198
      Top             =   5940
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   360
      Left            =   9600
      TabIndex        =   197
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   361
      Left            =   9240
      TabIndex        =   196
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   362
      Left            =   8760
      TabIndex        =   195
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   363
      Left            =   8160
      TabIndex        =   194
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   364
      Left            =   7680
      TabIndex        =   193
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   365
      Left            =   7320
      TabIndex        =   192
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   366
      Left            =   6960
      TabIndex        =   191
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   367
      Left            =   6600
      TabIndex        =   190
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   368
      Left            =   6120
      TabIndex        =   189
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   369
      Left            =   5640
      TabIndex        =   188
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   370
      Left            =   5160
      TabIndex        =   187
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   371
      Left            =   4800
      TabIndex        =   186
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   372
      Left            =   4320
      TabIndex        =   185
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   373
      Left            =   3960
      TabIndex        =   184
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   374
      Left            =   3480
      TabIndex        =   183
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   375
      Left            =   3000
      TabIndex        =   182
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   376
      Left            =   2520
      TabIndex        =   181
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   377
      Left            =   2040
      TabIndex        =   180
      Top             =   5760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   378
      Left            =   2040
      TabIndex        =   179
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   379
      Left            =   13200
      TabIndex        =   178
      Top             =   5160
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   380
      Left            =   12840
      TabIndex        =   177
      Top             =   5400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   381
      Left            =   12360
      TabIndex        =   176
      Top             =   5760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   382
      Left            =   12000
      TabIndex        =   175
      Top             =   6000
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   383
      Left            =   11640
      TabIndex        =   174
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   384
      Left            =   11880
      TabIndex        =   173
      Top             =   6600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   385
      Left            =   11880
      TabIndex        =   172
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   386
      Left            =   11880
      TabIndex        =   171
      Top             =   7080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   387
      Left            =   11880
      TabIndex        =   170
      Top             =   7320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   388
      Left            =   11880
      TabIndex        =   169
      Top             =   7680
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   389
      Left            =   11880
      TabIndex        =   168
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   390
      Left            =   11880
      TabIndex        =   167
      Top             =   8400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   391
      Left            =   12180
      TabIndex        =   166
      Top             =   8400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   392
      Left            =   12660
      TabIndex        =   165
      Top             =   8400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   393
      Left            =   13020
      TabIndex        =   164
      Top             =   8400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   394
      Left            =   13320
      TabIndex        =   163
      Top             =   8400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   180
      Index           =   395
      Left            =   13320
      TabIndex        =   162
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   396
      Left            =   9960
      TabIndex        =   161
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   397
      Left            =   9960
      TabIndex        =   160
      Top             =   7140
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   398
      Left            =   9960
      TabIndex        =   159
      Top             =   7440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   399
      Left            =   9960
      TabIndex        =   158
      Top             =   7800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   400
      Left            =   10200
      TabIndex        =   157
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   401
      Left            =   10800
      TabIndex        =   156
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   402
      Left            =   11400
      TabIndex        =   155
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   403
      Left            =   11880
      TabIndex        =   154
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   404
      Left            =   12360
      TabIndex        =   153
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   405
      Left            =   12840
      TabIndex        =   152
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   406
      Left            =   13320
      TabIndex        =   151
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   407
      Left            =   13800
      TabIndex        =   150
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   408
      Left            =   14160
      TabIndex        =   149
      Top             =   8400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   409
      Left            =   14160
      TabIndex        =   148
      Top             =   8700
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   410
      Left            =   14160
      TabIndex        =   147
      Top             =   9000
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   411
      Left            =   13800
      TabIndex        =   146
      Top             =   9180
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   412
      Left            =   13440
      TabIndex        =   145
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   413
      Left            =   13080
      TabIndex        =   144
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   414
      Left            =   12720
      TabIndex        =   143
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C0C0&
      Height          =   180
      Index           =   415
      Left            =   12360
      TabIndex        =   142
      Top             =   9360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   416
      Left            =   480
      TabIndex        =   141
      Top             =   1800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   417
      Left            =   480
      TabIndex        =   140
      Top             =   2160
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   418
      Left            =   480
      TabIndex        =   139
      Top             =   2520
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   419
      Left            =   720
      TabIndex        =   138
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   420
      Left            =   1080
      TabIndex        =   137
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   421
      Left            =   1680
      TabIndex        =   136
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   422
      Left            =   1080
      TabIndex        =   135
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   423
      Left            =   1080
      TabIndex        =   134
      Top             =   3240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   424
      Left            =   1080
      TabIndex        =   133
      Top             =   3600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   425
      Left            =   1080
      TabIndex        =   132
      Top             =   3960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   426
      Left            =   720
      TabIndex        =   131
      Top             =   3960
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   427
      Left            =   480
      TabIndex        =   130
      Top             =   4200
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   428
      Left            =   240
      TabIndex        =   129
      Top             =   4440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   429
      Left            =   240
      TabIndex        =   128
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   430
      Left            =   240
      TabIndex        =   127
      Top             =   5160
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   431
      Left            =   240
      TabIndex        =   126
      Top             =   5640
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   432
      Left            =   240
      TabIndex        =   125
      Top             =   6120
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   433
      Left            =   600
      TabIndex        =   124
      Top             =   6360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   434
      Left            =   960
      TabIndex        =   123
      Top             =   6360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   435
      Left            =   1320
      TabIndex        =   122
      Top             =   6360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   436
      Left            =   1320
      TabIndex        =   121
      Top             =   6600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   437
      Left            =   1320
      TabIndex        =   120
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   438
      Left            =   1320
      TabIndex        =   119
      Top             =   7080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   439
      Left            =   1320
      TabIndex        =   118
      Top             =   7320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   440
      Left            =   1320
      TabIndex        =   117
      Top             =   7560
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   441
      Left            =   1320
      TabIndex        =   116
      Top             =   7800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   442
      Left            =   1320
      TabIndex        =   115
      Top             =   8040
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   443
      Left            =   1320
      TabIndex        =   114
      Top             =   8280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   444
      Left            =   1320
      TabIndex        =   113
      Top             =   8520
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   445
      Left            =   1320
      TabIndex        =   112
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   446
      Left            =   1800
      TabIndex        =   111
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   447
      Left            =   2280
      TabIndex        =   110
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   448
      Left            =   2760
      TabIndex        =   109
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   449
      Left            =   3240
      TabIndex        =   108
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   450
      Left            =   3720
      TabIndex        =   107
      Top             =   8760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFF00&
      Height          =   180
      Index           =   451
      Left            =   3720
      TabIndex        =   106
      Top             =   8400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   452
      Left            =   6120
      TabIndex        =   105
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "o"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   453
      Left            =   6120
      TabIndex        =   104
      Top             =   5280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   454
      Left            =   6840
      TabIndex        =   103
      Top             =   5280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   455
      Left            =   7560
      TabIndex        =   102
      Top             =   5280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   456
      Left            =   8040
      TabIndex        =   101
      Top             =   5280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   457
      Left            =   8760
      TabIndex        =   100
      Top             =   5280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "o"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   458
      Left            =   9480
      TabIndex        =   99
      Top             =   5280
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   459
      Left            =   10020
      TabIndex        =   98
      Top             =   4860
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "o"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   460
      Left            =   10560
      TabIndex        =   97
      Top             =   4440
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   461
      Left            =   10560
      TabIndex        =   96
      Top             =   3720
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   462
      Left            =   11520
      TabIndex        =   95
      Top             =   3120
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   463
      Left            =   11520
      TabIndex        =   94
      Top             =   2640
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   464
      Left            =   12000
      TabIndex        =   93
      Top             =   2640
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   465
      Left            =   12720
      TabIndex        =   92
      Top             =   2640
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   466
      Left            =   13080
      TabIndex        =   91
      Top             =   2640
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   467
      Left            =   13080
      TabIndex        =   90
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   468
      Left            =   13080
      TabIndex        =   89
      Top             =   3120
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   469
      Left            =   13080
      TabIndex        =   88
      Top             =   3360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   470
      Left            =   13080
      TabIndex        =   87
      Top             =   3600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   471
      Left            =   13440
      TabIndex        =   86
      Top             =   3600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   472
      Left            =   13800
      TabIndex        =   85
      Top             =   3600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   473
      Left            =   14160
      TabIndex        =   84
      Top             =   3600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   474
      Left            =   14160
      TabIndex        =   83
      Top             =   3840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   180
      Index           =   475
      Left            =   14160
      TabIndex        =   82
      Top             =   4080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808000&
      Height          =   180
      Index           =   476
      Left            =   14160
      TabIndex        =   81
      Top             =   4320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   180
      Index           =   477
      Left            =   14160
      TabIndex        =   80
      Top             =   4680
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   180
      Index           =   478
      Left            =   14160
      TabIndex        =   79
      Top             =   4920
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   180
      Index           =   479
      Left            =   14160
      TabIndex        =   78
      Top             =   5160
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   180
      Index           =   480
      Left            =   14160
      TabIndex        =   77
      Top             =   5520
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   481
      Left            =   1320
      TabIndex        =   76
      Top             =   2400
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   482
      Left            =   1680
      TabIndex        =   75
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   483
      Left            =   2040
      TabIndex        =   74
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   484
      Left            =   2400
      TabIndex        =   73
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   485
      Left            =   2760
      TabIndex        =   72
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   486
      Left            =   3120
      TabIndex        =   71
      Top             =   2880
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   487
      Left            =   3120
      TabIndex        =   70
      Top             =   3120
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   488
      Left            =   3120
      TabIndex        =   69
      Top             =   3360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   489
      Left            =   3120
      TabIndex        =   68
      Top             =   3600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   490
      Left            =   3120
      TabIndex        =   67
      Top             =   3840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   491
      Left            =   3120
      TabIndex        =   66
      Top             =   4080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   492
      Left            =   3480
      TabIndex        =   65
      Top             =   4080
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   493
      Left            =   3840
      TabIndex        =   64
      Top             =   4200
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   494
      Left            =   4200
      TabIndex        =   63
      Top             =   4320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   495
      Left            =   4800
      TabIndex        =   62
      Top             =   4320
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   496
      Left            =   5100
      TabIndex        =   61
      Top             =   4560
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   497
      Left            =   5400
      TabIndex        =   60
      Top             =   4800
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   498
      Left            =   5520
      TabIndex        =   59
      Top             =   5520
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   499
      Left            =   6240
      TabIndex        =   58
      Top             =   5760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   500
      Left            =   7200
      TabIndex        =   57
      Top             =   5760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   501
      Left            =   7740
      TabIndex        =   56
      Top             =   5760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   502
      Left            =   8280
      TabIndex        =   55
      Top             =   5760
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   503
      Left            =   8760
      TabIndex        =   54
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   504
      Left            =   9000
      TabIndex        =   53
      Top             =   6540
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   505
      Left            =   9360
      TabIndex        =   52
      Top             =   6540
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   506
      Left            =   9720
      TabIndex        =   51
      Top             =   6540
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   507
      Left            =   10080
      TabIndex        =   50
      Top             =   6540
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   508
      Left            =   10440
      TabIndex        =   49
      Top             =   6540
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   509
      Left            =   10800
      TabIndex        =   48
      Top             =   6540
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   510
      Left            =   10800
      TabIndex        =   47
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   511
      Left            =   11160
      TabIndex        =   46
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   512
      Left            =   11520
      TabIndex        =   45
      Top             =   6840
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   513
      Left            =   11880
      TabIndex        =   44
      Top             =   6600
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   514
      Left            =   12120
      TabIndex        =   43
      Top             =   6360
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   515
      Left            =   12480
      TabIndex        =   42
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   516
      Left            =   12840
      TabIndex        =   41
      Top             =   6240
      Width           =   150
   End
   Begin VB.Label MetroStation 
      BackStyle       =   0  '투명
      Caption         =   "ㄸ"
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   9.75
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00808080&
      Height          =   180
      Index           =   517
      Left            =   13800
      TabIndex        =   40
      Top             =   6240
      Width           =   150
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FF00FF&
      BorderWidth     =   2
      Index           =   0
      X1              =   696
      X2              =   696
      Y1              =   672
      Y2              =   816
   End
   Begin VB.Label Label7 
      BackStyle       =   0  '투명
      Caption         =   "호선이름"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3480
      TabIndex        =   32
      Top             =   11400
      Width           =   855
   End
   Begin VB.Label Label6 
      BackStyle       =   0  '투명
      Caption         =   "라인번호"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3480
      TabIndex        =   21
      Top             =   11040
      Width           =   855
   End
   Begin VB.Label Label5 
      BackStyle       =   0  '투명
      Caption         =   "종작역"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3720
      TabIndex        =   18
      Top             =   10680
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  '투명
      Caption         =   "시작역"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   3720
      TabIndex        =   17
      Top             =   10320
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
      Index           =   55
      Left            =   12480
      TabIndex        =   5
      Top             =   4320
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
      Left            =   8760
      TabIndex        =   4
      Top             =   6840
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
      Left            =   11640
      TabIndex        =   3
      Top             =   4800
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
      Left            =   11640
      TabIndex        =   2
      Top             =   4440
      Width           =   210
   End
   Begin VB.Image Image1 
      Height          =   9855
      Left            =   14760
      Picture         =   "Form1.frx":1042
      Stretch         =   -1  'True
      Top             =   0
      Visible         =   0   'False
      Width           =   14970
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

Private Sub Check2_Click()
    Image1.Visible = Not Image1.Visible
End Sub

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

Private Sub Command11_Click()
    Form2.Show
    Form2.Text1 = MakeSourceJoint
End Sub

Private Sub Command12_Click()
    Dim i As Integer
    If Trim(Text3.Text) <> "" And Trim(Text4.Text) <> "" Then

        For i = 0 To List2.ListCount - 1
            If Trim(Text3.Text) = List2.List(i) And Trim(Text4.Text) = List3.List(i) Then MsgBox "중복": Exit Sub
        
        Next i
    
        List2.AddItem Text3.Text
        List3.AddItem Text4.Text
        Text3.Text = ""
    End If
End Sub

Private Sub Command13_Click()
    Dim code As String
    Dim i As Integer
    
    code = ""
    
    For i = 0 To List2.ListCount - 1
        code = code + List2.List(i)
        If i < List2.ListCount - 1 Then code = code + ", "
        If (i + 1) Mod 10 = 0 Then code = code + vbCrLf
    Next i
    code = code + vbCrLf + vbCrLf + vbCrLf
    
    
    For i = 0 To List3.ListCount - 1
        code = code + Trim(Left(List3.List(i), InStr(List3.List(i), ":") - 1))
        If i < List3.ListCount - 1 Then code = code + ", "
        If (i + 1) Mod 10 = 0 Then code = code + vbCrLf
    Next i
    
    Form2.Show
    
    Form2.Text1.Text = code
    
    
End Sub

Private Sub Command14_Click()
    Dim i As Integer
    i = List3.ListIndex - 1
    On Error Resume Next
    List3.RemoveItem (List3.ListIndex)
    List3.ListIndex = i
    List2.RemoveItem (List2.ListIndex)
    List2.ListIndex = i
    
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

    Line1(0).X1 = MetroStation(PrevIndex).Left + 6
    Line1(0).Y1 = MetroStation(PrevIndex).Top + 6
    Line1(0).X2 = MetroStation(Index).Left + 6
    Line1(0).Y2 = MetroStation(Index).Top + 6
    

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
    
    Line1(0).X1 = MetroStation(PrevIndex).Left + 6
    Line1(0).Y1 = MetroStation(PrevIndex).Top + 6
    Line1(0).X2 = MetroStation(Index).Left + 6
    Line1(0).Y2 = MetroStation(Index).Top + 6
    
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
        
        
    Form1.List2.Clear
    Filenumber = FreeFile
    Open fnNameList2 For Input As Filenumber
        Do Until EOF(Filenumber)
            Line Input #Filenumber, TempData
                If Trim(TempData) <> "" Then Call SetNameListData2(TempData)
        Loop
    Close Filenumber
    
    List2.ListIndex = List2.ListCount - 1
    
    Form1.List3.Clear
    Filenumber = FreeFile
    Open fnNameList3 For Input As Filenumber
        Do Until EOF(Filenumber)
            Line Input #Filenumber, TempData
                If Trim(TempData) <> "" Then Call SetNameListData3(TempData)
        Loop
    Close Filenumber
    
    List3.ListIndex = List3.ListCount - 1
        
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
    
    TempData = GetNameListData2()
        Filenumber = FreeFile
        Open fnNameList2 For Output As Filenumber
            Print #Filenumber, TempData
        Close Filenumber
    
    TempData = GetNameListData3()
        Filenumber = FreeFile
        Open fnNameList3 For Output As Filenumber
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
    fnNameList2 = App.Path + "\fnNameList2.dat"
    fnNameList3 = App.Path + "\fnNameList3.dat"
End Sub

Private Sub List2_Click()
    On Error Resume Next
     List3.ListIndex = List2.ListIndex
End Sub

Private Sub List3_Click()
    On Error Resume Next
    Text4.Text = List3.List(List3.ListIndex)
    List2.ListIndex = List3.ListIndex
End Sub

Private Sub List3_Scroll()
List3_Click
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
        
        Text4.Text = Stt(Index).Id & " : " & List1.List(Index)
    
End Sub

Private Sub MetroStation_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    MetroStation(Index).ToolTipText = Stt(Index).StationName
End Sub

Private Sub Text3_KeyDown(KeyCode As Integer, Shift As Integer)

    If KeyCode = 13 Then Call Command12_Click
End Sub

Private Sub Text4_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then Call Command12_Click
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

Private Sub TextTime_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Call Command1_Click
        Call Command7_Click
        TextTime.SelStart = 0
        TextTime.SelLength = Len(TextTime.Text)
    End If
End Sub
