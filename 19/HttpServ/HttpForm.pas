unit HttpForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPServer, IdHTTPServer,
  StdCtrls, StrUtils, IdCustomHTTPServer, IdContext, IdCustomTCPServer;

type
  TForm1 = class(TForm)
    IdHTTPServer1: TIdHTTPServer;
    ListBox1: TListBox;
    procedure IdHTTPServer1CommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses IdHTTPHeaderInfo;

{$R *.dfm}

// Indy 9 code:

{
procedure TForm1.IdHTTPServer1CommandGet(AThread: TIdPeerThread;
  RequestInfo: TIdHTTPRequestInfo; ResponseInfo: TIdHTTPResponseInfo);
var
  HtmlResult: String;
begin
  // log
  Listbox1.Items.Add (RequestInfo.Document);
  // respond
  HtmlResult := '<h1>HttpServ Demo</h1>' +
    '<p>This is the only page you''ll get from this example.</p><hr>' +
    '<p>Request: ' + RequestInfo.Document + '</p>' +
    '<p>Host: ' + RequestInfo.Host + '</p>' +
    '<p>Params: ' + RequestInfo.UnparsedParams + '</p>' +
    '<p>The headers of the request follow: <br>' +
    RequestInfo.RawHeaders.Text + '</p>';
  ResponseInfo.ContentText := HtmlResult;
end;
}

// Indy 10 code

procedure TForm1.IdHTTPServer1CommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
var
  strHtml: String;
begin
  // log
  Listbox1.Items.Add (ARequestInfo.Document);
  // respond
  strHtml := '<h1>HttpServ Demo</h1>' +
    '<p>This is the only page you''ll get from this example.</p><hr>' +
    '<p>Request: ' + ARequestInfo.Document + '</p>' +
    '<p>Host: ' + ARequestInfo.Host + '</p>' +
    '<p>Params: ' + ARequestInfo.UnparsedParams + '</p>' +
    '<p>The headers of the request follow: <br>' +
    ARequestInfo.RawHeaders.Text + '</p>';
  AResponseInfo.ContentText := strHtml;
end;

end.
