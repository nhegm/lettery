unit statistics;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, System.IOUtils, FMX.StdCtrls;

type
  TstatsForm = class(TForm)
    winsLabel: TLabel;
    gamesLabel: TLabel;
    streakLabel: TLabel;
    headLabel: TLabel;
    Switcher: TSwitch;
    lastStreakLabel: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SwitcherSwitch(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  statsForm: TstatsForm;

implementation

uses HeaderFooterTemplate;

const
  commonHeaderRus = 'Общая статистика'; commonHeaderEng = 'Common statistics'; commonHeaderLat = 'Statistica tota'; commonHeaderEsp = 'Todas las estadísticas';
  GamesRus = 'Игр сыграно: '; GamesEng = 'Games played: ';  GamesLat = 'Ludos lusit: '; GamesEsp = 'Juegos jugados: ';
  WinsRus = 'Побед: '; WinsEng = 'Wins: '; WinsLat = 'Victoriae: '; WinsEsp = 'Victorias: ';
  StreakRus = 'Длиннейшая серия: '; StreakEng = 'Longiest streak: '; StreakLat = 'Series longissima: '; StreakEsp = 'Racha más larga: ';
  LastStreakRus = 'Текущая серия: '; LastStreakEng = 'Current Streak: '; LastStreakLat = 'Series praesens: '; LastStreakEsp = 'Racha actual: ';

  commonHeaders: array [1..4] of String = (commonHeaderRus, commonHeaderEng, commonHeaderLat, commonHeaderEsp);
  GamesStat: array [1..4] of String = (GamesRus, GamesEng, GamesLat, GamesEsp);
  WinsStat: array [1..4] of String = (WinsRus, WinsEng, WinsLat, WinsEsp);
  StreakStat: array [1..4] of String = (StreakRus, StreakEng, StreakLat, StreakEsp);
  LastStreakStat: array [1..4] of String = (LastStreakRus, LastStreakEng, LastStreakLat, LastStreakEsp);

  langHeaderRus = 'Русс стат'; langHeaderEng = 'English stat'; langHeaderLat = 'Statistica latina'; langHeaderEsp = 'Estadística en español';
  langHeaders: array [1..4] of String = (langHeaderRus, langHeaderEng, langHeaderLat, langHeaderEsp);


{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure elementsSettings;
begin
  statsForm.height:= 200;
  statsForm.width:= 220;
  statsForm.Top:=50;
  statsForm.Left:=100;
  statsForm.Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  statsForm.headLabel.TextSettings.Font.Size := 14;
  statsForm.headLabel.Position.Y := 10;
  statsForm.headLabel.Position.X := (statsForm.Width - statsForm.headLabel.Width) / 2;
  statsForm.gamesLabel.Position.X := (statsForm.Width - statsForm.gamesLabel.Width) / 2;
  statsForm.gamesLabel.Position.Y := statsForm.headLabel.Position.Y + 30;
  statsForm.winsLabel.Position.X := (statsForm.Width - statsForm.winsLabel.Width) / 2;
  statsForm.winsLabel.Position.Y := statsForm.gamesLabel.Position.Y + 30;
  statsForm.streakLabel.Position.X := (statsForm.Width - statsForm.streakLabel.Width) / 2;
  statsForm.streakLabel.Position.Y := statsForm.winsLabel.Position.Y + 30;
  statsForm.lastStreakLabel.Position.X := (statsForm.Width - statsForm.lastStreakLabel.Width) / 2;
  statsForm.lastStreakLabel.Position.Y := statsForm.streakLabel.Position.Y + 30;
  statsForm.Switcher.Enabled := true;
  statsForm.Switcher.Position.X := (statsForm.Width - statsForm.Switcher.Width) / 2;
  statsForm.Switcher.Position.Y := statsForm.lastStreakLabel.Position.Y + 30;
  statsForm.gamesLabel.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  statsForm.winsLabel.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  statsForm.streakLabel.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  statsForm.lastStreakLabel.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  statsForm.headLabel.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
end;

procedure commonStatTextFields;
begin
  statsForm.headLabel.Text := commonHeaders[HeaderFooterTemplate.VocNumber];
  statsForm.gamesLabel.Text := GamesStat[HeaderFooterTemplate.VocNumber] + inttostr(HeaderFooterTemplate.games);
  statsForm.winsLabel.Text := WinsStat[HeaderFooterTemplate.VocNumber] + inttostr(HeaderFooterTemplate.wins);
  statsForm.streakLabel.Text := StreakStat[HeaderFooterTemplate.VocNumber] + inttostr(HeaderFooterTemplate.winStreak);
  statsForm.lastStreakLabel.Text := LastStreakStat[HeaderFooterTemplate.VocNumber] + inttostr(HeaderFooterTemplate.lastStreak);
end;

procedure langStatTextFields;
begin
  statsForm.headLabel.Text := langHeaders[HeaderFooterTemplate.VocNumber];
  statsForm.gamesLabel.Text := GamesStat[HeaderFooterTemplate.VocNumber] + inttostr(HeaderFooterTemplate.gamesL);
  statsForm.winsLabel.Text := WinsStat[HeaderFooterTemplate.VocNumber] + inttostr(HeaderFooterTemplate.winsL);
  statsForm.streakLabel.Text:=StreakStat[HeaderFooterTemplate.VocNumber] + inttostr(HeaderFooterTemplate.winStreakL);
  statsForm.lastStreakLabel.Text:=LastStreakStat[HeaderFooterTemplate.VocNumber] + inttostr(HeaderFooterTemplate.lastStreakL);
end;

procedure TstatsForm.FormShow(Sender: TObject);
begin
  elementsSettings;
  SwitcherSwitch(self);

  statsForm.Active := true;
  MainForm.Active := false;
end;

procedure TstatsForm.SwitcherSwitch(Sender: TObject);
begin
  if Switcher.IsChecked
    then langStatTextFields
    else commonStatTextFields;
end;

end.
