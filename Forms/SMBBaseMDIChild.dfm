inherited SMBBaseMDIChild: TSMBBaseMDIChild
  Caption = 'SMBBaseMDIChild'
  FormStyle = fsMDIChild
  KeyPreview = True
  Menu = mmBase
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  ExplicitWidth = 434
  ExplicitHeight = 340
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
      Action = aClose
      Align = alRight
      TabOrder = 0
    end
  end
  object alBase: TActionList
    Left = 32
    Top = 8
    object aClose: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ShortCut = 27
      OnExecute = aCloseExecute
    end
    object aCreate: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ShortCut = 45
      OnExecute = aCreateExecute
    end
    object aRead: TAction
      Caption = #1054#1090#1082#1088#1099#1090#1100
      ShortCut = 113
      OnExecute = aReadExecute
    end
    object aUpdate: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ShortCut = 16467
      OnExecute = aUpdateExecute
    end
    object aDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ShortCut = 8238
      OnExecute = aDeleteExecute
    end
  end
  object mmBase: TMainMenu
    Left = 72
    Top = 8
    object mmnActions: TMenuItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      GroupIndex = 1
      object mmnRead: TMenuItem
        Action = aRead
      end
      object mmnSepatator1: TMenuItem
        Caption = '-'
      end
      object mmnCreate: TMenuItem
        Action = aCreate
      end
      object mmnUpdate: TMenuItem
        Action = aUpdate
      end
      object mmnDelete: TMenuItem
        Action = aDelete
      end
      object mmnSepatator2: TMenuItem
        Caption = '-'
      end
      object mmnClose: TMenuItem
        Action = aClose
      end
    end
  end
  object pmBase: TPopupMenu
    Left = 160
    Top = 96
    object pmnRead: TMenuItem
      Action = aRead
    end
    object pmnSeparator1: TMenuItem
      Caption = '-'
    end
    object pmnCreate: TMenuItem
      Action = aCreate
    end
    object pmnUpdate: TMenuItem
      Action = aUpdate
    end
    object pmnDelete: TMenuItem
      Action = aDelete
    end
    object pmnSeparator2: TMenuItem
      Caption = '-'
    end
    object pmnClose: TMenuItem
      Action = aClose
    end
  end
end
