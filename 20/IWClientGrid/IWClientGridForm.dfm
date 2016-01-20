object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 715
  Height = 506
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  OnCreate = IWAppFormCreate
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    715
    506)
  DesignLeft = 8
  DesignTop = 8
  object IWDynGrid1: TIWDynGrid
    Left = 16
    Top = 16
    Width = 689
    Height = 481
    Cursor = crAuto
    Anchors = [akLeft, akTop, akRight, akBottom]
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    TitleCell.BorderColors.Color = clNone
    TitleCell.BorderColors.Light = clNone
    TitleCell.BorderColors.Dark = clNone
    TitleCell.Color = clNone
    TitleCell.BorderSize = 0
    TitleCell.BGColor = clNone
    FilterCell.BorderColors.Color = clNone
    FilterCell.BorderColors.Light = clNone
    FilterCell.BorderColors.Dark = clNone
    FilterCell.Color = clNone
    FilterCell.BorderSize = 0
    FilterCell.BGColor = clNone
    DataCell.BorderColors.Color = clNone
    DataCell.BorderColors.Light = clNone
    DataCell.BorderColors.Dark = clNone
    DataCell.Color = clNone
    DataCell.BorderSize = 0
    DataCell.BGColor = clNone
    Data = IWClientSideDatasetDBLink1
    BorderSize = 0
    FriendlyName = 'IWDynGrid1'
    WrapTitles = False
  end
  object DataSource1: TDataSource
    Left = 72
    Top = 88
  end
  object IWClientSideDatasetDBLink1: TIWClientSideDatasetDBLink
    DataSource = DataSource1
    Left = 72
    Top = 168
  end
  object IWLayoutMgrHTML1: TIWLayoutMgrHTML
    HTML.Strings = (
      '')
    Left = 144
    Top = 280
  end
end
