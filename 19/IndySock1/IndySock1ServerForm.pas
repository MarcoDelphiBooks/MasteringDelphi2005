unit IndySock1ServerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPServer, StdCtrls,
  IdCommandHandlers, IdContext, IDUri, IdCmdTCPServer, IdCustomTCPServer;

type
  TFormServer = class(TForm)
    IdCmdTCPServer1: TIdCmdTCPServer;
    lbLog: TListBox;
    procedure IdTCPServer1Execute(AContext: TIdContext);
    procedure IdTCPServer1Connect(AContext:TIdContext);
    procedure IdTCPServer1TIdCommandHandler1Command(ASender: TIdCommand);
    procedure FormCreate(Sender: TObject);
    procedure IdTCPServer1Disconnect(AContext:TIdContext);
    procedure IdTCPServer1TIdCommandHandler2Command(ASender: TIdCommand);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServer: TFormServer;

implementation

{$R *.dfm}

uses
  IdStreamVCL;

procedure TFormServer.IdTCPServer1TIdCommandHandler1Command(
  ASender: TIdCommand);
begin
  lbLog.Items.Add ('Execute command from: ' +
    ASender.Context.Connection.Socket.Binding.PeerIP);
  ASender.SendReply;
  ASender.Context.Connection.IOHandler.WriteLn ('This is a dynamic response');
end;

procedure TFormServer.FormCreate(Sender: TObject);
begin
  IdCmdTCPServer1.Active := True;
end;

procedure TFormServer.IdTCPServer1Disconnect(AContext:TIdContext);
begin
  lbLog.Items.Add ('Disconnected from: ' +
    AContext.Connection.Socket.Binding.PeerIP);
end;

procedure TFormServer.IdTCPServer1TIdCommandHandler2Command(
  ASender: TIdCommand);
var
  filename: string;
  aStream: TFileStream;
//  aIdStream: TIdStreamVCL;
begin
  if Assigned (ASender.Params) then
    filename := TIdUri.URLDecode (ASender.Params[0]);
  lbLog.Items.Add ('File request [' + filename + '] from: ' +
    ASender.Context.Connection.Socket.Binding.PeerIP);

  if not FileExists (filename) then
  begin
    lbLog.Items.Add ('File not found: ' + filename);
    raise EIdTCPServerError.Create ('File not found: ' + filename);
  end
  else
  begin
    ASender.SendReply;
    aStream := TFileStream.Create(filename,
      fmOpenRead or fmShareDenyWrite);
    try
      ASender.Context.Connection.IOHandler.Writeln (
        IntToStr (aStream.Size));
//      aIdStream := TIdStreamVCL.Create(aStream, False);
      try
        ASender.Context.Connection.IOHandler.
          Write (aStream, aStream.Size);
        lbLog.Items.Add ('File returned: ' + filename +
          ' (' + IntToStr (aStream.Size) + ')');
      finally
        // aIdStream.Free;
      end;
    finally
      aStream.Free;
    end;
  end;
end;

procedure TFormServer.IdTCPServer1Connect(AContext:TIdContext);
begin
  lbLog.Items.Add ('Connected from: ' +
    AContext.Connection.Socket.Binding.PeerIP);
end;

procedure TFormServer.IdTCPServer1Execute(AContext: TIdContext);
var
  strCommand: string;
begin
  strCommand := AContext.Connection.IOHandler.ReadLn;
  if SameText (strCommand, 'text') then
    AContext.Connection.IOHandler.WriteLn('200 OK');
end;

end.
