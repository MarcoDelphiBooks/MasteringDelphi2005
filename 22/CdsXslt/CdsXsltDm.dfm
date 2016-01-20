object WebModule1: TWebModule1
  OldCreateOrder = False
  Actions = <
    item
      Default = True
      Name = 'WebActionItem1'
      PathInfo = '/show'
      OnAction = WebModule1WebActionItem1Action
    end>
  Height = 236
  Width = 403
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 'C:\Program Files\Common Files\Borland Shared\Data\customer.xml'
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 136
    Top = 48
  end
  object XMLDom: TXMLDocument
    Left = 104
    Top = 120
    DOMVendorDesc = 'MSXML'
  end
  object XSLDom: TXMLDocument
    Left = 176
    Top = 120
    DOMVendorDesc = 'MSXML'
  end
  object HTMLDom: TXMLDocument
    Left = 248
    Top = 120
    DOMVendorDesc = 'MSXML'
  end
end
