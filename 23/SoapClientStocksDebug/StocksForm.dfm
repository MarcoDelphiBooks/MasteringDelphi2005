object Form1: TForm1
  Left = 0
  Top = 0
  Width = 645
  Height = 551
  Caption = 'SoapClientStocksDebug'
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
    Left = 40
    Top = 200
    Width = 22
    Height = 13
    Caption = 'Out:'
  end
  object Label2: TLabel
    Left = 40
    Top = 344
    Width = 14
    Height = 13
    Caption = 'In:'
  end
  object edTicker: TEdit
    Left = 40
    Top = 32
    Width = 257
    Height = 21
    TabOrder = 0
    Text = 'BORL'
  end
  object btnCheck: TButton
    Left = 312
    Top = 32
    Width = 81
    Height = 25
    Caption = 'Check'
    TabOrder = 1
    OnClick = btnCheckClick
  end
  object memoOutput: TMemo
    Left = 40
    Top = 64
    Width = 257
    Height = 121
    TabOrder = 2
  end
  object btnRio1: TButton
    Left = 312
    Top = 72
    Width = 81
    Height = 25
    Caption = 'Use Rio1'
    TabOrder = 3
    OnClick = btnRio1Click
  end
  object btnRio2: TButton
    Left = 312
    Top = 112
    Width = 81
    Height = 25
    Caption = 'Use Rio2'
    TabOrder = 4
    OnClick = btnRio2Click
  end
  object MemoRequest: TMemo
    Left = 40
    Top = 216
    Width = 561
    Height = 121
    Lines.Strings = (
      'MemoRequest')
    TabOrder = 5
  end
  object MemoResponse: TMemo
    Left = 40
    Top = 360
    Width = 561
    Height = 121
    Lines.Strings = (
      'MemoResponse')
    TabOrder = 6
  end
  object HTTPRIO1: THTTPRIO
    OnAfterExecute = HTTPRIO1AfterExecute
    OnBeforeExecute = HTTPRIO1BeforeExecute
    WSDLLocation = 
      'http://services.xmethods.net/soap/urn:xmethods-delayed-quotes.ws' +
      'dl'
    Service = 'net.xmethods.services.stockquote.StockQuoteService'
    Port = 'net.xmethods.services.stockquote.StockQuotePort'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 64
    Top = 80
  end
  object HTTPRIO2: THTTPRIO
    OnAfterExecute = HTTPRIO1AfterExecute
    OnBeforeExecute = HTTPRIO1BeforeExecute
    URL = 'http://64.124.140.30:9090/soap'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 64
    Top = 128
  end
end
