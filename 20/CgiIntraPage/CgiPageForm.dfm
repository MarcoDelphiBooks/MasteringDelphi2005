object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 349
  Height = 296
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  BrowserSecurityCheck = True
  Background.Fixed = False
  LayoutMgr = IWLayoutMgrHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  AutoProcess = True
  PostToSelf = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 192
    Top = 56
    Width = 75
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'IWButton1'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object IWLabel1: TIWLabel
    Left = 112
    Top = 80
    Width = 58
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    FriendlyName = 'IWLabel1'
    Caption = 'IWLabel1'
    RawText = False
  end
  object IWComboBox1: TIWComboBox
    Left = 168
    Top = 128
    Width = 121
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FocusColor = clNone
    AutoHideOnMenuActivation = False
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    Required = False
    RequireSelection = True
    ScriptEvents = <>
    UseSize = False
    Style = stNormal
    ButtonColor = clBtnFace
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    TabOrder = 2
    ItemIndex = -1
    Items.Strings = (
      'one'
      'two'
      'three')
    Sorted = False
    FriendlyName = 'IWComboBox1'
  end
  object IWLayoutMgrHTML1: TIWLayoutMgrHTML
    HTML.Strings = (
      ''
      '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">'
      '<HTML>'
      
        '<HEAD><META http-equiv=Content-Type content="text/html; charset=' +
        'windows-1252">'
      '<META content="MSHTML 6.00.2900.2604" name=GENERATOR>'
      '</HEAD><BODY><H2 align=center>Html Example code '
      
        '</H2><P align=left><FONT face=Arial><STRONG><EM><FONT face="Comi' +
        'c Sans MS">Font test '
      '</FONT></EM></STRONG>'
      '</FONT></P> <P>{%IWLabel1%} {%IWButton1%}'
      
        '</P><P class=xx>More text goes here, and you can type it directl' +
        'y... '
      ''
      '</P>'
      '  <P class=xx>'
      '  <TABLE cellSpacing=2 cellPadding=1 width="100%" border=1>'
      
        '    <TBODY><TR><TD width="100%">And finally we have some text an' +
        'd a combo box within a '
      '      grid... '
      
        '    </TD><TD width="100%">{%IWComboBox1%}</TD></TR></TBODY></TAB' +
        'LE></P>'
      '</BODY>'
      '</HTML>')
    Left = 80
    Top = 112
  end
end
