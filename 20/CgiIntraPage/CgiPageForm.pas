unit CgiPageForm;

interface

uses
  Classes, SysUtils, IWApplication, IWTypes, IWPageForm, IWInit, IWLicenseKey,
  IWVCLComponent, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWLayoutMgrHTML, IWCompListbox, IWCompLabel, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton;

type
  TMainForm = class(TIWPageForm)
    IWButton1: TIWButton;
    IWLabel1: TIWLabel;
    IWComboBox1: TIWComboBox;
    IWLayoutMgrHTML1: TIWLayoutMgrHTML;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TMainForm.IWButton1Click(Sender: TObject);
begin
  IWLabel1.Caption := 'This is a test';
end;

initialization
  TMainForm.RegisterPage;


end.