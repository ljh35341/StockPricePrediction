Attribute VB_Name = "Module1"
Sub FunctionCall()
    'duplicate → resize → export → delete
    Call duplicate
    Call resize
    Call export
    Call delete

End Sub
Sub duplicate()
    On Error Resume Next
    
    Set newSlide = ActivePresentation.Slides(2).duplicate
    With newSlide
        .Background.Fill.PresetGradient msoGradientVertical, _
            1, msoGradientGold
        .Shapes.title.TextFrame.TextRange _
            .text = "Second Quarter Earnings"
    End With
End Sub
Sub resize()
    On Error Resume Next
    
    Set image = ActivePresentation.Slides(ActiveWindow.View.Slide.SlideNumber).Shapes(4)
    With image
        .LockAspectRatio = msoFalse
        .Left = 0
        .Top = 0
        .Height = 540
        .Width = 960
        .ZOrder msoSendToBack
    End With
End Sub
Sub export()
    '원래 코드는 전체 슬라이드 export하기 (여기서는 Slides(1) 한장만 export로 수정)
    'http://vbadud.blogspot.com/2009/05/save-powerpoint-slides-as-images-using.html
    Dim sImagePath As String
    Dim sImageName As String
    Dim oSlide As Slide '* Slide Object
    Dim lScaleWidth As Long '* Scale Width
    Dim lScaleHeight As Long '* Scale Height
    On Error GoTo Err_ImageSave

    sImagePath = "C:\Users\user\Desktop\"
    sImageName = ActivePresentation.Slides(1).Name & ".jpg"
    ActivePresentation.Slides(1).export sImagePath & sImageName, "JPG"

Err_ImageSave:
    If Err <> 0 Then
    MsgBox Err.Description
    End If
End Sub
Sub delete()
    ActivePresentation.Slides(1).delete
End Sub



























