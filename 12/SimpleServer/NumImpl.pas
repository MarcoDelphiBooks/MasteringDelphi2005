unit NumImpl;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, ComObj, SimpleServer_TLB, StdVcl;

type
  TNumberProp = class(TTypedComObject, INumberProp)
  private
    fValue: Integer;
  protected
    function Get_Value: Integer; stdcall;
    procedure Increase; stdcall;
    procedure Set_Value(New: Integer); stdcall;
  public
    procedure Initialize; override;
    destructor Destroy; override;
  end;

implementation

uses ComServ;

destructor TNumberProp.Destroy;
begin
  MessageBox (0, 'Object Destroyed',
    'TNumberProp', mb_OK); // API call
  inherited;
end;

function TNumberProp.Get_Value: Integer;
begin
  Result := fValue
end;

procedure TNumberProp.Increase;
begin
  Inc (fValue)
end;

procedure TNumberProp.Initialize;
begin
  inherited;
  fValue := 10
end;

procedure TNumberProp.Set_Value(New: Integer);
begin
  fValue := New
end;

initialization
  TTypedComObjectFactory.Create(ComServer, TNumberProp, Class_NumberProp,
    ciMultiInstance, tmApartment);
end.
