object WebModule2: TWebModule2
  OldCreateOrder = False
  Actions = <
    item
      Name = 'actionTypesList'
      PathInfo = '/typeslist'
      OnAction = WebModule2actionTypesListAction
    end
    item
      Name = 'actionConvertCurrency'
      PathInfo = '/convertcurrency'
      OnAction = WebModule2actionConvertCurrencyAction
    end
    item
      Default = True
      Name = 'actionInfo'
      PathInfo = '/info'
      OnAction = WebModule2actionInfoAction
    end>
  Height = 150
  Width = 215
end
