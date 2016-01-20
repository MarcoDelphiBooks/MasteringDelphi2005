object Form1: TForm1
  Left = 267
  Top = 117
  Caption = 'Convert Caller'
  ClientHeight = 242
  ClientWidth = 244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object LabelResult: TLabel
    Left = 40
    Top = 200
    Width = 145
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
  end
  object btnConvert: TButton
    Left = 80
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Convert'
    TabOrder = 0
    OnClick = btnConvertClick
  end
  object btnFill: TButton
    Left = 80
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Fill List'
    TabOrder = 1
    OnClick = btnFillClick
  end
  object EditAmount: TEdit
    Left = 40
    Top = 128
    Width = 145
    Height = 24
    TabOrder = 2
    Text = '1000'
  end
  object ComboBoxFrom: TComboBox
    Left = 40
    Top = 64
    Width = 145
    Height = 24
    Style = csDropDownList
    ItemHeight = 16
    TabOrder = 3
  end
  object ComboBoxTo: TComboBox
    Left = 40
    Top = 96
    Width = 145
    Height = 24
    Style = csDropDownList
    ItemHeight = 16
    TabOrder = 4
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 16
    Top = 24
  end
end
