object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWTreeView1: TIWTreeView
    Left = 0
    Top = 20
    Width = 555
    Height = 380
    Cursor = crAuto
    Align = alClient
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    FriendlyName = 'IWTreeView1'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    UseFrame = False
    Items = <
      item
        Caption = 'IWTreeView2Item0'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item0'
        Tag = 0
        Version = 1
        ParentItem = -1
      end
      item
        Caption = 'IWTreeView2Item1'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item1'
        Tag = 0
        Version = 1
        ParentItem = -1
      end
      item
        Caption = 'IWTreeView2Item2'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item2'
        Tag = 0
        Version = 1
        ParentItem = -1
      end
      item
        Caption = 'IWTreeView2Item3'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item3'
        Tag = 0
        Version = 1
        ParentItem = -1
      end
      item
        Caption = 'IWTreeView2Item5'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item5'
        Tag = 0
        Version = 1
        ParentItem = 0
      end
      item
        Caption = 'IWTreeView2Item6'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item6'
        Tag = 0
        Version = 1
        ParentItem = 0
      end
      item
        Caption = 'IWTreeView2Item7'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item7'
        Tag = 0
        Version = 1
        ParentItem = 1
      end
      item
        Caption = 'IWTreeView2Item8'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item8'
        Tag = 0
        Version = 1
        ParentItem = 1
      end
      item
        Caption = 'IWTreeView2Item9'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item9'
        Tag = 0
        Version = 1
        ParentItem = 2
      end
      item
        Caption = 'IWTreeView2Item10'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item10'
        Tag = 0
        Version = 1
        ParentItem = 3
      end
      item
        Caption = 'IWTreeView2Item11'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item11'
        Tag = 0
        Version = 1
        ParentItem = 9
      end
      item
        Caption = 'IWTreeView2Item12'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item12'
        Tag = 0
        Version = 1
        ParentItem = 3
      end
      item
        Caption = 'IWTreeView2Item13'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item13'
        Tag = 0
        Version = 1
        ParentItem = 11
      end
      item
        Caption = 'IWTreeView2Item14'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item14'
        Tag = 0
        Version = 1
        ParentItem = 3
      end
      item
        Caption = 'IWTreeView2Item4'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item4'
        Tag = 0
        Version = 1
        ParentItem = 6
      end
      item
        Caption = 'IWTreeView2Item15'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView2Item15'
        Tag = 0
        Version = 1
        ParentItem = 6
      end>
  end
  object IWMenu1: TIWMenu
    Left = 0
    Top = 0
    Width = 555
    Height = 20
    Cursor = crAuto
    Align = alTop
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    FriendlyName = 'IWMenu1'
    AttachedMenu = MainMenu1
    ItemSpacing = itsNone
    AutoSize = mnaNone
    MainMenuStyle.MenuItemFont.Color = clNone
    MainMenuStyle.MenuItemFont.Size = 10
    MainMenuStyle.MenuItemFont.Style = []
    MainMenuStyle.SelectedMenuItemFont.Color = clNone
    MainMenuStyle.SelectedMenuItemFont.Size = 10
    MainMenuStyle.SelectedMenuItemFont.Style = []
    MainMenuStyle.DisabledMenuItemFont.Color = clWebSILVER
    MainMenuStyle.DisabledMenuItemFont.Size = 10
    MainMenuStyle.DisabledMenuItemFont.Style = []
    MainMenuStyle.BGColor = clWebWHITE
    MainMenuStyle.ItemBGColor = clWebWHITE
    MainMenuStyle.SelectedItemBGColor = clWebSILVER
    MainMenuStyle.DisabledItemBGColor = clWebWHITE
    MainMenuStyle.Orientation = iwOHorizontal
    SubMenuStyle.MenuItemFont.Color = clNone
    SubMenuStyle.MenuItemFont.Size = 10
    SubMenuStyle.MenuItemFont.Style = []
    SubMenuStyle.SelectedMenuItemFont.Color = clNone
    SubMenuStyle.SelectedMenuItemFont.Size = 10
    SubMenuStyle.SelectedMenuItemFont.Style = []
    SubMenuStyle.DisabledMenuItemFont.Color = clWebSILVER
    SubMenuStyle.DisabledMenuItemFont.Size = 10
    SubMenuStyle.DisabledMenuItemFont.Style = []
    SubMenuStyle.BGColor = clWebWHITE
    SubMenuStyle.ItemBGColor = clWebWHITE
    SubMenuStyle.SelectedItemBGColor = clWebWHITE
    SubMenuStyle.DisabledItemBGColor = clWebWHITE
    SubMenuStyle.Orientation = iwOVertical
    TimeOut = 0
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 56
    object Tree1: TMenuItem
      Caption = 'Tree'
      object ExpandAll1: TMenuItem
        Caption = 'Expand All'
        OnClick = ExpandAll1Click
      end
      object CollapseAll1: TMenuItem
        Caption = 'Collapse All'
        OnClick = CollapseAll1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object EnlargeFont1: TMenuItem
        Caption = 'Enlarge Font'
        OnClick = EnlargeFont1Click
      end
      object ReduceFont1: TMenuItem
        Caption = 'Reduce Font'
        OnClick = ReduceFont1Click
      end
    end
    object About1: TMenuItem
      Caption = 'About'
      object Application1: TMenuItem
        Caption = 'Application'
        OnClick = Application1Click
      end
      object TreeContents1: TMenuItem
        Caption = 'Tree Contents'
        OnClick = TreeContents1Click
      end
    end
  end
end
