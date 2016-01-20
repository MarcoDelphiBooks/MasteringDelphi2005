unit RemotableUnit;

interface

type
  TRemotableTest = class (MarshalByRefObject)
  private
    nValue: Integer;
  public
    class var RemotableObjCount: Integer;
    constructor Create;
    destructor Destroy; override;
    function GetValue: Integer;
    procedure SetValue (Value: Integer);
    procedure Increase;
    function ToString: string; override;
  end;

implementation

{ TRemotableTest }

constructor TRemotableTest.Create;
begin
  inherited Create;
  Inc(RemotableObjCount);
end;

destructor TRemotableTest.Destroy;
begin
  Dec(RemotableObjCount);
  inherited Destroy;
end;

function TRemotableTest.GetValue: Integer;
begin
  Result := nValue;
end;

procedure TRemotableTest.Increase;
begin
  Inc (nValue);
end;

procedure TRemotableTest.SetValue(Value: Integer);
begin
  nValue := Value;
end;

function TRemotableTest.ToString: string;
begin
  Result := TObject(nValue).ToString;
end;

end.
