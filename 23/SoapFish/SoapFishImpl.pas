{ Invokable implementation File for TSoapFish which implements ISoapFish }

unit SoapFishImpl;

interface

uses InvokeRegistry, Types, XSBuiltIns, SoapFishIntf;

type
  { TSoapFish }
  TSoapFish = class(TInvokableClass, ISoapFish)
  public
    function GetCds: TSoapAttachment; stdcall;
    function GetImage(fishName: string): TSoapAttachment; stdcall;
  end;

implementation

uses
  SoapFishModule, Classes, SysUtils, DB;

{ TSoapFish }

function TSoapFish.GetCds: TSoapAttachment; stdcall;
var
  memStr: TMemoryStream;
begin
  Result := TSoapAttachment.Create;
  memStr := TMemoryStream.Create;
  WebModule2.cdsFish.SaveToStream(MemStr); // binary
  Result.SetSourceStream (memStr, soOwned);
end;

function TSoapFish.GetImage(fishName: string): TSoapAttachment; stdcall;
var
  BlobStream: TStream;
begin
  if not WebModule2.cdsFish.Locate('Common_Name', fishName, []) then
    raise Exception.Create ('Record not found [' + fishName + ']');

  BlobStream := WebModule2.cdsFish.CreateBlobStream(
    WebModule2.cdsFishGraphic, bmRead);
  BlobStream.Position := 0;

  Result := TSoapAttachment.Create;
  Result.SetSourceStream (BlobStream, soOwned);
end;

initialization
  { Invokable classes must be registered }
  InvRegistry.RegisterInvokableClass(TSoapFish);
end.
