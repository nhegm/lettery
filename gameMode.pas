unit gameMode;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Gestures;

type
  TForm1 = class(TForm)
    FiveLetters: TButton;
    GuessWhat: TButton;
    GestureManager1: TGestureManager;
    procedure FormShow(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure FiveLettersClick(Sender: TObject);
    procedure GuessWhatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gameModeForm: TForm1;
  i: integer;

const
  textFiveLettersRus='5 букв'; textFiveLettersEng='5 letters'; textFiveLettersLat=''; textFiveLettersEsp='5 letras'; textFiveLettersFra='';
  textGuessWhatRus='Угадай слово'; textGuessWhatEng='Guess What?'; textGuessWhatLat=''; textGuessWhatEsp='¿Qué es eso?'; textGuessWhatFra='';

  textGuessWhatButton: array [1..5] of String = (textGuessWhatRus, textGuessWhatEng, textGuessWhatLat, textGuessWhatEsp, textGuessWhatFra);
  textFiveLettersButton: array [1..5] of String = (textFiveLettersRus, textFiveLettersEng, textFiveLettersLat, textFiveLettersEsp, textFiveLettersFra);

implementation

uses HeaderFooterTemplate, GuessWhat;
{$R *.fmx}

procedure elementsSettings;
begin
  gameModeForm.Width := round (screen.Width / 2);
  gameModeForm.Height := round (screen.Height) + 200;
  gameModeForm.Top := 0;
  gameModeForm.Left := 0;
  gameModeForm.Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  gameModeForm.FiveLetters.Width := gameModeForm.Width - 16;
  gameModeForm.FiveLetters.Height := 34;
  gameModeForm.GuessWhat.Width := gameModeForm.Width - 16;
  gameModeForm.GuessWhat.Height := 34;
  gameModeForm.FiveLetters.TintColor := HeaderFooterTemplate.boardNKeyColorsDef[ColorsSetNumber];
  gameModeForm.FiveLetters.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
  gameModeForm.GuessWhat.TintColor := HeaderFooterTemplate.boardNKeyColorsDef[ColorsSetNumber];
  gameModeForm.GuessWhat.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
  gameModeForm.FiveLetters.Position.Y := 150;
  gameModeForm.FiveLetters.Position.X := 8;
  gameModeForm.GuessWhat.Position.Y := gameModeForm.FiveLetters.Position.Y + gameModeForm.FiveLetters.Height + 8;
  gameModeForm.GuessWhat.Position.X := 8;
  gameModeForm.GuessWhat.Text := textGuessWhatButton[VocNumber];
  gameModeForm.FiveLetters.Text := textFiveLettersButton[VocNumber];
end;

procedure TForm1.FiveLettersClick(Sender: TObject);
begin
  elementsSettings;
  MainForm.Show;
end;

procedure TForm1.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  if EventInfo.GestureID = sgiLeft
    then gameModeForm.Close;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  elementsSettings;
end;

procedure TForm1.GuessWhatClick(Sender: TObject);
begin
  elementsSettings;
  GuessWhatForm.Show;
end;

end.
