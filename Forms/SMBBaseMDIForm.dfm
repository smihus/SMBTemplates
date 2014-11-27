inherited BaseMDIForm: TBaseMDIForm
  Caption = 'BaseMDIForm'
  ClientHeight = 262
  FormStyle = fsMDIForm
  Menu = mmBase
  OnShow = FormShow
  ExplicitWidth = 434
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  object mmBase: TMainMenu
    Left = 16
    Top = 8
    object N1: TMenuItem
      Caption = #1054#1082#1085#1086
      object N3: TMenuItem
        Action = aWindowCascade
      end
      object N6: TMenuItem
        Action = aWindowTileHorizontal
      end
      object N7: TMenuItem
        Action = aWindowTileVertical
      end
      object N5: TMenuItem
        Action = aWindowMinimizeAll
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Action = aWindowClose
      end
    end
  end
  object alBase: TActionList
    Left = 64
    Top = 8
    object aWindowClose: TWindowClose
      Category = #1054#1082#1085#1086
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Enabled = False
      Hint = 'Close'
    end
    object aWindowCascade: TWindowCascade
      Category = #1054#1082#1085#1086
      Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1080#1090#1100' '#1082#1072#1089#1082#1072#1076#1086#1084
      Enabled = False
      Hint = 'Cascade'
      ImageIndex = 17
    end
    object aWindowTileHorizontal: TWindowTileHorizontal
      Category = #1054#1082#1085#1086
      Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1080#1090#1100' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1086
      Enabled = False
      Hint = 'Tile Horizontal'
      ImageIndex = 15
    end
    object aWindowTileVertical: TWindowTileVertical
      Category = #1054#1082#1085#1086
      Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1080#1090#1100' '#1074#1077#1088#1090#1080#1082#1072#1083#1100#1085#1086
      Enabled = False
      Hint = 'Tile Vertical'
      ImageIndex = 16
    end
    object aWindowMinimizeAll: TWindowMinimizeAll
      Category = #1054#1082#1085#1086
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100
      Enabled = False
      Hint = 'Minimize All'
    end
  end
end
