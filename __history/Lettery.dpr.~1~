program CincoCartas;

uses
  System.StartUpCopy,
  FMX.Forms,
  HeaderFooterTemplate in 'HeaderFooterTemplate.pas' {MainForm},
  languageForm in 'languageForm.pas' {language},
  meaningForm in 'meaningForm.pas' {meaningForm1},
  statistics in 'statistics.pas' {statsForm},
  themeForm in 'themeForm.pas' {setForm},
  infoForm in 'infoForm.pas' {informationForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(Tlanguage, language);
  Application.CreateForm(TmeaningForm1, meaningForm1);
  Application.CreateForm(TstatsForm, statsForm);
  Application.CreateForm(TsetForm, setForm);
  Application.CreateForm(TinformationForm, informationForm);
  Application.Run;
end.
