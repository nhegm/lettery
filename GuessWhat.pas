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
    StartGuessAnimation: TFloatAnimation;
    Lang: TButton;
    LangAnimation: TFloatAnimation;
    SoundBtn: TButton;
    info: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button4Animation: TFloatAnimation;
    Button3Animation: TFloatAnimation;
    Button2Animation: TFloatAnimation;
    Button1Animation: TFloatAnimation;
    Button5: TButton;
    Button5Animation: TFloatAnimation;
    Button6: TButton;
    Button6Animation: TFloatAnimation;
    headLabelG: TLabel;
    winsLabelG: TLabel;
    percentageLabelG: TLabel;
    gamesLabelG: TLabel;
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
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure statsGClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  GuessWhatForm: TGuessWhatForm;
  questionstring : String;
  ansButtArray: array [1..6] of TButton;              // массив кнопок с ответами
  answers , questions : array of String;             // 2 массива для хранения значений и слов
  ansRndm : array [1..6] of Integer;                // массив порядка ответов
  btnPushArray : array [1..6] of boolean;
  btnsRightAnswerAnimationArray : array [1..6] of TFloatAnimation;
  keysG: array [1..6] of TButton;
  iG, jG, wordNumber, sizeG: integer;
  valTemp, randNumber: integer;                   // вспом. числа для перемешивания вариантов ответов
  fileQues , fileAnsw : string;
  inputG , statG , statGL : text;
  languageChangedG , youWereWrong : boolean;
  statsLabelsArray : array [1..4] of TLabel;
  statsHitCounter : integer;
  // transfer to statisticsGW form
  VocNumberG: byte;
  gamesGW , winsGW , percentageGW : integer;        // overall stat
  gamesGWL , winsGWL , percentageGWL : integer;     // language stat

const
  sizeRUSG = 1775;   //           - 1
  sizeENGG = 0;      //           - 2
  sizeLATG = 0;      //           - 3
  sizeESPG = 0;      //           - 4
  sizeFRAG = 0;      //           - 5
  answersSize: array [1..5] of integer = (sizeRUSG, sizeENGG, sizeLATG, sizeESPG, sizeFRAG);
  TextFieldHeight = 100;
  PadG = 8;
  answersQuantity = 6;   // по сути Количество кнопок с ответами (кол-во ответов)

  textStartButtonRus = 'дальше'; textStartButtonEng = 'next'; textStartButtonLat = ''; textStartButtonEsp = 'próx'; textStartButtonFra = '';
  textStartButtonArray: array [1..5] of String = (textStartButtonRus, textStartButtonEng, textStartButtonLat, textStartButtonEsp, textStartButtonFra);

  statFileNamesG: array [0..4] of string = ('statsG.ngm', 'statsRusG.ngm', 'statsEngG.ngm', 'statsLatG.ngm', 'statsEspG.ngm');

  commonHeaderRusG = 'Общая статистика'; commonHeaderEngG = 'Common statistics'; commonHeaderLatG = 'Statistica tota'; commonHeaderEspG = 'Todas las estadísticas';
  GamesRusG = 'Игр сыграно: '; GamesEngG = 'Games played: ';  GamesLatG = 'Ludos lusit: '; GamesEspG = 'Juegos jugados: ';
  WinsRusG = 'Побед: '; WinsEngG = 'Wins: '; WinsLatG = 'Victoriae: '; WinsEspG = 'Victorias: ';
  percentageRusG = '% побед'; percentageEngG = 'Aver. attempts: '; percentageLatG = 'Что-то будет'; percentageEspG = 'Intento promedio: ';

  commonHeadersG: array [1..4] of String = (commonHeaderRusG, commonHeaderEngG, commonHeaderLatG, commonHeaderEspG);
  GamesStatG: array [1..4] of String = (GamesRusG, GamesEngG, GamesLatG, GamesEspG);
  WinsStatG: array [1..4] of String = (WinsRusG, WinsEngG, WinsLatG, WinsEspG);
  percentageStatG: array [1..4] of String = (percentageRusG, percentageEngG, percentageLatG, percentageEspG);

  langHeaderRusG = 'Русс стат'; langHeaderEngG = 'English stat'; langHeaderLatG = 'Statistica latina'; langHeaderEspG = 'Estadística en español';
  langHeadersG: array [1..4] of String = (langHeaderRusG, langHeaderEngG, langHeaderLatG, langHeaderEspG);

implementation

uses themeForm, langForm, infoForm, HeaderFooterTemplate, gameMode;
{$R *.fmx}

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

procedure statsVarNullG;
begin
  gamesGW := 0;
  winsGW := 0;
  percentageGW := 0;
end;

procedure statsLVarNullG;
begin
  gamesGWL := 0;
  winsGWL := 0;
  percentageGWL := 0;
end;

procedure statsFileReadG;
begin

  if FileExists(GetMyFileG(statFileNamesG[0])) then begin
    AssignFile(statG,GetMyFileG(statFileNamesG[0]));
    reset(statG);
    readln(statG , gamesGW);                               // считываем кол-во игр
    readln(statG , winsGW);                                // считываем кол-во всех побед
    readln(statG , percentageGW);                         // считываем процент всех побед
    close(statG);
  end;

end;

procedure statsFileReadGL;
begin

  if FileExists(GetMyFileG(statFileNamesG[VocNumberG])) then begin
    AssignFile(statGL,GetMyFileG(statFileNamesG[VocNumberG]));
    reset(statGL);
    readln(statGL , gamesGWL);                               // считываем кол-во игр
    readln(statGL , winsGWL);                                // считываем кол-во всех побед
    readln(statGL , percentageGWL);                         // считываем процент всех побед
    close(statGL);
  end;

end;

procedure statsFileWriteWonG;
begin

  AssignFile(statG,GetMyFileG(statFileNamesG[0]));        // общая статистика
  rewrite(statG);
  inc(gamesGW);
  writeln(statG , gamesGW);                                            // все игры
  inc(winsGW);
  writeln(statG , winsGW);                                             // победы
  percentageGW := round (winsGW / gamesGW * 100);
  writeln(statG , percentageGW);                                      // процент побед
  close(statG);


  AssignFile(statGL,GetMyFileG(statFileNamesG[VocNumberG]));  // статистика в языке
  rewrite(statGL);
  inc(gamesGWL);
  writeln(statGL , gamesGWL);                                            // все игры
  inc(winsGWL);
  writeln(statGL , winsGWL);                                             // победы
  percentageGWL := round (winsGWL / gamesGWL * 100);
  writeln(statGL , percentageGWL);                                      // процент побед
  close(statGL);

end;

procedure statsFileWriteLostG;
begin

  AssignFile(statG,GetMyFileG(statFileNamesG[0]));        // общая статистика
  rewrite(statG);
  inc(gamesGW);
  writeln(statG , gamesGW);                                            // все игры
  writeln(statG , winsGW);                                             // победы
  percentageGW := round (winsGW / gamesGW * 100);
  writeln(statG , percentageGW);                                      // процент побед
  close(statG);

  AssignFile(statGL,GetMyFileG(statFileNamesG[VocNumberG]));  // статистика в языке
  rewrite(statGL);
  inc(gamesGWL);
  writeln(statGL , gamesGWL);                                            // все игры
  writeln(statGL , winsGWL);                                             // победы
  percentageGWL := round (winsGWL / gamesGWL * 100);
  writeln(statGL , percentageGWL);                                      // процент побед
  close(statGL);

end;

procedure statsReadAllG;
begin
  statsVarNullG;
  statsLVarNullG;
  statsFileReadG;
  statsFileReadGL;
end;

procedure animationRightAnswer;
begin
  for iG := 1 to answersQuantity do begin
    if ansRndm[iG] = wordNumber then begin
      ansButtArray[iG].TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
      ansButtArray[iG].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
      btnsRightAnswerAnimationArray[iG].Enabled := true;
    end;
  end;
end;

procedure btnsAnimationStop;
begin
  for iG := 1 to answersQuantity do begin
    ansButtArray[iG].TintColor := boardNKeyColorsDef[ColorsSetNumber];
    btnsRightAnswerAnimationArray[iG].Enabled := false;
  end;
end;

procedure topButtonsPropertiesG;
begin

  {$IFDEF ANDROID}
    keysG[1].TextSettings.FontColor := boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
    keysG[1].TintColor := boardNKeyColorsDef[HeaderFooterTemplate.ColorsSetNumber];
    keysG[1].TextSettings.Font.Size := 18;
    keysG[2].TextSettings.Font.Size := 20;
    keysG[3].TextSettings.Font.Size := 20;
    keysG[4].TextSettings.Font.Size := 18;
    keysG[5].TextSettings.Font.Size := 20;
    keysG[6].TextSettings.Font.Size := 20;

    for iG := 2 to 6 do begin
      keysG[iG].TintColor := $00ffffff;
    end;

    if VocNumberG = 1
      then keysG[3].Text := '🇷🇺';
    if VocNumberG = 2
      then keysG[3].Text := '🇬🇧';
    if VocNumberG = 4
      then keysG[3].Text := '🇪🇸';

  {$ENDIF}

end;

procedure startButtonPositionChange;
begin
  if (keysG[1].Enabled = true) and (keysG[1].Text = 'start') then begin
    keysG[1].Position.Y := padG * 2;
    keysG[1].Position.X := padG * 2;
    keysG[1].TextSettings.FontColor := boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
    keysG[1].TintColor := boardNKeyColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  end else begin
    keysG[1].Position.Y := ansButtArray[6].Position.Y + ansButtArray[6].Height + padG * 2;
    keysG[1].Position.X := screen.Width - keysG[1].Width - padG * 2;
    keysG[1].TextSettings.FontColor := boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
    keysG[1].TintColor := boardNKeyTextColorsYellow[HeaderFooterTemplate.ColorsSetNumber];
    if VocNumberG = 1
      then keysG[1].TextSettings.Font.Size := 14
      else keysG[1].TextSettings.Font.Size := 16;
  end;
end;

procedure topButtonsPositionsG;
begin
{$IFDEF ANDROID}
  for iG := 2 to 6 do begin
    keysG[iG].Height := 32;
    keysG[iG].Width := keysG[iG].Height;
    keysG[iG].Position.Y := PadG * 2;
  end;
  keysG[1].Width := keysG[2].Width * 2;

  keysG[2].Position.X := keysG[1].Width + PadG * 3;
  for iG := 3 to 5 do
    keysG[iG].Position.X := keysG[iG-1].Position.X + keysG[2].Width + PadG;
  keysG[6].Position.X := screen.Width - keysG[6].Width - PadG * 2;

  startButtonPositionChange;
{$ENDIF}
end;

procedure elementsSettingsG;
begin

  for IG := 1 to answersQuantity do begin
    ansButtArray[iG].Width := (Screen.Width - PadG * 6) / 2;
    ansButtArray[iG].Height := 50;
    ansButtArray[iG].TextSettings.Font.Size := 20;
    if iG mod 2 = 0
      then ansButtArray[iG].Position.X := ansButtArray[1].Width + PadG * 4
      else ansButtArray[iG].Position.X := PadG * 2;
    if iG - 2 <= 0
      then ansButtArray[iG].Position.Y := Screen.Height / 2
      else ansButtArray[iG].Position.Y := ansButtArray[iG - 2].Position.Y + ansButtArray[1].Height + PadG;
  end;

  GuessWhatForm.ScrollBox.Height := ansButtArray[1].Position.Y - (keysG[2].Position.Y + keysG[2].Height) - padG * 2;
  GuessWhatForm.ScrollBox.Width := screen.Width;
  GuessWhatForm.QuestionField.Width := GuessWhatForm.ScrollBox.Width - padG * 4;
  GuessWhatForm.ScrollBox.Position.X := 0;
  GuessWhatForm.QuestionField.Position.X := padG * 2;
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

  for IG := 1 to answersQuantity do begin
    ansButtArray[iG].TextSettings.FontColor := boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
    ansButtArray[iG].TintColor := boardNKeyColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  end;

{$IF Defined(ANDROID)}
  TAndroidHelper.Activity.getWindow.setStatusBarColor(barsColors[HeaderFooterTemplate.ColorsSetNumber]);
  TAndroidHelper.Activity.getWindow.setNavigationBarColor(barsColors[HeaderFooterTemplate.ColorsSetNumber]);
{$ENDIF}

  if (keysG[1].Position.X = padG * 2) and (keysG[1].Position.Y = padG * 2)
    then keysG[1].Text := 'start'
    else keysG[1].Text := textStartButtonArray[VocNumberG];
  for iG := 1 to 4 do
    statsLabelsArray[iG].TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
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
  for IG := 2 to answersQuantity do
    ansRndm[iG] := random (sizeG + 1);
    for jG := answersQuantity downto 2 do begin
      randNumber := Random (jG-1) + 1; // выбор случайного элемента

      // замена элементов
      valTemp := ansRndm[jG];
      ansRndm[jG] := ansRndm[randNumber];
      ansRndm[randNumber] := valTemp;
    end;

  // присваивание кнопкам слов-ответов ///////////

  for IG := 1 to answersQuantity do
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
  end;                                              // нужно будет отредактировать
  if VocNumberG > 1 then begin
    var quesTemp := TFile.ReadAllLines(GetMyFileG(fileQues), TEncoding.UTF8);
    setLength(answers, length(quesTemp)+1);
    for iG := 0 to length(quesTemp)-1 do
      questions[iG+1] := quesTemp[iG];
  end;
{$ENDIF}


end;

procedure questionChoose;
begin

  if wordNumber = 0
    then wordNumber := random(length(questions)) + 1;
  if VocNumberG = 1
    then GuessWhatForm.QuestionField.Text := AnsiToUTF8 (questions[wordNumber])
    else GuessWhatForm.QuestionField.Text := questions[wordNumber];

end;

procedure GuessWhatResult;
begin

  for iG := 1 to answersQuantity do begin
    if btnPushArray[iG] = true then
      if ansRndm[iG] = wordNumber then begin
        ansButtArray[iG].TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
        ansButtArray[iG].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
        youWereWrong := false;
        statsFileWriteWonG;

      end else begin
        ansButtArray[iG].TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
        ansButtArray[iG].TintColor := boardNKeyTextColorsRed[ColorsSetNumber];
        youWereWrong := true;
        statsFileWriteLostG;
      end;
    ansButtArray[iG].HitTest := false;
  end;

  if youWereWrong
    then animationRightAnswer;

  GuessWhatForm.startGuess.Enabled := true;
  startButtonPositionChange;
  keysG[1].Visible := true;

  statsReadAllG;
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

procedure TGuessWhatForm.Button5Click(Sender: TObject);
begin
  btnPushArray[5] := true;
  GuessWhatResult;
end;

procedure TGuessWhatForm.Button6Click(Sender: TObject);
begin
  btnPushArray[6] := true;
  GuessWhatResult;
end;

procedure TGuessWhatForm.FormActivate(Sender: TObject);
begin
  if themeChanged
    then ThemeRefreshG;
  if languageChangedG then begin
    LanguageChangeG;
    statsReadAllG;
  end;
end;

procedure TGuessWhatForm.FormCreate(Sender: TObject);
begin

  ansButtArray[1] := Button1;
  ansButtArray[2] := Button2;
  ansButtArray[3] := Button3;
  ansButtArray[4] := Button4;
  ansButtArray[5] := Button5;
  ansButtArray[6] := Button6;
  btnsRightAnswerAnimationArray[1] := Button1Animation;
  btnsRightAnswerAnimationArray[2] := Button2Animation;
  btnsRightAnswerAnimationArray[3] := Button3Animation;
  btnsRightAnswerAnimationArray[4] := Button4Animation;
  btnsRightAnswerAnimationArray[5] := Button5Animation;
  btnsRightAnswerAnimationArray[6] := Button6Animation;
  for IG := 1 to answersQuantity do
    ansButtArray[iG].HitTest := false;
  keysG[1] := startGuess;
  keysG[2] := statsG;
  keysG[3] := Lang;
  keysG[4] := ThemeButton;
  keysG[5] := SoundBtn;
  keysG[6] := info;
  statsHitCounter := 0;
  statsLabelsArray[1] := headLabelG;
  statsLabelsArray[2] := gamesLabelG;
  statsLabelsArray[3] := winsLabelG;
  statsLabelsArray[4] := percentageLabelG;
  for iG := 1 to 4 do begin
    statsLabelsArray[iG].TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
    statsLabelsArray[iG].TextSettings.Font.Size := 12;
    statsLabelsArray[iG].Width := screen.Width - padG * 4;
    statsLabelsArray[iG].Visible := false;
  end;

  VocNumberG := 1;
  vocabularyCheck;
  questionsFill;

  for IG := 1 to answersQuantity do
    ansButtArray[iG].Text := '';

  topButtonsPropertiesG;
  topButtonsPositionsG;
  elementsSettingsG;
  statsLabelsArray[1].Position.Y := ansButtArray[5].Position.Y + ansButtArray[5].Height + padG * 2;
  statsLabelsArray[1].Position.X := padG * 2;
  for iG := 2 to 4 do begin
    statsLabelsArray[iG].Position.Y := statsLabelsArray[iG - 1].Position.Y + statsLabelsArray[iG - 1].Height + padG;
    statsLabelsArray[iG].Position.X := padG * 2;
  end;

  StartGuessAnimation.Enabled := true;
  keysG[1].Text := 'start';

  statsReadAllG;
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
  startButtonPositionChange;
end;

procedure TGuessWhatForm.statsGClick(Sender: TObject);
begin
  if (statsHitCounter = 0) or (statsHitCounter = 1)
    then inc (statsHitCounter)
    else statsHitCounter := 0;
  statsReadAllG;
  if (statsHitCounter = 1) or (statsHitCounter = 2)
    then for iG := 1 to 4 do
      statsLabelsArray[iG].Visible := true;
  if statsHitCounter = 1 then begin
    statsLabelsArray[1].Text := commonHeadersG[VocNumberG];
    statsLabelsArray[2].Text := GamesStatG[VocNumberG] + inttostr(gamesGW);
    statsLabelsArray[3].Text := WinsStatG[VocNumberG] + inttostr(winsGW);
    statsLabelsArray[4].Text := intToStr(percentageGW) + percentageStatG[VocNumberG];
    for iG := 1 to 4 do begin
      statsLabelsArray[iG].TextSettings.HorzAlign := TTextAlign.Leading;
      statsLabelsArray[iG].Position.X := padG * 2;
    end;
  end;
  if statsHitCounter = 2 then begin
    statsLabelsArray[1].Text := langHeadersG[VocNumberG];
    statsLabelsArray[2].Text := GamesStatG[VocNumberG] + inttostr(gamesGWL);
    statsLabelsArray[3].Text := WinsStatG[VocNumberG] + inttostr(winsGWL);
    statsLabelsArray[4].Text := intToStr(percentageGW) + percentageStatG[VocNumberG];
  end;
  if (statsHitCounter = 0)
    then for iG := 1 to 4 do
      statsLabelsArray[iG].Visible := false;
  for iG := 1 to 4 do
    statsLabelsArray[iG].TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
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
  questionChoose;
  ButtonsWordsFill;

  elementsSettingsG;
  ThemeRefreshG;

  GuessWhatForm.QuestionField.TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];

  startGuess.Enabled := false;
  startGuess.Text := textStartButtonArray[VocNumberG];
  StartGuessAnimation.Enabled := false;
  startButtonPositionChange;
  startGuess.Visible := false;

  for IG := 1 to answersQuantity do begin
    ansButtArray[iG].HitTest := true;
    btnPushArray[iG] := false;
  end;
  btnsAnimationStop;

end;
end.
