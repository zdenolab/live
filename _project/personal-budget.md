---
layout: project_single
title: Personal Budget
slug: personal-budget
published: true
---
hnfsakfa fnkasfaj n kfansklf nklfas

{% highlight ruby %}
If ws2.ProtectContents = True Then
                msg = MsgBox("List " & ws2.name & " je chráněn!" & vbCrLf & vbCrLf & _
                                "Chcete jej odemknout?", vbYesNo + vbQuestion, "Odemknout list")
                                
                If msg = vbYes Then ws2.Unprotect Password:="heslo"
                    ElseIf msg = vbNo Then Exit Sub
                        Else
                            MsgBox "List nechráněn. :)", vbInformation
                                End If
{% endhighlight %}