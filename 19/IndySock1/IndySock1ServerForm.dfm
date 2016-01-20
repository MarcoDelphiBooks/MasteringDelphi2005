object FormServer: TFormServer
  Left = 451
  Top = 158
  Caption = 'IndySock1Server'
  ClientHeight = 217
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    367
    217)
  PixelsPerInch = 96
  TextHeight = 13
  object lbLog: TListBox
    Left = 8
    Top = 8
    Width = 353
    Height = 201
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    TabOrder = 0
  end
  object IdCmdTCPServer1: TIdCmdTCPServer
    Bindings = <>
    DefaultPort = 1050
    OnConnect = IdTCPServer1Connect
    OnDisconnect = IdTCPServer1Disconnect
    CommandHandlers = <
      item
        CmdDelimiter = ' '
        Command = 'test'
        Disconnect = False
        Name = 'TIdCommandHandler0'
        NormalReply.Code = '100'
        NormalReply.Text.Strings = (
          'Hello from your Indy Server')
        ParamDelimiter = ' '
        ParseParams = False
        Tag = 0
      end
      item
        CmdDelimiter = ' '
        Command = 'execute'
        Disconnect = False
        Name = 'TIdCommandHandler1'
        NormalReply.Code = '200'
        NormalReply.Text.Strings = (
          'OK for execute')
        ParamDelimiter = ' '
        ParseParams = False
        Tag = 0
        OnCommand = IdTCPServer1TIdCommandHandler1Command
      end
      item
        CmdDelimiter = ' '
        Command = 'getfile'
        Disconnect = False
        Name = 'TIdCommandHandler2'
        NormalReply.Code = '200'
        NormalReply.Text.Strings = (
          'OK for getfile')
        ParamDelimiter = ' '
        ParseParams = True
        Tag = 0
        OnCommand = IdTCPServer1TIdCommandHandler2Command
      end>
    ExceptionReply.Code = '500'
    ExceptionReply.Text.Strings = (
      'Unknown Internal Error')
    Greeting.Code = '200'
    Greeting.Text.Strings = (
      'Welcome')
    HelpReply.Code = '100'
    HelpReply.Text.Strings = (
      'Help follows')
    MaxConnectionReply.Code = '300'
    MaxConnectionReply.Text.Strings = (
      'Too many connections. Try again later.')
    ReplyTexts = <>
    ReplyUnknownCommand.Code = '400'
    ReplyUnknownCommand.Text.Strings = (
      'Unknown Command')
    Left = 56
    Top = 32
  end
end
