unit statisticsGW;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, System.IOUtils, FMX.StdCtrls;

type
  TstatGWForm = class(TForm)
    SwitcherGW: TSwitch;
    percentageLabel: TLabel;
    gamesLabel: TLabel;
    headLabel: TLabel;
    winsLabel: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SwitcherGWSwitch(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  statGWForm: TstatGWForm;

implementation

uses HeaderFooterTemplate, GuessWhat;

const
  commonHeaderRusG = 'Общая статистика'; commonHeaderEngG = 'Common statistics'; commonHeaderLatG = 'Statistica tota'; commonHeaderEspG = 'Todas las estadísticas';
  GamesRusG = 'Игр сыграно: '; GamesEngG = 'Games played: ';  GamesLatG = 'Ludos lusit: '; GamesEspG = 'Juegos jugados: ';
  WinsRusG = 'Побед: '; WinsEngG = 'Wins: '; WinsLatG = 'Victoriae: '; WinsEspG = 'Victorias: ';
  percentageRusG = 'Процент побед: '; percentageEngG = 'Aver. attempts: '; percentageLatG = 'Что-то будет'; percentageEspG = 'Intento promedio: ';

  commonHeadersG: array [1..4] of String = (commonHeaderRusG, commonHeaderEngG, commonHeaderLatG, commonHeaderEspG);
  GamesStatG: array [1..4] of String = (GamesRusG, GamesEngG, GamesLatG, GamesEspG);
  WinsStatG: array [1..4] of String = (WinsRusG, WinsEngG, WinsLatG, WinsEspG);
  percentageStatG: array [1..4] of String = (percentageRusG, percentageEngG, percentageLatG, percentageEspG);

  langHeaderRusG = 'Русс стат'; langHeaderEngG = 'English stat'; langHeaderLatG = 'Statistica latina'; langHeaderEspG = 'Estadística en español';
  langHeadersG: array [1..4] of String = (langHeaderRusG, langHeaderEngG, langHeaderLatG, langHeaderEspG);

procedure elementsSettingsG;
begin
{$IFDEF ANDROID}
  statGWForm.height:= 150;
  statGWForm.width:= 260;
{$ENDIF}
  statGWForm.Top := 50;
  statGWForm.Left := round(screen.Width - statGWForm.Width) div 2;
  statGWForm.Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  statGWForm.headLabel.TextSettings.Font.Size := 14;
  statGWForm.headLabel.Position.X := (statGWForm.Width - statGWForm.headLabel.Width) / 2;
  statGWForm.headLabel.Position.Y := 10;
  statGWForm.gamesLabel.Position.X := (statGWForm.Width - statGWForm.gamesLabel.Width) / 2;
  statGWForm.gamesLabel.Position.Y := statGWForm.headLabel.Position.Y + 30;
  statGWForm.winsLabel.Position.X := (statGWForm.Width - statGWForm.winsLabel.Width) / 2;
  statGWForm.winsLabel.Position.Y := statGWForm.gamesLabel.Position.Y + 30;
  statGWForm.percentageLabel.Position.X := (statGWForm.Width - statGWForm.percentageLabel.Width) / 2;
  statGWForm.percentageLabel.Position.Y := statGWForm.winsLabel.Position.Y + 30;
  statGWForm.SwitcherGW.Enabled := true;
  statGWForm.SwitcherGW.Position.X := (statGWForm.Width - statGWForm.SwitcherGW.Width) / 2;
  statGWForm.SwitcherGW.Position.Y := statGWForm.percentageLabel.Position.Y + 30;
{$IFDEF MSWINDOWS}
  statGWForm.height:= round (statGWForm.SwitcherGW.Position.Y + 70);
{$ENDIF}
  statGWForm.headLabel.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  statGWForm.gamesLabel.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  statGWForm.winsLabel.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  statGWForm.percentageLabel.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
end;

procedure commonStatTextFieldsG;
begin
  statGWForm.headLabel.Text := commonHeadersG[GuessWhat.VocNumberG];
  statGWForm.gamesLabel.Text := GamesStatG[GuessWhat.VocNumberG] + inttostr(GuessWhat.gamesGW);
  statGWForm.winsLabel.Text := WinsStatG[GuessWhat.VocNumberG] + inttostr(GuessWhat.winsGW);
  statGWForm.percentageLabel.Text := percentageStatG[GuessWhat.VocNumberG] + intToStr(GuessWhat.percentageGW);
end;

procedure langStatTextFieldsG;
begin
  statGWForm.headLabel.Text := langHeadersG[GuessWhat.VocNumberG];
  statGWForm.gamesLabel.Text := GamesStatG[GuessWhat.VocNumberG] + inttostr(GuessWhat.gamesGWL);
  statGWForm.winsLabel.Text := WinsStatG[GuessWhat.VocNumberG] + inttostr(GuessWhat.winsGWL);
  statGWForm.percentageLabel.Text := percentageStatG[GuessWhat.VocNumberG] + intToStr(GuessWhat.percentageGWL);
end;

procedure TstatGWForm.FormShow(Sender: TObject);
begin
  elementsSettingsG;
  SwitcherGWSwitch(self);
end;

procedure TstatGWForm.SwitcherGWSwitch(Sender: TObject);
begin
  if SwitcherGW.IsChecked
    then langStatTextFieldsG
    else commonStatTextFieldsG;
end;

end.
