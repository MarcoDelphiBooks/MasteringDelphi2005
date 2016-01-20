unit IWClientGridForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWDynGrid,
  IWBaseComponent, IWBaseHTMLComponent, IWClientSideDatasetBase,
  IWClientSideDatasetDBLink, DB, IWLayoutMgrHTML, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML;

type
  TMainForm = class(TIWAppForm)
    DataSource1: TDataSource;
    IWClientSideDatasetDBLink1: TIWClientSideDatasetDBLink;
    IWDynGrid1: TIWDynGrid;
    IWLayoutMgrHTML1: TIWLayoutMgrHTML;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;


procedure TMainForm.IWAppFormCreate(Sender: TObject);
begin
  UserSession.SimpleDataSet1.Open;
  DataSource1.DataSet := UserSession.SimpleDataSet1;

  IWLayoutMgrHTML1.HTML.LoadFromFile('layout.html');
  IWLayoutMgrHTML1.Enabled := True;
end;

initialization
  TMainForm.SetAsMainForm;

end.
