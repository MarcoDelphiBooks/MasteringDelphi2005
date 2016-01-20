unit VclClientForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    btnAdd: TButton;
    Label1: TLabel;
    btnTime: TButton;
    Label2: TLabel;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    procedure btnTimeClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  WebServiceImport;

{$R *.dfm}

procedure TForm1.btnAddClick(Sender: TObject);
begin
  Label1.Caption := IntToStr (GetTWebService1Soap.
    CrazyAdd(UpDown1.Position, UpDown2.Position));
end;

procedure TForm1.btnTimeClick(Sender: TObject);
begin
  Label2.Caption := GetTWebService1Soap.RemoteTime;
end;

end.
