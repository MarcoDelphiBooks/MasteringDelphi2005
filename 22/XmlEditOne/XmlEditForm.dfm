object FormXmlEdit: TFormXmlEdit
  Left = 203
  Top = 141
  Width = 621
  Height = 385
  Caption = 'Xml Edit One'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 25
    Width = 613
    Height = 326
    ActivePage = TabSheet7
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    OnChanging = PageControl1Changing
    object TabSheet1: TTabSheet
      Caption = 'XML'
      object MemoXml: TMemo
        Left = 0
        Top = 0
        Width = 605
        Height = 277
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        OnChange = MemoXmlChange
        OnKeyUp = MemoXmlKeyUp
        OnMouseUp = MemoXmlMouseUp
      end
      object xmlBar: TStatusBar
        Left = 0
        Top = 277
        Width = 605
        Height = 21
        Panels = <
          item
            Width = 70
          end
          item
            Width = 70
          end
          item
            Width = 500
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'XML View'
      ImageIndex = 6
      object XmlBrowser: TWebBrowser
        Left = 0
        Top = 0
        Width = 605
        Height = 298
        Align = alClient
        TabOrder = 0
        ControlData = {
          4C000000873E0000CD1E00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 613
    Height = 25
    ButtonHeight = 21
    ButtonWidth = 53
    Caption = 'ToolBar1'
    EdgeBorders = [ebTop, ebBottom]
    Flat = True
    ShowCaptions = True
    TabOrder = 1
    object btnLoad: TToolButton
      Left = 0
      Top = 0
      Caption = '&Load'
      ImageIndex = 0
      OnClick = btnLoadClick
    end
    object btnSave: TToolButton
      Left = 53
      Top = 0
      Caption = '&Save As'
      ImageIndex = 2
      OnClick = btnSaveClick
    end
  end
  object XMLDoc: TXMLDocument
    Left = 376
    Top = 32
    DOMVendorDesc = 'MSXML'
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'xml'
    Filter = 'XML file (*.xml)|*.xml'
    Left = 136
    Top = 152
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xml'
    Filter = 'XML file (*.xml)|*.xml'
    Left = 208
    Top = 152
  end
end
