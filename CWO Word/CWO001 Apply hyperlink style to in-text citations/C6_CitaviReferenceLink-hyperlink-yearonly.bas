Sub CitaviReferenceHyperlinkYear()
    Dim oStyle As Style
    ActiveDocument.UpdateStylesOnOpen = False
    
    Dim ctl As ContentControl
    Dim ctl2 As ContentControl
    Dim fn As Footnote

    For Each ctl In ActiveDocument.ContentControls
        If InStr(1, ctl.Tag, "CitaviPlaceholder") = 1 Then
              For i = 1 To ctl.Range.Words.Count
                If ctl.Range.Words(i) Like "####" Then
                    ctl.Range.Words(i).Style = ActiveDocument.Styles(wdStyleHyperlink)
                End If
             Next
        End If
    Next

    For Each fn In ActiveDocument.Footnotes
       For Each ctl2 In fn.Range.ContentControls
            If InStr(1, ctl2.Tag, "CitaviPlaceholder") = 1 Then
              For i = 1 To ctl2.Range.Words.Count
                If ctl2.Range.Words(i) Like "####" Then
                    ctl2.Range.Words(i).Style = ActiveDocument.Styles(wdStyleHyperlink)
                End If
             Next
        End If
       Next
    Next



End Sub
