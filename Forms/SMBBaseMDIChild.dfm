inherited SMBBaseMDIChild: TSMBBaseMDIChild
  Caption = 'SMBBaseMDIChild'
  FormStyle = fsMDIChild
  KeyPreview = True
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object plBottomButtons: TPanel
    Left = 0
    Top = 255
    Width = 418
    Height = 27
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 1
    Padding.Top = 1
    Padding.Right = 1
    Padding.Bottom = 1
    TabOrder = 0
    object bnClose: TButton
      Left = 342
      Top = 1
      Width = 75
      Height = 25
      Align = alRight
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = bnCloseClick
    end
  end
end
