Attribute VB_Name = "Module2"

Public Const ArrStrHeader = "const string "
Public Const ArrIntHeader = "const int "

Public Const ArrLineName = "DataLineName[] "
Public Const ArrLineStartId = "DataLineStartId[] "
Public Const ArrLineEndId = "DataLineEndId[] "
Public Const ArrLineColor = "DataLineColor[] "

Public Const ArrStationName = "DataStationName[] "
Public Const ArrStationTime = "DataStationTime[] "
Public Const ArrStationX = "DataStationX[] "
Public Const ArrStationY = "DataStationY[] "

Public Const ArrStart = "= {" & vbCrLf
Public Const ArrEnd = "};//SIZE = "

Public Function MakeSource()
    Dim SourceHeader As String
    
    SourceHeader = ""
    SourceHeader = SourceHeader + "///////////////////////////////////////////////////////" & vbCrLf
    SourceHeader = SourceHeader + "// Created. " & Now & vbCrLf
    SourceHeader = SourceHeader + "// Created by Metro Data Editor 1. Ahyane" & vbCrLf
    SourceHeader = SourceHeader + "///////////////////////////////////////////////////////" & vbCrLf & vbCrLf
    
    MakeSource = SourceHeader & MakeSourceStationName & MakeSourceArrStationTime & MakeSourceArrStationX & MakeSourceArrStationY & _
                 MakeSourceLineName & MakeSourceLineStartId & MakeSourceLineEndId & MakeSourceLineColor
End Function

Public Function MakeSourceArrStationX()
    Dim TempSource As String
    Dim TempArray As String
    Dim i As Integer
    
    TempArray = ""

    For i = 0 To Form1.MetroStation.Count - 1
        If i > 0 Then
            TempArray = TempArray + ", "
        End If
        If i Mod 10 = 0 Then
            If i > 0 Then
                TempArray = TempArray & vbCrLf
            End If
            TempArray = TempArray + Chr(9)
        End If
        
        TempArray = TempArray & (Form1.MetroStation(i).Left + Val(Form1.Text1.Text))
    Next i
        
    TempSource = ArrIntHeader & ArrStationX & ArrStart
    TempSource = TempSource & TempArray & vbCrLf & ArrEnd & i & vbCrLf & vbCrLf
    
    MakeSourceArrStationX = TempSource
End Function

Public Function MakeSourceArrStationY()
    Dim TempSource As String
    Dim TempArray As String
    Dim i As Integer
    
    TempArray = ""

    For i = 0 To Form1.MetroStation.Count - 1
        If i > 0 Then
            TempArray = TempArray + ", "
        End If
        If i Mod 10 = 0 Then
            If i > 0 Then
                TempArray = TempArray & vbCrLf
            End If
            TempArray = TempArray + Chr(9)
        End If
        
        TempArray = TempArray & (Form1.MetroStation(i).Top + Val(Form1.Text2.Text))
    Next i
        
    TempSource = ArrIntHeader & ArrStationY & ArrStart
    TempSource = TempSource & TempArray & vbCrLf & ArrEnd & i & vbCrLf & vbCrLf
    
    MakeSourceArrStationY = TempSource
End Function

Public Function MakeSourceArrStationTime()
    Dim TempSource As String
    Dim TempArray As String
    Dim i As Integer
    
    TempArray = ""

    For i = 0 To Form1.MetroStation.Count - 1
        If i > 0 Then
            TempArray = TempArray + ", "
        End If
        If i Mod 10 = 0 Then
            If i > 0 Then
                TempArray = TempArray & vbCrLf
            End If
            TempArray = TempArray + Chr(9)
        End If
        
        TempArray = TempArray & Stt(i).Time
    Next i
        
    TempSource = ArrIntHeader & ArrStationTime & ArrStart
    TempSource = TempSource & TempArray & vbCrLf & ArrEnd & i & vbCrLf & vbCrLf
    
    MakeSourceArrStationTime = TempSource
End Function

Public Function MakeSourceStationName()
    Dim TempSource As String
    Dim TempArray As String
    Dim i As Integer
    
    TempArray = ""

    For i = 0 To Form1.List1.ListCount - 1
        If i > 0 Then
            TempArray = TempArray + ", "
        End If
        If i Mod 10 = 0 Then
            If i > 0 Then
                TempArray = TempArray & vbCrLf
            End If
            TempArray = TempArray + Chr(9)
        End If
        
        TempArray = TempArray & """" & Trim(Form1.List1.List(i)) & """"
    Next i
        
    TempSource = ArrStrHeader & ArrStationName & ArrStart
    TempSource = TempSource & TempArray & vbCrLf & ArrEnd & i & vbCrLf & vbCrLf
    
    MakeSourceStationName = TempSource
End Function

Public Function MakeSourceLineName()
    Dim TempSource As String
    Dim TempArray As String
    Dim i As Integer
    
    TempArray = ""
    For i = 0 To 30
        If i > 0 And Trim(MetroLine(i).LineName) = "" Then Exit For
        If i > 0 Then
            TempArray = TempArray + ", "
        End If
        If i Mod 10 = 0 Then
            If i > 0 Then
                TempArray = TempArray & vbCrLf
            End If
            TempArray = TempArray + Chr(9)
        End If
        TempArray = TempArray & """" & Trim(MetroLine(i).LineName) & """"
    Next i
    
    TempSource = ArrStrHeader & ArrLineName & ArrStart
    TempSource = TempSource & TempArray & vbCrLf & ArrEnd & i & vbCrLf & vbCrLf
    
    MakeSourceLineName = TempSource
End Function

Public Function MakeSourceLineStartId()
    Dim TempSource As String
    Dim TempArray As String
    Dim i As Integer
    
    TempArray = ""
    For i = 0 To 30
        If i > 0 And Trim(MetroLine(i).LineName) = "" Then Exit For
        If i > 0 Then
            TempArray = TempArray + ", "
        End If
        If i Mod 10 = 0 Then
            If i > 0 Then
                TempArray = TempArray & vbCrLf
            End If
            TempArray = TempArray + Chr(9)
        End If
        TempArray = TempArray & Trim(MetroLine(i).StartIndex)
    Next i
    
    TempSource = ArrIntHeader & ArrLineStartId & ArrStart
    TempSource = TempSource & TempArray & vbCrLf & ArrEnd & i & vbCrLf & vbCrLf
    
    MakeSourceLineStartId = TempSource
End Function

Public Function MakeSourceLineEndId()
    Dim TempSource As String
    Dim TempArray As String
    Dim i As Integer
    
    TempArray = ""
    For i = 0 To 30
        If i > 0 And Trim(MetroLine(i).LineName) = "" Then Exit For
        If i > 0 Then
            TempArray = TempArray + ", "
        End If
        If i Mod 10 = 0 Then
            If i > 0 Then
                TempArray = TempArray & vbCrLf
            End If
            TempArray = TempArray + Chr(9)
        End If
        TempArray = TempArray & Trim(MetroLine(i).EndIndex)
    Next i
    
    TempSource = ArrIntHeader & ArrLineEndId & ArrStart
    TempSource = TempSource & TempArray & vbCrLf & ArrEnd & i & vbCrLf & vbCrLf
    
    MakeSourceLineEndId = TempSource
End Function

Public Function MakeSourceLineColor()
    Dim TempSource As String
    Dim TempArray As String
    Dim i As Integer
    
    TempArray = Chr(9) & "0, S_BLUE, S_GREEN, S_GREEN, S_ORANGE, S_MARGENTA, S_MARGENTA, S_BLUE, S_BLUE, 0"

    TempSource = ArrIntHeader & ArrLineColor & ArrStart
    TempSource = TempSource & TempArray & vbCrLf & ArrEnd & i & vbCrLf & vbCrLf
    
    MakeSourceLineColor = TempSource
End Function




