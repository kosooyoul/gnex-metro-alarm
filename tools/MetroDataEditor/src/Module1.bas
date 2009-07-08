Attribute VB_Name = "Module1"
Type Station
    Id As Integer
    StationName As Integer
    Time As Double
    X As Integer
    Y As Integer
End Type

Type StationLine
    StartIndex As Integer
    EndIndex As Integer
    LineName As String
End Type

Public Stt(519) As Station
Public MetroLine(30) As StationLine
    
Public fnStt As String
Public fnLine As String
Public fnNameList As String
Public fnCode As String
Public fnNameList2 As String
Public fnNameList3 As String

Public Function SetStation(Index As Integer, Id As Integer, Time As Integer, StationName As String, X As Integer, Y As Integer)
    Stt(Index).Id = Id
    Stt(Index).Time = Time
    Stt(Index).StationName = StationName
    Stt(Index).X = X
    Stt(Index).Y = Y
End Function


'파일로 저장
Public Function GetSttData()
    Dim OutputData As String
    Dim Temp As String
    Dim i As Integer
    
    OutputData = ""
    
    For i = 0 To 519
        Temp = i & "#" & Stt(i).Id & "," & Stt(i).StationName & "," & Stt(i).Time & vbCrLf
        OutputData = OutputData + Temp
    Next i
    
    GetSttData = OutputData
    
End Function

Public Function GetLineData()
    Dim OutputData As String
    Dim Temp As String
    Dim i As Integer
    
    OutputData = ""
    
    For i = 0 To 30
        Temp = i & "#" & MetroLine(i).StartIndex & "," & MetroLine(i).EndIndex & "," & MetroLine(i).LineName & vbCrLf
        OutputData = OutputData + Temp
    Next i
    
    GetLineData = OutputData
    
End Function
Public Function GetNameListData2()
    Dim OutputData As String
    Dim Temp As String
    Dim i As Integer
    
    OutputData = ""
    
    For i = 0 To Form1.List2.ListCount - 1
        Temp = i & "#" & Form1.List2.List(i) & vbCrLf
        OutputData = OutputData + Temp
    Next i
    
    GetNameListData2 = OutputData
    
End Function
Public Function GetNameListData3()
    Dim OutputData As String
    Dim Temp As String
    Dim i As Integer
    
    OutputData = ""
    
    For i = 0 To Form1.List3.ListCount - 1
        Temp = i & "#" & Form1.List3.List(i) & vbCrLf
        OutputData = OutputData + Temp
    Next i
    
    GetNameListData3 = OutputData
    
End Function

Public Function GetNameListData()
    Dim OutputData As String
    Dim Temp As String
    Dim i As Integer
    
    OutputData = ""
    
    For i = 0 To Form1.List1.ListCount - 1
        Temp = i & "#" & Form1.List1.List(i) & vbCrLf
        OutputData = OutputData + Temp
    Next i
    
    GetNameListData = OutputData
    
End Function

'파일에서 로딩하여 설정
Public Function SetSttData(TempData As String)
    Dim SubData As String
    Dim Index As Integer
    Dim c As Integer
    
    SubData = TempData
    
    c = InStr(SubData, "#")
    Index = Left(SubData, c - 1)

    SubData = Mid(SubData, c + 1)
    c = InStr(SubData, ",")
    Stt(Index).Id = Val(Left(SubData, c - 1))
    
    SubData = Mid(SubData, c + 1)
    c = InStr(SubData, ",")
    Stt(Index).StationName = Val(Left(SubData, c - 1))
    
    SubData = Mid(SubData, c + 1)
    Stt(Index).Time = SubData
End Function

Public Function SetLineData(TempData As String)
    Dim SubData As String
    Dim Index As Integer
    Dim c As Integer
    
    SubData = TempData
    
    c = InStr(SubData, "#")
    Index = Left(SubData, c - 1)

    SubData = Mid(SubData, c + 1)
    c = InStr(SubData, ",")
    MetroLine(Index).StartIndex = Left(SubData, c - 1)
    
    SubData = Mid(SubData, c + 1)
    c = InStr(SubData, ",")
    MetroLine(Index).EndIndex = Left(SubData, c - 1)
    
    SubData = Mid(SubData, c + 1)
    MetroLine(Index).LineName = SubData
End Function

Public Function SetNameListData(TempData As String)
    Dim SubData As String
    Dim Index As Integer
    Dim c As Integer
    
    SubData = TempData
    
    c = InStr(SubData, "#")
    Index = Left(SubData, c - 1)
    SubData = Mid(SubData, c + 1)
    Form1.List1.AddItem SubData, Index
End Function


Public Function SetNameListData2(TempData As String)
    Dim SubData As String
    Dim Index As Integer
    Dim c As Integer
    
    SubData = TempData
    
    c = InStr(SubData, "#")
    Index = Left(SubData, c - 1)
    SubData = Mid(SubData, c + 1)
    Form1.List2.AddItem SubData, Index
End Function


Public Function SetNameListData3(TempData As String)
    Dim SubData As String
    Dim Index As Integer
    Dim c As Integer
    
    SubData = TempData
    
    c = InStr(SubData, "#")
    Index = Left(SubData, c - 1)
    SubData = Mid(SubData, c + 1)
    Form1.List3.AddItem SubData, Index
End Function


