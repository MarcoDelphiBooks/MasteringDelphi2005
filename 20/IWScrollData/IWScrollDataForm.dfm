object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 555
  Height = 400
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
    555
    400)
  DesignLeft = 8
  DesignTop = 8
  object btnPrevius: TIWButton
    Left = 152
    Top = 40
    Width = 97
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Previous Page'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnPrevius'
    ScriptEvents = <>
    TabOrder = 0
    OnClick = btnPreviusClick
  end
  object btnNext: TIWButton
    Left = 40
    Top = 40
    Width = 97
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Next Page'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnNext'
    ScriptEvents = <>
    TabOrder = 1
    OnClick = btnNextClick
  end
  object IWDBGrid1: TIWDBGrid
    Left = 40
    Top = 72
    Width = 409
    Height = 241
    Cursor = crAuto
    Anchors = [akLeft, akTop, akRight, akBottom]
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 1
    BorderStyle = tfDefault
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlRows
    UseFrame = False
    UseSize = True
    ScrollToCurrentRow = False
    Columns = <>
    DataSource = DataSource1
    FooterRowCount = 0
    FriendlyName = 'IWDBGrid1'
    FromStart = False
    HighlightColor = clDefault
    HighlightRows = False
    Options = [dgShowTitles]
    RefreshMode = rmAutomatic
    RowLimit = 10
    RollOver = False
    RowClick = False
    RollOverColor = clNone
    RowHeaderColor = clNone
    RowAlternateColor = clWebSILVER
    RowCurrentColor = clWebTEAL
    TabOrder = 2
  end
  object DataSource1: TDataSource
    Left = 336
    Top = 32
  end
end
