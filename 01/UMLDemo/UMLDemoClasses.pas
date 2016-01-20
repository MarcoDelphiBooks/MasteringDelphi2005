unit UMLDemoClasses;

interface

uses
  SysUtils;

type
  THireInfo = class
  public
    HireDate: TDateTime;
    ContractType: string;
  end;

  TAddress = class
  public
    StreetAddress: string;
    Town: string;
    ZIP: string;
  end;

  TPerson = class
  private
    FAnAddress: TAddress;
  public
    Name: string;
    property AnAddress: TAddress
      read FAnAddress write FAnAddress;
  end;

  TEmployee = class (TPerson)
  public
    Manager: TEmployee;
    Since: TDateTime;
    HireInfo: THireInfo;
  end;



implementation

end.
