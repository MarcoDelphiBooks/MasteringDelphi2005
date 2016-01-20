unit IndySock1ClientForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdStreamVCL, IdUri;

type
  TFormClient = class(TForm)
    IdTCPClient1: TIdTCPClient;
    btnTest: TButton;
    btnExecute: TButton;
    btnConnect: TButton;
    btnDisconnect: TButton;
    Bevel1: TBevel;
    btnGetFile: TButton;
    edFileName: TEdit;
    Image1: TImage;
    Bevel2: TBevel;
    procedure btnTestClick(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure btnDisconnectClick(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
    procedure btnGetFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClient: TFormClient;

implementation

{$R *.dfm}

procedure TFormClient.btnTestClick(Sender: TObject);
begin
  IdTCPClient1.SendCmd ('test');
  ShowMessage (IdTCPClient1.LastCmdResult.Code + ' : ' +
    IdTCPClient1.LastCmdResult.Text.Text);
end;

procedure TFormClient.btnConnectClick(Sender: TObject);
begin
  IdTCPClient1.Connect;
  ShowMessage (IdTCPClient1.IOHandler.ReadLn);
end;

procedure TFormClient.btnDisconnectClick(Sender: TObject);
begin
  IdTCPClient1.Disconnect;
end;

procedure TFormClient.btnExecuteClick(Sender: TObject);
begin
  IdTCPClient1.SendCmd ('execute');
  ShowMessage (IdTCPClient1.LastCmdResult.Code + ' : ' +
    IdTCPClient1.LastCmdResult.Text.Text);
  ShowMessage (IdTCPClient1.IOHandler.ReadLn);
end;

procedure TFormClient.btnGetFileClick(Sender: TObject);
var
//  wrapperStream: TIdStreamVCL;
  realStream: TMemoryStream;
  strSize: string;
  nSize: Integer;
begin
  IdTCPClient1.SendCmd('getfile ' + TIdUri.ParamsEncode (edFileName.Text));
  ShowMessage (IdTCPClient1.LastCmdResult.Code + ' : ' +
    IdTCPClient1.LastCmdResult.Text.Text);
  strSize := IdTCPClient1.IOHandler.ReadLn;
  nSize := StrToInt (strSize);
  realStream := TMemoryStream.Create;
//  wrapperStream := TIdStreamVCL.Create (realStream, False);
  try
    IdTCPClient1.IOHandler.ReadStream(realStream, nSize);
    realStream.Position := 0;
    Image1.Picture.Bitmap.LoadFromStream (realStream);
  finally
    realStream.Free;
//    wrapperStream.Free;
  end;
end;

end.
