Attribute VB_Name = "Module3"

Public Function MakeSourceJoint()
    Dim i As Integer
    Dim j As Integer
    Dim TempFunctionLine As String
    Dim ReturnSource As String
    Dim FoundCount As Integer
    
    ReturnSource = ""
    
    For i = 0 To Form1.MetroJoint.Count - 1
        TempFunctionLine = "InitJoint(" & (i + 1)
        FoundCount = 0
        For j = 0 To Form1.MetroStation.Count - 1
            If Form1.MetroJoint(i).Left = Form1.MetroStation(j).Left And Form1.MetroJoint(i).Top = Form1.MetroStation(j).Top Then
                FoundCount = FoundCount + 1
                TempFunctionLine = TempFunctionLine & ", " & Stt(j).Id
            End If
        Next j
        
        If FoundCount > 1 Then
            For j = 0 To 4 - FoundCount - 1
                TempFunctionLine = TempFunctionLine & ", NULL"
            Next j
            TempFunctionLine = TempFunctionLine & ");" & vbCrLf
        End If
        
        ReturnSource = ReturnSource + TempFunctionLine
    Next i
    
    MakeSourceJoint = ReturnSource
    
End Function
