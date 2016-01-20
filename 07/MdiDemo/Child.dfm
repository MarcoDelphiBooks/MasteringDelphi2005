object ChildForm: TChildForm
  Left = 262
  Top = 191
  Width = 473
  Height = 294
  Caption = 'MDI Child'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 465
    Height = 267
    Align = alClient
    TabOrder = 0
    OnChange = Memo1Change
  end
end
