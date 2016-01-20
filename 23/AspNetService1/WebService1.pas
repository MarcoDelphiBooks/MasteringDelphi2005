unit WebService1;

interface

uses
  System.Collections, System.ComponentModel,
  System.Data, System.Web, System.Web.Services;

type
  /// <summary>
  /// Summary description for WebService1.
  /// </summary>
 [WebService(Namespace='http://marcocantu.com')]
  TWebService1 = class(System.Web.Services.WebService)
  {$REGION 'Designer Managed Code'}
  strict private
    /// <summary>
    /// Required designer variable.
    /// </summary>
    components: IContainer;
    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    procedure InitializeComponent;
  {$ENDREGION}
  strict protected
    /// <summary>
    /// Clean up any resources being used.
    /// </summary>
    procedure Dispose(disposing: boolean); override;
  private
    { Private Declarations }
  public
    constructor Create;
    [WebMethod(EnableSession=false)]
    function CrazyAdd (a, b: Integer): Integer;
    [WebMethod(EnableSession=false)]
    function RemoteTime: string;
  end;

implementation

{$REGION 'Designer Managed Code'}
/// <summary>
/// Required method for Designer support - do not modify
/// the contents of this method with the code editor.
/// </summary>
procedure TWebService1.InitializeComponent;
begin

end;
{$ENDREGION}

constructor TWebService1.Create;
begin
  inherited;
  //
  // Required for Designer support
  //
  InitializeComponent;
  //
  // TODO: Add any constructor code after InitializeComponent call
  //
end;

/// <summary>
/// Clean up any resources being used.
/// </summary>
procedure TWebService1.Dispose(disposing: boolean);
begin
  if disposing and (components <> nil) then
    components.Dispose;
  inherited Dispose(disposing);
end;

function TWebService1.CrazyAdd(a, b: Integer): Integer;
begin
  Result := Random(a) + Random (b) + Random (a+b);
end;

function TWebService1.RemoteTime: string;
var
  aTime: DateTime;
begin
  aTime := DateTime.Now;
  Result := aTime.ToLongTimeString;
end;

end.

