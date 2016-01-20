object TwoMainForm: TTwoMainForm
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
  object IWGrid1: TIWGrid
    Left = 40
    Top = 56
    Width = 473
    Height = 249
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
    Caption = 'IWGrid1'
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    Summary = 'This is a grid'
    UseFrame = False
    UseSize = True
    FriendlyName = 'IWGrid1'
    ColumnCount = 3
    RowCount = 5
    TabOrder = 0
    ShowEmptyCells = True
  end
  object btnShowGraphic: TIWButton
    Left = 36
    Top = 18
    Width = 109
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Show Graphic'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnShowGraphic'
    ScriptEvents = <>
    TabOrder = 1
    OnClick = btnShowGraphicClick
  end
  object btnCloseMain: TIWButton
    Left = 160
    Top = 18
    Width = 105
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Close Main'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnCloseMain'
    ScriptEvents = <>
    TabOrder = 2
    OnClick = btnCloseMainClick
  end
end
