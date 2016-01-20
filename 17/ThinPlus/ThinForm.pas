unit ThinForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, MConnect, SConnect, provider, Db, Grids, DBGrids, StdCtrls, ObjBrkr, MidasLib;

type
  TClientForm = class(TForm)
    cds: TClientDataSet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ButtonFetch: TButton;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    Edit3: TEdit;
    cdsDet: TClientDataSet;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Button2: TButton;
    ConnectionBroker1: TConnectionBroker;
    applyedit: TEdit;
    Button3: TButton;
    DCOMConnection1: TDCOMConnection;
    cdsDEPT_NO: TStringField;
    cdsDEPARTMENT: TStringField;
    cdsHEAD_DEPT: TStringField;
    cdsMNGR_NO: TSmallintField;
    cdsBUDGET: TFMTBCDField;
    cdsLOCATION: TStringField;
    cdsPHONE_NO: TStringField;
    cdsSQLEmployees: TDataSetField;
    SocketConnection1: TSocketConnection;
    WebConnection1: TWebConnection;
    procedure ConnectionBroker1AfterConnect(Sender: TObject);
    procedure ButtonFetchClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cdsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientForm: TClientForm;

implementation

uses QueForm;

{$R *.DFM}

procedure TClientForm.ButtonFetchClick(Sender: TObject);
begin
  ButtonFetch.Caption := IntToStr (cds.GetNextPacket);
end;

type
TCdsHack = class (TClientDataSet)
end;

procedure TClientForm.Button1Click(Sender: TObject);
// begin
  // cds.ApplyUpdates (StrToIntDef (applyedit.Text, -1));
var
  errorcount: integer;
  ovar: olevariant;
begin
  if cds.ChangeCount = 0 then
    Exit;
  ovar := TCdsHack(cds).DoApplyUpdates(
    cds.Delta,
    StrToIntDef (applyedit.Text, -1),
    errorcount);
  if errorcount = 0 then
    cds.Reconcile(ovar)
  else
  begin
    cdsDet.Data := ovar;
    cdsDet.Open;
    cdsDet.LogChanges := False;
    // cdsDet.StatusFilter := [usUnmodified, usModified, usInserted, usDeleted];
  end;
end;

procedure TClientForm.CheckBox1Click(Sender: TObject);
begin
//  if Checkbox1.Checked then
//    ConnectionBroker1.AppServer.Login (Edit2.Text, Edit3.Text);
  ConnectionBroker1.Connected := Checkbox1.Checked;
  cds.Active := Checkbox1.Checked;
end;

procedure TClientForm.Button2Click(Sender: TObject);
begin
  FormQuery.Show;
end;

procedure TClientForm.Button3Click(Sender: TObject);
begin
  // ShowMessage (IntToStr (Ord(cdsDet.UpdateStatus)));
  showMessage (IntToStr (cds.RecordCount));
  cds.Reconcile(cdsDet.Data)
end;

procedure TClientForm.cdsReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ShowMessage (E.Message);
end;

procedure TClientForm.ConnectionBroker1AfterConnect(Sender: TObject);
begin
  ConnectionBroker1.AppServer.Login (Edit2.Text, Edit3.Text);
end;

end.
