---
layout: project_single
title: Personal Budget
slug: personal-budget
published: true
---
hnfsakfa fnkasfaj n kfansklf nklfas

{% highlight vb %}
For Each Cel In Rng1
            If Cel.Value > 0 Then
                Cel.Interior.ColorIndex = 23
                    End If
            
            If IsNumeric(Cel.Value) Then
                Cel.Value = Abs(Cel.Value)
                    End If
        Next Cel
    
        For Each Cel In Rng2
            If Cel.Value > 0 Then
                Cel.Interior.ColorIndex = 22
                    End If
            
            If IsNumeric(Cel.Value) Then
                Cel.Value = Abs(Cel.Value)
                    End If
                   
If ws2.ProtectContents = True Then
                msg = MsgBox("List " & ws2.name & " je chráněn!" & vbCrLf & vbCrLf & _
                                "Chcete jej odemknout?", vbYesNo + vbQuestion, "Odemknout list")
                                
                If msg = vbYes Then ws2.Unprotect Password:="heslo"
                    ElseIf msg = vbNo Then Exit Sub
                        Else
                            MsgBox "List nechráněn. :)", vbInformation
                                End If
{% endhighlight %}