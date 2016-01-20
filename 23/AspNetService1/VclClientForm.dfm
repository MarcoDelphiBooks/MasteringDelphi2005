object Form1: TForm1
  Left = 0
  Top = 0
  Width = 417
  Height = 238
  Caption = 'VclClient for AspNetService1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 296
    Top = 62
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 296
    Top = 120
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Edit1: TEdit
    Left = 48
    Top = 40
    Width = 97
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object Edit2: TEdit
    Left = 48
    Top = 72
    Width = 97
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object btnAdd: TButton
    Left = 200
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 2
    OnClick = btnAddClick
  end
  object btnTime: TButton
    Left = 200
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Time'
    TabOrder = 3
    OnClick = btnTimeClick
  end
  object UpDown1: TUpDown
    Left = 145
    Top = 40
    Width = 16
    Height = 21
    Associate = Edit1
    TabOrder = 4
  end
  object UpDown2: TUpDown
    Left = 145
    Top = 72
    Width = 16
    Height = 21
    Associate = Edit2
    TabOrder = 5
  end
end
