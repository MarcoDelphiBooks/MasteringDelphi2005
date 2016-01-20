object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 238
  Width = 406
  object cdsOrders: TClientDataSet
    Aggregates = <>
    FileName = 'c:\program files\common files\borland shared\data\orders.cds'
    Params = <>
    Left = 32
    Top = 16
    object cdsOrdersOrderNo: TFloatField
      FieldName = 'OrderNo'
      DisplayFormat = #39'#'#39'0000'
    end
    object cdsOrdersCustNo: TFloatField
      Alignment = taLeftJustify
      CustomConstraint = 'CustNo IS NOT NULL'
      ConstraintErrorMessage = 'CustNo cannot be blank'
      FieldName = 'CustNo'
      Required = True
      DisplayFormat = 'CN 0000'
      MaxValue = 9999.000000000000000000
      MinValue = 1000.000000000000000000
    end
    object cdsOrdersEmployee: TStringField
      FieldKind = fkLookup
      FieldName = 'Employee'
      LookupDataSet = cdsEmployee
      LookupKeyFields = 'EmpNo'
      LookupResultField = 'LastName'
      KeyFields = 'EmpNo'
      Size = 30
      Lookup = True
    end
    object cdsOrdersSaleDate: TDateTimeField
      FieldName = 'SaleDate'
    end
    object cdsOrdersShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object cdsOrdersEmpNo: TIntegerField
      CustomConstraint = 'Value > 0'
      ConstraintErrorMessage = 'EmpNo cannot be 0 or negative'
      FieldName = 'EmpNo'
      Required = True
      Visible = False
      DisplayFormat = 'Emp'#39'#'#39' 0000'
      MaxValue = 9999
      MinValue = 1
    end
    object cdsOrdersShipToContact: TStringField
      FieldName = 'ShipToContact'
    end
    object cdsOrdersShipToAddr1: TStringField
      FieldName = 'ShipToAddr1'
      Size = 30
    end
    object cdsOrdersShipToAddr2: TStringField
      FieldName = 'ShipToAddr2'
      Size = 30
    end
    object cdsOrdersShipToCity: TStringField
      FieldName = 'ShipToCity'
      Size = 15
    end
    object cdsOrdersShipToState: TStringField
      FieldName = 'ShipToState'
    end
    object cdsOrdersShipToZip: TStringField
      FieldName = 'ShipToZip'
      Size = 10
    end
    object cdsOrdersShipToCountry: TStringField
      FieldName = 'ShipToCountry'
    end
    object cdsOrdersShipToPhone: TStringField
      FieldName = 'ShipToPhone'
      Size = 15
    end
    object cdsOrdersShipVIA: TStringField
      FieldName = 'ShipVIA'
      Size = 7
    end
    object cdsOrdersPO: TStringField
      FieldName = 'PO'
      Size = 15
    end
    object cdsOrdersTerms: TStringField
      FieldName = 'Terms'
      Size = 6
    end
    object cdsOrdersPaymentMethod: TStringField
      FieldName = 'PaymentMethod'
      Size = 7
    end
    object cdsOrdersItemsTotal: TCurrencyField
      FieldName = 'ItemsTotal'
    end
    object cdsOrdersTaxRate: TFloatField
      FieldName = 'TaxRate'
      DisplayFormat = '0.00%'
      MaxValue = 100.000000000000000000
    end
    object cdsOrdersFreight: TCurrencyField
      FieldName = 'Freight'
    end
    object cdsOrdersAmountPaid: TCurrencyField
      FieldName = 'AmountPaid'
    end
  end
  object cdsEmployee: TClientDataSet
    Aggregates = <>
    FileName = 'c:\program files\common files\borland shared\data\employee.cds'
    IndexFieldNames = 'LastName'
    Params = <>
    Left = 32
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = cdsOrders
    Left = 88
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = cdsEmployee
    Left = 88
    Top = 64
  end
end
