object Form1: TForm1
  Left = 225
  Top = 116
  Width = 653
  Height = 438
  HorzScrollBar.Range = 333
  VertScrollBar.Range = 333
  ActiveControl = DBGrid1
  AutoScroll = False
  Caption = 'MyBase1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  DesignSize = (
    645
    404)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 629
    Height = 386
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 56
    Top = 32
  end
  object cds: TClientDataSet
    Aggregates = <>
    FileName = 'C:\Program Files\Common Files\Borland Shared\Data\customer.cds'
    Params = <>
    Left = 56
    Top = 104
  end
end
