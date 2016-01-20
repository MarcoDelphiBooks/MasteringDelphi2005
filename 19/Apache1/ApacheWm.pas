unit ApacheWm;

interface

uses
  SysUtils, Classes, HTTPApp, ApacheApp, ApacheHTTP, HTTPD;

type
  TWebModule1 = class(TWebModule)
    procedure WebModule1WebActionItem1Action(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModule1: TWebModule1;

implementation

{$R *.DFM}

procedure TWebModule1.WebModule1WebActionItem1Action(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  {if Request.Authorization = '' then
  begin
    Response.StatusCode := 401;
    Response.WWWAuthenticate := 'Basic';
    Response.Realm := 'apache1';
  end
  else}
   Response.Content := '<h1>Apache1 module</h1><p>This is a test only</p>'+
    '<p>PathInfo: ' + Request.PathInfo + '</p>' +
    '<p>PathTranslated: ' + Request.PathTranslated + '</p>' +
    '<p>Authorization: ' + Request.Authorization + '</p>' +
    '<p>InternalPathInfo: ' + Request.InternalPathInfo + '</p>' +
    '<p>InternalScriptName: ' + Request.InternalScriptName + '</p>' +
    '<p>URL: ' + Request.URL + '</p>';
end;

function Apache_OnAuthChecker(Request: Prequest_rec): integer;
var
  c_req: Pconn_rec;
begin
    c_req := Request^.connection;

    if strcomp('marco', c_req.user) = 0 then
      result := AP_OK
    else
    begin
      ap_log_error(Request.server.error_fname , APLOG_ALERT, APLOG_ALERT, Request.server,
                   PChar('access to ' + Request.uri + ' failed, reason: user ' +
                   c_req.user + ' not allowed access '));
      result := HTTP_UNAUTHORIZED;
    end;
end;

initialization

//   ApacheOnAuthChecker := Apache_OnAuthChecker;

end.
