unit GuessWhat;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Gestures,
  FMX.Layouts, FMX.StdCtrls, FMX.Objects, FMX.Ani, FMX.Controls.Presentation, System.IOUtils
  {$IF Defined(ANDROID)}
  ,Androidapi.Helpers
  {$ENDIF};
type
  TGuessWhatForm = class(TForm)
    GestureManager1: TGestureManager;
    ScrollBox: TScrollBox;
    QuestionField: TText;
    ThemeButton: TButton;
    ColorAnimation1: TColorAnimation;
    statsG: TButton;
    startGuess: TButton;
    StartAnimation: TFloatAnimation;
    Lang: TButton;
    LangAnimation: TFloatAnimation;
    SoundBtn: TButton;
    info: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure infoClick(Sender: TObject);
    procedure LangClick(Sender: TObject);
    procedure ThemeButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure startGuessClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GuessWhatForm: TGuessWhatForm;
  questionstring : String;
  ansButtArray: array [1..4] of TButton;              // массив кнопок с ответами
  answers , questions : array of String;             // 2 массива для хранения значений и слов
  ansRndm : array [1..4] of Integer;                // массив порядка ответов
  btnPushArray : array [1..4] of boolean;
  keysG: array [1..6] of TButton;
  iG, jG, wordNumber, sizeG: integer;
  sign, val, valTemp, randNumber: integer;                   // вспом. числа для перемешивания вариантов ответов
  fileQues , fileAnsw : string;
  inputG : text;
  VocNumberG: byte;
  languageChangedG : boolean;

const
  sizeRUSG = 1775;   //           - 1
  sizeENGG = 0;      //           - 2
  sizeLATG = 0;      //           - 3
  sizeESPG = 0;      //           - 4
  sizeFRAG = 0;      //           - 5
  answersSize: array [1..5] of integer = (sizeRUSG, sizeENGG, sizeLATG, sizeESPG, sizeFRAG);
  TextFieldHeight = 100;
  PadG = 8;

implementation

uses statistics, themeForm, langForm, infoForm, HeaderFooterTemplate, gameMode;
{$R *.fmx}

procedure topButtonsPropertiesG;
begin

  {$IFDEF ANDROID}
    keysG[1].TextSettings.FontColor := boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
    keysG[1].TintColor := boardNKeyColorsDef[HeaderFooterTemplate.ColorsSetNumber];
    keysG[2].TextSettings.Font.Size := 20;
    keysG[3].TextSettings.Font.Size := 20;
    keysG[4].TextSettings.Font.Size := 18;
    keysG[5].TextSettings.Font.Size := 20;
    keysG[6].TextSettings.Font.Size := 20;

    for iG := 2 to 6 do begin
      keysG[iG].TintColor := $00ffffff;
    end;

  {$ENDIF}

end;

procedure topButtonsPositionsG;
begin
{$IFDEF ANDROID}

  keysG[1].Position.Y := PadG * 2;
  for iG := 2 to 6 do begin
    keysG[iG].Height := 32;
    keysG[iG].Width := keysG[iG].Height;
    keysG[iG].Position.Y := PadG * 2;
  end;

  keysG[1].Width := keysG[2].Width * 2;
  keysG[1].Position.X := PadG * 2;
  keysG[2].Position.X := keysG[1].Position.X + keysG[1].Width + PadG;
  keysG[3].Position.X := keysG[2].Position.X + keysG[2].Width + PadG;
  keysG[4].Position.X := keysG[3].Position.X + keysG[3].Width + PadG;
  keysG[5].Position.X := keysG[4].Position.X + keysG[4].Width + PadG;
  keysG[6].Position.X := screen.Width - keysG[6].Width - PadG * 2;

{$ENDIF}
end;

procedure elementsSettingsG;
begin

  for IG := 1 to 4 do begin
    ansButtArray[iG].Width := (Screen.Width - PadG * 6) / 2;
    ansButtArray[iG].Height := 50;
    ansButtArray[iG].TextSettings.Font.Size := 20;
    if iG mod 2 = 0
      then ansButtArray[iG].Position.X := ansButtArray[1].Width + PadG * 4
      else ansButtArray[iG].Position.X := PadG * 2;
    if iG - 2 <= 0
      then ansButtArray[iG].Position.Y := GuessWhatForm.Height / 2 + PadG * 10
      else ansButtArray[iG].Position.Y := ansButtArray[1].Position.Y + ansButtArray[1].Height + PadG;
  end;

  GuessWhatForm.ScrollBox.Height := (ansButtArray[1].Position.Y - (keysG[2].Position.Y + keysG[2].Height) - padG * 2) / 3 * 2;
  GuessWhatForm.ScrollBox.Width := GuessWhatForm.Width - PadG * 4;
  GuessWhatForm.QuestionField.Width := GuessWhatForm.ScrollBox.Width;
  GuessWhatForm.ScrollBox.Position.X := PadG * 2;
  GuessWhatForm.ScrollBox.Position.Y := ansButtArray[1].Position.Y - padG - GuessWhatForm.ScrollBox.Height;
  GuessWhatForm.QuestionField.Position.Y := GuessWhatForm.ScrollBox.Position.Y + PadG;
  GuessWhatForm.QuestionField.TextSettings.Font.Size := 18;

  if GuessWhatForm.ScrollBox.Height < GuessWhatForm.QuestionField.Height then begin
    GuessWhatForm.ScrollBox.AniCalculations.TouchTracking := [ttVertical];
    GuessWhatForm.ScrollBox.AniCalculations.Animation := True;
  end;


end;

procedure ThemeRefreshG;
begin

  GuessWhatForm.Fill.Color := HeaderFooterTemplate.bckgrndColor[HeaderFooterTemplate.ColorsSetNumber];
  GuessWhatForm.QuestionField.Color := HeaderFooterTemplate.bckgrndColor[HeaderFooterTemplate.ColorsSetNumber];
  GuessWhatForm.QuestionField.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  GuessWhatForm.startGuess.TintColor := HeaderFooterTemplate.boardNKeyColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  GuessWhatForm.startGuess.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];

  for IG := 1 to 4 do begin
    ansButtArray[iG].TextSettings.FontColor := boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
    ansButtArray[iG].TintColor := boardNKeyColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  end;

{$IF Defined(ANDROID)}
  TAndroidHelper.Activity.getWindow.setStatusBarColor(barsColors[HeaderFooterTemplate.ColorsSetNumber]);
  TAndroidHelper.Activity.getWindow.setNavigationBarColor(barsColors[HeaderFooterTemplate.ColorsSetNumber]);
{$ENDIF}
end;

procedure LanguageChangeG;
begin
  if VocNumberG = 1
    then keysG[3].Text := '🇷🇺';
  if VocNumberG = 2
    then keysG[3].Text := '🇬🇧';
  if VocNumberG = 4
    then keysG[3].Text := '🇪🇸';
end;

function GetMyFileG(const AssetNameG : string) : string;
begin
{$IFDEF ANDROID}
  Result := TPath.Combine(TPath.GetDocumentsPath, AssetNameG);
{$ENDIF}

{$IFDEF MSWINDOWS}
  Result := TPath.Combine(TPath.GetAppPath + PathDelim, AssetNameG);
{$ENDIF}

{$IFDEF IOS}
  Result := TPath.Combine(TPath.GetAppPath, AssetNameG);
{$ENDIF}

{$IFDEF MACOS}
  Result := TPath.Combine(TPath.GetAppPath, AssetNameG);
{$ENDIF}
end;

procedure vocabularyCheck;
begin
  case VocNumberG of
  1: begin
    setlength (answers,sizeRUSG);
    setlength (questions,sizeRUSG);
    sizeG := sizeRUSG;
    fileAnsw := 'RusAnswTemp.txt';
    fileQues := 'RusQuesTemp.txt';
  end;
  2: begin
    setlength (answers,sizeENGG+1);
    setlength (questions,sizeENGG+1);
    sizeG := sizeENGG;
    fileAnsw := 'RusAnswTemp.ngm';
    fileQues := 'RusQuesTemp.ngm';
  end;
  3: begin setlength (answers,sizeLATG+1); setlength (questions,sizeLATG+1); sizeG := sizeLATG; end;
  4: begin
    setlength (answers,sizeESPG+1);
    setlength (questions,sizeESPG+1);
    sizeG := sizeESPG;
    fileAnsw := 'RusAnswTemp.ngm';
    fileQues := 'RusQuesTemp.ngm';
  end;
  end;

end;

procedure ButtonsWordsFill;
begin
{$IFDEF ANDROID}
  if VocNumberG = 1 then begin
    AssignFile(inputG,GetMyFileG(fileAnsw));
    reset(inputG);
    iG:=0;
    while not eof(inputG) do begin
      inc(iG);
      readln(inputG,answers[iG]);
    end;
  end;
  if VocNumberG > 1 then begin
    var ansTemp := TFile.ReadAllLines(GetMyFileG(fileAnsw), TEncoding.UTF8);
    setLength(answers, length(ansTemp)+1);
    for iG := 0 to length(ansTemp)-1 do
      answers[iG+1] := ansTemp[iG];
  end;
{$ENDIF}

  // заполнение массива 4 ответов 2 случайными ответами, верным и одним близким верному /////
  Randomize;
//  sign := random (2);
//  val := random (4);
//  if sign = 0
//    then ansRndm[2] := ansRndm[1] - val
//    else ansRndm[2] := ansRndm[1] + val;
  ansRndm[1] := wordNumber;
  for IG := 2 to 4 do
    ansRndm[iG] := random (sizeG + 1);
    for jG := 4 downto 2 do begin
      randNumber := Random (jG-1) + 1; // выбор случайного элемента

      // замена элементов
      valTemp := ansRndm[jG];
      ansRndm[jG] := ansRndm[randNumber];
      ansRndm[randNumber] := valTemp;
    end;

  // присваивание кнопкам слов-ответов ///////////

  for IG := 1 to 4 do
    ansButtArray[iG].Text := answers[ansRndm[iG]];

end;

procedure questionsFill;
begin
{$IFDEF ANDROID}
  if VocNumberG = 1 then begin
    AssignFile(inputG,GetMyFileG(fileQues));
    reset(inputG);
    iG:=0;
    while not eof(inputG) do begin
      inc(iG);
      readln(inputG,questions[iG]);
    end;
    if wordNumber = 0 then
      wordNumber := random(iG) + 1;
  end;                                              // нужно будет отредактировать
  if VocNumberG > 1 then begin
    var quesTemp := TFile.ReadAllLines(GetMyFileG(fileQues), TEncoding.UTF8);
    setLength(answers, length(quesTemp)+1);
    for iG := 0 to length(quesTemp)-1 do
      answers[iG+1] := quesTemp[iG];
    if wordNumber = 0 then
      wordNumber := random(length(questions)) + 1;
  end;
{$ENDIF}


end;

procedure GuessWhatResult;
begin

  for iG := 1 to 4 do begin
    if btnPushArray[iG] = true then
      if ansRndm[iG] = wordNumber then begin
        GuessWhatForm.QuestionField.TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber];
        GuessWhatForm.QuestionField.Text := AnsiToUTF8 ('крутой');

        ansButtArray[iG].TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
        ansButtArray[iG].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
      end else begin
        GuessWhatForm.QuestionField.TextSettings.FontColor := boardNKeyTextColorsRed[ColorsSetNumber];
        GuessWhatForm.QuestionField.Text := AnsiToUTF8 ('лошара');

        ansButtArray[iG].TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
        ansButtArray[iG].TintColor := boardNKeyTextColorsRed[ColorsSetNumber];

        ShowMessage('Не угадал, это было: ' + answers[wordNumber])
      end;
    ansButtArray[iG].HitTest := false;
  end;

  GuessWhatForm.startGuess.Enabled := true;

end;

procedure TGuessWhatForm.Button1Click(Sender: TObject);
begin
  btnPushArray[1] := true;
  GuessWhatResult;
end;

procedure TGuessWhatForm.Button2Click(Sender: TObject);
begin
  btnPushArray[2] := true;
  GuessWhatResult;
end;

procedure TGuessWhatForm.Button3Click(Sender: TObject);
begin
  btnPushArray[3] := true;
  GuessWhatResult;
end;

procedure TGuessWhatForm.Button4Click(Sender: TObject);
begin
  btnPushArray[4] := true;
  GuessWhatResult;
end;

procedure TGuessWhatForm.FormActivate(Sender: TObject);
begin
  if themeChanged
    then ThemeRefreshG;
  if languageChangedG
    then LanguageChangeG;
end;

procedure TGuessWhatForm.FormCreate(Sender: TObject);
begin

  ansButtArray[1] := Button1;
  ansButtArray[2] := Button2;
  ansButtArray[3] := Button3;
  ansButtArray[4] := Button4;
  for IG := 1 to 4 do
    ansButtArray[iG].HitTest := false;
  keysG[1] := startGuess;
  keysG[2] := statsG;
  keysG[3] := Lang;
  keysG[4] := ThemeButton;
  keysG[5] := SoundBtn;
  keysG[6] := info;

  wordNumber := 0;
  VocNumberG := 1;

  for IG := 1 to 4 do
    ansButtArray[iG].Text := '';

  topButtonsPropertiesG;
  topButtonsPositionsG;
  elementsSettingsG;

end;

procedure TGuessWhatForm.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  if EventInfo.GestureID = sgiRight
    then gameModeForm.Show;
end;

procedure TGuessWhatForm.FormShow(Sender: TObject);
begin

  ThemeRefreshG;
  vocabularyCheck;
  elementsSettingsG;

end;

procedure TGuessWhatForm.infoClick(Sender: TObject);
begin
  informationForm.Show;
//  if SoundBtn.Text = '🔊 '
//      then KbrdSoundPlay;
end;

procedure TGuessWhatForm.LangClick(Sender: TObject);
begin
  languageForm.Show;
//  if SoundBtn.Text = '🔊 '
//      then HeaderFooterTemplate.KbrdSoundPlay;
end;

procedure TGuessWhatForm.ThemeButtonClick(Sender: TObject);
begin
  setForm.Show;
//  if SoundBtn.Text = '🔊 '
//    then KbrdSoundPlay;
end;

procedure TGuessWhatForm.startGuessClick(Sender: TObject);
begin

  wordNumber := 0;

  vocabularyCheck;
  questionsFill;
  ButtonsWordsFill;

  QuestionField.Text := AnsiToUTF8 (questions[wordNumber]);

  elementsSettingsG;
  ThemeRefreshG;

  GuessWhatForm.QuestionField.TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];

  startGuess.Enabled := false;

  for IG := 1 to 4 do begin
    ansButtArray[iG].HitTest := true;
    btnPushArray[iG] := false;
  end;


end;

end.
