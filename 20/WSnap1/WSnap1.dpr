program WSnap1;

{$APPTYPE GUI}

uses
  Forms,
  WSnapForm in 'WSnapForm.pas' {Form1},
  home_dm in 'home_dm.pas' {home: TWebAppPageModule} {*.html},
  country_dm in 'country_dm.pas' {date: TWebPageModule} {*.html},
  date_dm in 'date_dm.pas' {country: TWebPageModule} {*.html},
  countries_dm in 'countries_dm.pas' {countries: TWebPageModule} {*.html};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
