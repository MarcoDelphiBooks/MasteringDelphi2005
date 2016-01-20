object Form1: TForm1
  Left = 0
  Top = 0
  Width = 527
  Height = 368
  Caption = 'RssClient'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 0
    Top = 41
    Width = 519
    Height = 293
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 41
    Align = alTop
    TabOrder = 1
    object btnUpdate: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Update'
      TabOrder = 0
      OnClick = btnUpdateClick
    end
  end
  object IdHTTP1: TIdHTTP
    AuthRetries = 0
    AuthProxyRetries = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 16
    Top = 120
  end
  object XMLDocument1: TXMLDocument
    Left = 16
    Top = 72
    DOMVendorDesc = 'MSXML'
  end
end
