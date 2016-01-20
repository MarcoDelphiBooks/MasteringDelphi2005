program UMLDemo;

}

uses
  UMLDemoForm in 'UMLDemoForm.pas' {UMLDemoForm.TWinForm: System.Windows.Forms.Form},
  UMLDemoClasses in 'UMLDemoClasses.pas';

{$R *.res}


begin
  Application.Run(TWinForm.Create);
end.
