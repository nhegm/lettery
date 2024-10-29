program Lettery;

uses
  System.StartUpCopy,
  FMX.Forms,
  HeaderFooterTemplate in 'HeaderFooterTemplate.pas' {MainForm},
  meaningForm in 'meaningForm.pas' {meaningForm1},
  statistics in 'statistics.pas' {statsForm},
  themeForm in 'themeForm.pas' {setForm},
  infoForm in 'infoForm.pas' {informationForm},
  langForm in 'langForm.pas' {languageForm},
  ratings in 'ratings.pas' {rateForm},
  gameMode in 'gameMode.pas' {Form1},
  GuessWhat in 'GuessWhat.pas' {GuessWhatForm};

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TlanguageForm, languageForm);
  Application.CreateForm(TmeaningForm1, meaningForm1);
  Application.CreateForm(TstatsForm, statsForm);
  Application.CreateForm(TsetForm, setForm);
  Application.CreateForm(TinformationForm, informationForm);
  Application.CreateForm(TrateForm, rateForm);
  Application.CreateForm(TForm1, GameModeForm);
  Application.CreateForm(TGuessWhatForm, GuessWhatForm);
  Application.Run;
end.
