object WebModule1: TWebModule1
  OldCreateOrder = False
  Actions = <
    item
      Default = True
      Name = 'WebActionItem1'
      PathInfo = '/show'
      OnAction = WebModule1WebActionItem1Action
    end
    item
      Name = 'WebActionItem2'
      PathInfo = '/iwdemo'
      Producer = IWPageProducer1
    end>
  Height = 215
  Width = 314
  object IWPageProducer1: TIWPageProducer
    OnGetForm = IWPageProducer1GetForm
    Left = 96
    Top = 72
  end
  object IWModuleController1: TIWModuleController
    Left = 96
    Top = 128
  end
end
