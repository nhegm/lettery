unit HeaderFooterTemplate;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Ani, iniFiles, FMX.Objects, System.IOUtils
  {$IF Defined(ANDROID)}
  ,Androidapi.Helpers
{$ENDIF};

type
  TMainForm = class(TForm)
    R13: TButton;
    info: TButton;
    Lang: TButton;
    stats: TButton;
    start: TButton;
    R55: TButton;
    R65: TButton;
    R35: TButton;
    R45: TButton;
    R25: TButton;
    R15: TButton;
    R54: TButton;
    R64: TButton;
    R34: TButton;
    R44: TButton;
    R24: TButton;
    R14: TButton;
    R53: TButton;
    R63: TButton;
    R33: TButton;
    R43: TButton;
    R23: TButton;
    R52: TButton;
    R62: TButton;
    R32: TButton;
    R42: TButton;
    R22: TButton;
    R12: TButton;
    R51: TButton;
    R61: TButton;
    R31: TButton;
    R41: TButton;
    R21: TButton;
    meaning: TButton;
    ThemeButton: TButton;
    R11: TButton;
    й: TButton;
    ц: TButton;
    у: TButton;
    к: TButton;
    е: TButton;
    н: TButton;
    г: TButton;
    ш: TButton;
    ф: TButton;
    ы: TButton;
    в: TButton;
    а: TButton;
    п: TButton;
    р: TButton;
    о: TButton;
    л: TButton;
    я: TButton;
    ч: TButton;
    с: TButton;
    м: TButton;
    и: TButton;
    т: TButton;
    ь: TButton;
    б: TButton;
    щ: TButton;
    з: TButton;
    х: TButton;
    ъ: TButton;
    д: TButton;
    ж: TButton;
    э: TButton;
    enter: TButton;
    ю: TButton;
    deleteBtn: TButton;
    ё: TButton;
    InfoLabel: TLabel;
    FlashLightMeaning: TRectangle;
    RectAnimation1: TColorAnimation;
    ColorAnimation1: TColorAnimation;
    BrainDissapearance: TFloatAnimation;
    InfoAnimation: TFloatAnimation;
    LangAnimation: TFloatAnimation;
    StartAnimation: TFloatAnimation;
    FadeMoveR11: TFloatAnimation;
    FadePosR11: TFloatAnimation;
    AppearMoveR11: TFloatAnimation;
    AppearPosR11: TFloatAnimation;
    AppearMoveR12: TFloatAnimation;
    AppearPosR12: TFloatAnimation;
    FadeMoveR12: TFloatAnimation;
    FadePosR12: TFloatAnimation;
    AppearMoveR13: TFloatAnimation;
    AppearPosR13: TFloatAnimation;
    FadeMoveR13: TFloatAnimation;
    FadePosR13: TFloatAnimation;
    AppearMoveR14: TFloatAnimation;
    AppearPosR14: TFloatAnimation;
    FadeMoveR14: TFloatAnimation;
    FadePosR14: TFloatAnimation;
    AppearMoveR15: TFloatAnimation;
    AppearPosR15: TFloatAnimation;
    FadeMoveR15: TFloatAnimation;
    FadePosR15: TFloatAnimation;
    AppearMoveR21: TFloatAnimation;
    FadeMoveR21: TFloatAnimation;
    AppearPosR21: TFloatAnimation;
    FadePosR21: TFloatAnimation;
    AppearMoveR22: TFloatAnimation;
    AppearPosR22: TFloatAnimation;
    FadeMoveR22: TFloatAnimation;
    FadePosR22: TFloatAnimation;
    AppearMoveR23: TFloatAnimation;
    AppearPosR23: TFloatAnimation;
    FadeMoveR23: TFloatAnimation;
    FadePosR23: TFloatAnimation;
    AppearMoveR24: TFloatAnimation;
    AppearPosR24: TFloatAnimation;
    FadeMoveR24: TFloatAnimation;
    FadePosR24: TFloatAnimation;
    AppearMoveR25: TFloatAnimation;
    AppearPosR25: TFloatAnimation;
    FadeMoveR25: TFloatAnimation;
    FadePosR25: TFloatAnimation;
    AppearMoveR31: TFloatAnimation;
    AppearPosR31: TFloatAnimation;
    FadeMoveR31: TFloatAnimation;
    FadePosR31: TFloatAnimation;
    AppearMoveR32: TFloatAnimation;
    AppearPosR32: TFloatAnimation;
    FadeMoveR32: TFloatAnimation;
    FadePosR32: TFloatAnimation;
    AppearMoveR33: TFloatAnimation;
    AppearPosR33: TFloatAnimation;
    FadeMoveR33: TFloatAnimation;
    FadePosR33: TFloatAnimation;
    AppearMoveR34: TFloatAnimation;
    AppearPosR34: TFloatAnimation;
    FadeMoveR34: TFloatAnimation;
    FadePosR34: TFloatAnimation;
    AppearMoveR35: TFloatAnimation;
    AppearPosR35: TFloatAnimation;
    FadeMoveR35: TFloatAnimation;
    FadePosR35: TFloatAnimation;
    AppearMoveR41: TFloatAnimation;
    AppearPosR41: TFloatAnimation;
    FadeMoveR41: TFloatAnimation;
    FadePosR41: TFloatAnimation;
    AppearMoveR42: TFloatAnimation;
    AppearPosR42: TFloatAnimation;
    FadeMoveR42: TFloatAnimation;
    FadePosR42: TFloatAnimation;
    AppearMoveR43: TFloatAnimation;
    AppearPosR43: TFloatAnimation;
    FadeMoveR43: TFloatAnimation;
    FadePosR43: TFloatAnimation;
    AppearMoveR44: TFloatAnimation;
    AppearPosR44: TFloatAnimation;
    FadeMoveR44: TFloatAnimation;
    FadePosR44: TFloatAnimation;
    AppearMoveR45: TFloatAnimation;
    AppearPosR45: TFloatAnimation;
    FadeMoveR45: TFloatAnimation;
    FadePosR45: TFloatAnimation;
    AppearMoveR51: TFloatAnimation;
    AppearPosR51: TFloatAnimation;
    FadeMoveR51: TFloatAnimation;
    FadePosR51: TFloatAnimation;
    AppearMoveR52: TFloatAnimation;
    AppearPosR52: TFloatAnimation;
    FadeMoveR52: TFloatAnimation;
    FadePosR52: TFloatAnimation;
    AppearMoveR53: TFloatAnimation;
    AppearPosR53: TFloatAnimation;
    FadeMoveR53: TFloatAnimation;
    FadePosR53: TFloatAnimation;
    AppearMoveR54: TFloatAnimation;
    AppearPosR54: TFloatAnimation;
    FadeMoveR54: TFloatAnimation;
    FadePosR54: TFloatAnimation;
    AppearMoveR55: TFloatAnimation;
    AppearPosR55: TFloatAnimation;
    FadeMoveR55: TFloatAnimation;
    FadePosR55: TFloatAnimation;
    AppearMoveR61: TFloatAnimation;
    AppearPosR61: TFloatAnimation;
    FadeMoveR61: TFloatAnimation;
    FadePosR61: TFloatAnimation;
    AppearMoveR62: TFloatAnimation;
    AppearPosR62: TFloatAnimation;
    FadeMoveR62: TFloatAnimation;
    FadePosR62: TFloatAnimation;
    AppearMoveR63: TFloatAnimation;
    AppearPosR63: TFloatAnimation;
    FadeMoveR63: TFloatAnimation;
    FadePosR63: TFloatAnimation;
    FadePosR64: TFloatAnimation;
    AppearMoveR64: TFloatAnimation;
    AppearPosR64: TFloatAnimation;
    FadeMoveR64: TFloatAnimation;
    AppearMoveR65: TFloatAnimation;
    AppearPosR65: TFloatAnimation;
    FadeMoveR65: TFloatAnimation;
    FadePosR65: TFloatAnimation;
    FontAnimationR11: TColorAnimation;
    FontAnimationR12: TColorAnimation;
    FontAnimationR13: TColorAnimation;
    FontAnimationR14: TColorAnimation;
    FontAnimationR15: TColorAnimation;
    FontAnimationR21: TColorAnimation;
    FontAnimationR22: TColorAnimation;
    FontAnimationR65: TColorAnimation;
    FontAnimationR64: TColorAnimation;
    FontAnimationR63: TColorAnimation;
    FontAnimationR62: TColorAnimation;
    FontAnimationR61: TColorAnimation;
    FontAnimationR55: TColorAnimation;
    FontAnimationR54: TColorAnimation;
    FontAnimationR53: TColorAnimation;
    FontAnimationR52: TColorAnimation;
    FontAnimationR51: TColorAnimation;
    FontAnimationR45: TColorAnimation;
    FontAnimationR44: TColorAnimation;
    FontAnimationR43: TColorAnimation;
    FontAnimationR42: TColorAnimation;
    FontAnimationR41: TColorAnimation;
    FontAnimationR35: TColorAnimation;
    FontAnimationR34: TColorAnimation;
    FontAnimationR33: TColorAnimation;
    FontAnimationR32: TColorAnimation;
    FontAnimationR31: TColorAnimation;
    FontAnimationR25: TColorAnimation;
    FontAnimationR24: TColorAnimation;
    FontAnimationR23: TColorAnimation;
    kbrdAnimation1: TColorAnimation;
    kbrdAnimation2: TColorAnimation;
    kbrdAnimation3: TColorAnimation;
    kbrdAnimation4: TColorAnimation;
    kbrdAnimation5: TColorAnimation;
    kbrdAnimation6: TColorAnimation;
    kbrdAnimation33: TColorAnimation;
    kbrdAnimation7: TColorAnimation;
    kbrdAnimation8: TColorAnimation;
    kbrdAnimation9: TColorAnimation;
    kbrdAnimation10: TColorAnimation;
    kbrdAnimation11: TColorAnimation;
    kbrdAnimation12: TColorAnimation;
    kbrdAnimation13: TColorAnimation;
    kbrdAnimation14: TColorAnimation;
    kbrdAnimation15: TColorAnimation;
    kbrdAnimation16: TColorAnimation;
    kbrdAnimation17: TColorAnimation;
    kbrdAnimation18: TColorAnimation;
    kbrdAnimation19: TColorAnimation;
    kbrdAnimation20: TColorAnimation;
    kbrdAnimation21: TColorAnimation;
    kbrdAnimation22: TColorAnimation;
    kbrdAnimation23: TColorAnimation;
    kbrdAnimation24: TColorAnimation;
    kbrdAnimation25: TColorAnimation;
    kbrdAnimation26: TColorAnimation;
    kbrdAnimation27: TColorAnimation;
    kbrdAnimation28: TColorAnimation;
    kbrdAnimation29: TColorAnimation;
    kbrdAnimation30: TColorAnimation;
    kbrdAnimation31: TColorAnimation;
    kbrdAnimation32: TColorAnimation;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure deleteBtnClick(Sender: TObject);
    procedure enterClick(Sender: TObject);
    procedure йClick(Sender: TObject);
    procedure LangClick(Sender: TObject);
    procedure meaningClick(Sender: TObject);
    procedure startClick(Sender: TObject);
    procedure statsClick(Sender: TObject);
    procedure ThemeButtonClick(Sender: TObject);
    procedure аClick(Sender: TObject);
    procedure бClick(Sender: TObject);
    procedure вClick(Sender: TObject);
    procedure гClick(Sender: TObject);
    procedure дClick(Sender: TObject);
    procedure еClick(Sender: TObject);
    procedure ёClick(Sender: TObject);
    procedure жClick(Sender: TObject);
    procedure зClick(Sender: TObject);
    procedure иClick(Sender: TObject);
    procedure кClick(Sender: TObject);
    procedure лClick(Sender: TObject);
    procedure мClick(Sender: TObject);
    procedure нClick(Sender: TObject);
    procedure оClick(Sender: TObject);
    procedure пClick(Sender: TObject);
    procedure рClick(Sender: TObject);
    procedure сClick(Sender: TObject);
    procedure тClick(Sender: TObject);
    procedure уClick(Sender: TObject);
    procedure фClick(Sender: TObject);
    procedure хClick(Sender: TObject);
    procedure цClick(Sender: TObject);
    procedure чClick(Sender: TObject);
    procedure шClick(Sender: TObject);
    procedure щClick(Sender: TObject);                                              //  FFAB172B  FFAB172B    FF6C757D   FF7b2cbf
    procedure ъClick(Sender: TObject);                                              //  FFf8f9fa  FFDC1934    FF000000   FFfdf0d5
    procedure ыClick(Sender: TObject);
    procedure ьClick(Sender: TObject);
    procedure эClick(Sender: TObject);
    procedure юClick(Sender: TObject);
    procedure яClick(Sender: TObject);
    procedure infoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormSaveState(Sender: TObject);
  private                                                                                               // 00ffdb      FF00FF33
    { Private declarations }
  public
    { Public declarations }
  end;
const                                                                   // 1         // 2        // 3         //4          //5        //6        //7       //8
  colorsMax = 8;                                                        // azul     // day     // violet   // Barbie   // Console // latinum // greek   // x-men
    bckgrndColor: array              [1..colorsMax] of TAlphaColor = ( $FF003049 , $FFfdfdfd , $FF725ac1 , $FFFDECF4 , $FF000080, $FFFDF0D5, $FFffffff, $ffFFE85C );
    boardNKeyColorsDef: array        [1..colorsMax] of TAlphaColor = ( $FF669BBC , $FFd2d2d2 , $FFf7ece1 , $FFff67b1 , $FFDB00FF, $FFAB172B, $FF1C85F6, $ff00b4d8 );
    boardNKeyTextColorsDef: array    [1..colorsMax] of TAlphaColor = ( $FFFDF0D5 , $FF000000 , $FFfdfffc , $FFff037d , $FFF0F0F0, $FF000000, $FF865746, $ff000000 );
    boardNKeyTextColorsYellow: array [1..colorsMax] of TAlphaColor = ( $FFffea00 , $FFffc000 , $FFffff3f , $FFf0f405 , $FFffdb00, $FF00C8FA, $FFffee32, $ffFAF761 );
    boardNKeyTextColorsGreen: array  [1..colorsMax] of TAlphaColor = ( $FF5bf36d , $FF40916c , $FF80ed99 , $FF73C4FE , $FF00ffdb, $FF7B2CBF, $FF02c39a, $ff48A06F );
    boardNKeyTextColorsGrey: array   [1..colorsMax] of TAlphaColor = ( $FF6c757d , $FF495057 , $FFd6a9db , $FFcbcbcb , $FF000000, $FF6C757D, $FFd6d6d6, $ff9FB1C0 );
    boardNKeyTextColorsRed: array    [1..colorsMax] of TAlphaColor = ( $FFFFB3C6 , $FFba181b , $FFff5d73 , $FFa9a2a6 , $FFF0F0F0, $FFDC1934, $FFDFBA89, $ffE8403E );
    barsColors:             array    [1..colorsMax] of TAlphaColor = ( $FF669BBC , $FF495057 , $FF725ac1 , $FFff037d , $FF000080, $FFAB172B, $FF1C85F6, $ff7FCD99 );
  sizeRUS = 4844;      // vocNumber - 1
  sizeENG = 3193;      //           - 2
  sizeLAT = 3;         //           - 3
  sizeESP = 3595;      //           - 4
  sizeFRA = 2;         //           - 5
  vocabSize: array [1..5] of integer = (sizeRUS, sizeENG, sizeLAT, sizeESP, sizeFRA);

var
  MainForm: TMainForm;
  wins, games, winStreak, lastGameWon, currentWinStreak, lastStreak, ColorsSetNumber: integer;         // statistics transfering to statistics form
  winsL, gamesL, winStreakL, currentWinStreakL, lastGameWonL, lastStreakL, lastLangGame: integer;
  meaningOfTheWord, otvet: String;                      // meaning transfering to meaningForm
  VocNumber: byte;
  startButtonCondition, languageChanged, themeChanged: boolean;
const
  statFileNames: array [0..4] of string = ('stats.ngm', 'statsRus.ngm', 'statsEng.ngm', 'statsLat.ngm', 'statsEsp.ngm');
  textCongratsRus='Ура! Ура! Молоденчик!'; textCongratsEng='Great job!'; textCongratsLat=''; textCongratsEsp='¡Que trabajo tan excelente!'; textCongratsFra='';
  textFailRus='Вы не угадали слово '; textFailEng='The word was '; textFailLat=''; textFailEsp='La palabra correcta - '; textFailFra='';
  textAnotherTryRus='Попробуйте другое слово'; textAnotherTryEng='Try another word'; textAnotherTryLat=''; textAnotherTryEsp='Pruebe otra palabra, por favor'; textAnotherTryFra='';
  textStartRus='Я сказала: "Стартуем!"'; textStartEng='Let`s start the game!'; textStartLat=''; textStartEsp='¡Empezamos el juego!'; textStartFra='';
  textGreetingsRus='Приветули'; textGreetingsEng='Greetings'; textGreetingsLat=''; textGreetingsEsp='¡Hola!'; textGreetingsFra='';
  textPreviousRus='Кажется, у вас есть неотгаданное слово'; textPreviousEng='The last word is waiting you to guess'; textPreviousLat=''; textPreviousEsp='La palabra anteriora está esperando'; textPreviousFra='';

  textCongrats: array [1..5] of String = (textCongratsRus, textCongratsEng, textCongratsLat, textCongratsEsp, textCongratsFra);
  textFails: array [1..5] of String = (textFailRus, textFailEng, textFailLat, textFailEsp, textFailFra);
  textTries: array [1..5] of String = (textAnotherTryRus, textAnotherTryEng, textAnotherTryLat, textAnotherTryEsp, textAnotherTryFra);
  textStarts: array [1..5] of String = (textStartRus, textStartEng, textStartLat, textStartEsp, textStartFra);
  textGreetings: array [1..5] of String = (textGreetingsRus, textGreetingsEng, textGreetingsLat, textGreetingsEsp, textGreetingsFra);
  textPrevious: array [1..5] of String = (textPreviousRus, textPreviousEng, textPreviousLat, textPreviousEsp, textPreviousFra);

var StreakTemp1, StreakTemp2: integer;
    input, stat, statL: text;                              // input - read from vocabulary, stat - read from statistics file
    i, j, k, l, numberOfTheword, keyNumber, size: integer;  // разные счетчики wins - победы, games - все игры
    vocab, meanings: array of String;         // массив всего словаря и массив значений слов
    words: array [1..6] of string;              // массив со всеми ответами
    wordExists, wordGuessedRight, wordGuessedWrong, wordNotGuessed: boolean;
    ask: array [1..6,1..5] of integer;
    ques: array [1..6,1..5] of integer;
    keys: array [1..42] of TButton;
    keyValue: array [1..33] of char;                 // массив кнопок клавиатуры
    board: array [1..6,1..5] of TButton;             // массив табло с буквами 5х6
    letters: array [1..5] of char;
    kbrdBtnPress: array [1..33] of boolean;
    col, rovv: byte;
    fileNameWord, fileNameMean, infoLabelText: string;
    kbrdKeys: array [1..3,1..12] of TButton;
    padY, padX: integer;
    kbrdWidth, kbrdHeight: integer;
    boardHeight, boardWidth, boardDivVar: integer;
    ini: TIniFile;
    theWordTemp, theWord, boardWordsTemp, askRead, charTemp: string;
    boardWords : array [1..6] of String;
    askTemp: array [1..6] of String;
    wordQuantity, vocabTemp, numberOfThewordTemp, colorTemp : integer;
    boardAnimationArrayAppearMove: array [1..6,1..5] of TFloatAnimation;
    boardAnimationArrayAppearPos: array [1..6,1..5] of TFloatAnimation;
    boardAnimationArrayFadeMove: array [1..6,1..5] of TFloatAnimation;
    boardAnimationArrayFadePos: array [1..6,1..5] of TFloatAnimation;
    fontAnimation: array [1..6,1..5] of TColorAnimation;
    kbrdAnimationArray: array [1..33] of TColorAnimation;

implementation

uses statistics, meaningForm, themeForm, langForm, infoForm;

{$R *.fmx}
{$R *.iPhone4in.fmx IOS}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}

procedure boardAnimationSet(rowNumber : integer);
var
  delayFade: array [1..5] of real;
  delayAppear: array [1..5] of real;
  delayStep, durFade, durAppear: real;
begin
  delayStep := 0.2;
  durFade := 0.6;
  durAppear := 0.6;
  delayFade[1] := 0;
  delayAppear[1] := 0.4;
  for i := 2 to 5 do begin
    delayFade[i] := delayFade[i-1] + delayStep;
    delayAppear[i] := delayAppear[i-1] + delayStep;
  end;
  for i := 1 to 5 do begin
    boardAnimationArrayAppearMove[rowNumber,i].Delay := delayAppear[i];
    boardAnimationArrayAppearPos[rowNumber,i].Delay := delayAppear[i];
    boardAnimationArrayFadeMove[rowNumber,i].Delay := delayFade[i];
    boardAnimationArrayFadePos[rowNumber,i].Delay := delayFade[i] + 0.01;

    boardAnimationArrayAppearMove[rowNumber,i].Duration := durAppear;
    boardAnimationArrayAppearPos[rowNumber,i].Duration := durAppear;
    boardAnimationArrayFadeMove[rowNumber,i].Duration := durFade;
    boardAnimationArrayFadePos[rowNumber,i].Duration := durFade;

    boardAnimationArrayAppearMove[rowNumber,i].PropertyName := 'Scale.X';
    boardAnimationArrayAppearPos[rowNumber,i].PropertyName := 'Position.X';
    boardAnimationArrayFadeMove[rowNumber,i].PropertyName := 'Scale.X';
    boardAnimationArrayFadePos[rowNumber,i].PropertyName := 'Position.X';

    boardAnimationArrayAppearMove[rowNumber,i].StartValue := 0;
    boardAnimationArrayAppearPos[rowNumber,i].StartValue := board[rowNumber,i].Position.X;
    boardAnimationArrayFadeMove[rowNumber,i].StartValue := -1;
    boardAnimationArrayFadePos[rowNumber,i].StartValue := board[rowNumber,i].Position.X + board[rowNumber,i].Width;

    boardAnimationArrayAppearMove[rowNumber,i].StopValue := 1;
    boardAnimationArrayAppearPos[rowNumber,i].StopValue := board[rowNumber,i].Position.X;
    boardAnimationArrayFadeMove[rowNumber,i].StopValue := 0;
    boardAnimationArrayFadePos[rowNumber,i].StopValue := board[rowNumber,i].Position.X;

    boardAnimationArrayAppearMove[rowNumber,i].AnimationType := TAnimationType.In;
    boardAnimationArrayAppearPos[rowNumber,i].AnimationType := TAnimationType.In;
    boardAnimationArrayFadeMove[rowNumber,i].AnimationType := TAnimationType.Out;
    boardAnimationArrayFadePos[rowNumber,i].AnimationType := TAnimationType.Out;

    boardAnimationArrayAppearMove[rowNumber,i].Interpolation := TInterpolationType.Cubic;
    boardAnimationArrayAppearPos[rowNumber,i].Interpolation := TInterpolationType.Exponential;
    boardAnimationArrayFadeMove[rowNumber,i].Interpolation := TInterpolationType.Sinusoidal;
    boardAnimationArrayFadePos[rowNumber,i].Interpolation := TInterpolationType.Exponential;
  end;

end;

procedure boardAnimationFadeStart(rowNumber : integer);
begin
  for i := 1 to 5 do begin
    boardAnimationArrayFadeMove[rowNumber,i].Start;
    boardAnimationArrayFadePos[rowNumber,i].Start;
  end;
end;

procedure boardAnimationAppearStart(rowNumber : integer);
begin
  for i := 1 to 5 do begin
    boardAnimationArrayAppearMove[rowNumber,i].Start;
    boardAnimationArrayAppearPos[rowNumber,i].Start;
  end;
end;

procedure boardAnimationFontColorSet(rowNumber : integer);
var
  animDelay: array [1..5] of real;
  animDur, delayStep: real;
begin
  delayStep := 0.2;
  animDelay[1] := 0.4;
  animDur := 0.2;
  for i := 2 to 5 do
    animDelay[i] := animDelay[i-1] + delayStep;

  for i := 1 to 5 do begin
    fontAnimation[rowNumber,i].Delay := animDelay[i];
    fontAnimation[rowNumber,i].Duration := animDur;
    fontAnimation[rowNumber,i].PropertyName := 'FontColor';
    fontAnimation[rowNumber,i].Interpolation := TInterpolationType.Exponential;
    fontAnimation[rowNumber,i].StartValue := boardNKeyTextColorsDef[ColorsSetNumber];
    if ask[rowNumber,i]=2 then fontAnimation[rowNumber,i].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];              //green
    if ask[rowNumber,i]=1 then fontAnimation[rowNumber,i].StopValue := boardNKeyTextColorsYellow[ColorsSetNumber];              //yellow bright
    if ask[rowNumber,i]=0 then fontAnimation[rowNumber,i].StopValue := boardNKeyTextColorsDef[ColorsSetNumber];
  end;
end;

procedure boardAnimationTintColorSet(rowNumber : integer);
var
  animDelay: array [1..5] of real;
  animDur, delayStep: real;
begin
  animDelay[1] := 0.4;
  animDur := 0.2;
  delayStep := 0.2;
  for i := 2 to 5 do
    animDelay[i] := animDelay[i-1] + delayStep;

  {$IFDEF ANDROID}
  for I := 1 to 5 do begin
    fontAnimation[rowNumber,i].Delay := animDelay[i];
    fontAnimation[rowNumber,i].Duration := animDur;
    fontAnimation[rowNumber,i].PropertyName := 'TintColor';
    fontAnimation[rowNumber,i].Interpolation := TInterpolationType.Exponential;
    fontAnimation[rowNumber,i].StartValue := boardNKeyTextColorsDef[ColorsSetNumber];
  end;
  if wordGuessedWrong = true then
    for I := 1 to 5 do
      fontAnimation[rowNumber,i].StopValue := boardNKeyTextColorsRed[ColorsSetNumber];

  if wordGuessedRight = true then
    for I := 1 to 5 do
      fontAnimation[rowNumber,i].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];
  {$ENDIF}

end;

procedure kbrdAnimationFontColorStart;
var
  animDelay: array [1..5] of real;
  delayStep: real;
begin
  delayStep := 0.2;
  animDelay[1] := 0.4;
  for i := 2 to 5 do
    animDelay[i] := animDelay[i-1] + delayStep;

  for I := 1 to 33 do begin
    kbrdAnimationArray[i].Delay := animDelay[i];
    kbrdAnimationArray[i].Duration := 0.4;
    kbrdAnimationArray[i].PropertyName := 'FontColor';
    kbrdAnimationArray[i].Interpolation := TInterpolationType.Exponential;
  end;

  if VocNumber = 1 then begin
    for j := 1 to 5 do
      for i := 1 to 32 do
        if (ord(words[rovv][j])=1071+i) then begin                               // 223 было
          if ask[rovv,j]=2 then begin
            kbrdAnimationArray[i].StartValue := keys[i].TextSettings.FontColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
          if (ask[rovv,j]=1) and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber]) then begin
            kbrdAnimationArray[i].StartValue := keys[i].TextSettings.FontColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsYellow[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
          if (ask[rovv,j]=0) and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber])
                             and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsYellow[ColorsSetNumber]) then begin
            kbrdAnimationArray[i].StartValue := keys[i].TextSettings.FontColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsRed[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
        end;
    for j := 1 to 5 do
      if (words[rovv][j] = #1105) then begin
        if ask[rovv,j]=2 then begin
          kbrdAnimationArray[33].StartValue := keys[i].TextSettings.FontColor;
          kbrdAnimationArray[33].StopValue := $00000000;
          kbrdAnimationArray[33].Delay := animDelay[j];
          kbrdAnimationArray[33].start;
          kbrdAnimationArray[33].StartValue := $00000000;;
          kbrdAnimationArray[33].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];
          kbrdAnimationArray[33].start;
        end;
        if (ask[rovv,j]=1) and (kbrdAnimationArray[33].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber]) then begin
          kbrdAnimationArray[33].StartValue := keys[33].TextSettings.FontColor;
          kbrdAnimationArray[33].StopValue := $00000000;
          kbrdAnimationArray[33].Delay := animDelay[j];
          kbrdAnimationArray[33].start;
          kbrdAnimationArray[33].StartValue := $00000000;;
          kbrdAnimationArray[33].StopValue := boardNKeyTextColorsYellow[ColorsSetNumber];
          kbrdAnimationArray[33].start;
        end;
        if (ask[rovv,j]=0) and (kbrdAnimationArray[33].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber])
                           and (kbrdAnimationArray[33].StopValue <> boardNKeyTextColorsYellow[ColorsSetNumber]) then begin
          kbrdAnimationArray[33].StartValue := keys[33].TextSettings.FontColor;
          kbrdAnimationArray[33].StopValue := $00000000;
          kbrdAnimationArray[33].Delay := animDelay[j];
          kbrdAnimationArray[33].start;
          kbrdAnimationArray[33].StartValue := $00000000;;
          kbrdAnimationArray[33].StopValue := boardNKeyTextColorsRed[ColorsSetNumber];
          kbrdAnimationArray[33].start;
        end;
      end;
  end;

  if (VocNumber = 2) or (VocNumber = 3) then begin
    for j := 1 to 5 do
      for i := 1 to 33 do begin
        if (ord(words[rovv][j])=96+i) then begin
          if ask[rovv,j]=2 then begin
            kbrdAnimationArray[i].StartValue := keys[i].TextSettings.FontColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
          if (ask[rovv,j]=1) and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber]) then begin
            kbrdAnimationArray[i].StartValue := keys[i].TextSettings.FontColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsYellow[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
          if (ask[rovv,j]=0) and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber])
                             and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsYellow[ColorsSetNumber]) then begin
            kbrdAnimationArray[i].StartValue := keys[i].TextSettings.FontColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsRed[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
        end;
      end;

  end;

  if VocNumber = 4 then begin

    for j := 1 to 5 do
      for i := 1 to 32 do
        if (ord(words[rovv][j])=96+i) then begin                                // 223 было
          if ask[rovv,j]=2 then begin
              kbrdAnimationArray[i].StartValue := keys[i].TextSettings.FontColor;
              kbrdAnimationArray[i].StopValue := $00000000;
              kbrdAnimationArray[i].Delay := animDelay[j];
              kbrdAnimationArray[i].start;
              kbrdAnimationArray[i].StartValue := $00000000;;
              kbrdAnimationArray[i].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];
              kbrdAnimationArray[i].start;
          end;
          if (ask[rovv,j]=1) and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber]) then begin
            kbrdAnimationArray[i].StartValue := keys[i].TextSettings.FontColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsYellow[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
          if (ask[rovv,j]=0) and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber])
                             and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsYellow[ColorsSetNumber]) then begin
            kbrdAnimationArray[i].StartValue := keys[i].TextSettings.FontColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsRed[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
        end;
    for j := 1 to 5 do
      if (words[rovv][j] = 'ñ') then begin
        if ask[rovv,j]=2 then begin
          kbrdAnimationArray[27].StartValue := keys[27].TextSettings.FontColor;
          kbrdAnimationArray[27].StopValue := $00000000;
          kbrdAnimationArray[27].Delay := animDelay[j];
          kbrdAnimationArray[27].start;
          kbrdAnimationArray[27].StartValue := $00000000;;
          kbrdAnimationArray[27].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];
          kbrdAnimationArray[27].start;
        end;
        if (ask[rovv,j]=1) and (kbrdAnimationArray[27].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber]) then begin
          kbrdAnimationArray[27].StartValue := keys[27].TextSettings.FontColor;
          kbrdAnimationArray[27].StopValue := $00000000;
          kbrdAnimationArray[27].Delay := animDelay[j];
          kbrdAnimationArray[27].start;
          kbrdAnimationArray[27].StartValue := $00000000;;
          kbrdAnimationArray[27].StopValue := boardNKeyTextColorsYellow[ColorsSetNumber];
          kbrdAnimationArray[27].start;
        end;
        if (ask[rovv,j]=0) and (kbrdAnimationArray[27].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber])
                           and (kbrdAnimationArray[27].StopValue <> boardNKeyTextColorsYellow[ColorsSetNumber]) then begin
          kbrdAnimationArray[27].StartValue := keys[27].TextSettings.FontColor;
          kbrdAnimationArray[27].StopValue := $00000000;
          kbrdAnimationArray[27].Delay := animDelay[j];
          kbrdAnimationArray[27].start;
          kbrdAnimationArray[27].StartValue := $00000000;;
          kbrdAnimationArray[27].StopValue := boardNKeyTextColorsRed[ColorsSetNumber];
          kbrdAnimationArray[27].start;
        end;
      end;
  end;
end;

procedure kbrdAnimationTintColorStart;
var
  animDelay: array [1..5] of real;
  delayStep: real;
begin
  delayStep := 0.2;
  animDelay[1] := 0.4;
  for i := 2 to 5 do
    animDelay[i] := animDelay[i-1] + delayStep;

  for I := 1 to 33 do begin
    kbrdAnimationArray[i].Delay := animDelay[i];
    kbrdAnimationArray[i].Duration := 0.4;
    kbrdAnimationArray[i].PropertyName := 'TintColor';
    kbrdAnimationArray[i].Interpolation := TInterpolationType.Exponential;
  end;

  if VocNumber = 1 then begin
    for j := 1 to 5 do
      for i := 1 to 32 do
        if (ord(words[rovv][j])=1071+i) then begin
          if ask[rovv,j]=2 then begin
            kbrdAnimationArray[i].StartValue := keys[i].TintColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
          if (ask[rovv,j]=1) and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber]) then begin
            kbrdAnimationArray[i].StartValue := keys[i].TintColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsYellow[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
          if (ask[rovv,j]=0) and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber])
                             and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsYellow[ColorsSetNumber]) then begin
            kbrdAnimationArray[i].StartValue := keys[i].TintColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsGrey[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
        end;
    for j := 1 to 5 do
      if (words[rovv][j] = #1105) then begin
        if ask[rovv,j]=2 then begin
          kbrdAnimationArray[33].StartValue := keys[i].TintColor;
          kbrdAnimationArray[33].StopValue := $00000000;
          kbrdAnimationArray[33].Delay := animDelay[j];
          kbrdAnimationArray[33].start;
          kbrdAnimationArray[33].StartValue := $00000000;;
          kbrdAnimationArray[33].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];
          kbrdAnimationArray[33].start;
        end;
        if (ask[rovv,j]=1) and (kbrdAnimationArray[33].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber]) then begin
          kbrdAnimationArray[33].StartValue := keys[33].TintColor;
          kbrdAnimationArray[33].StopValue := $00000000;
          kbrdAnimationArray[33].Delay := animDelay[j];
          kbrdAnimationArray[33].start;
          kbrdAnimationArray[33].StartValue := $00000000;;
          kbrdAnimationArray[33].StopValue := boardNKeyTextColorsYellow[ColorsSetNumber];
          kbrdAnimationArray[33].start;
        end;
        if (ask[rovv,j]=0) and (kbrdAnimationArray[33].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber])
                           and (kbrdAnimationArray[33].StopValue <> boardNKeyTextColorsYellow[ColorsSetNumber]) then begin
          kbrdAnimationArray[33].StartValue := keys[33].TintColor;
          kbrdAnimationArray[33].StopValue := $00000000;
          kbrdAnimationArray[33].Delay := animDelay[j];
          kbrdAnimationArray[33].start;
          kbrdAnimationArray[33].StartValue := $00000000;;
          kbrdAnimationArray[33].StopValue := boardNKeyTextColorsGrey[ColorsSetNumber];
          kbrdAnimationArray[33].start;
        end;
      end;
  end;

  if (VocNumber = 2) or (VocNumber = 3) then begin
    for j := 1 to 5 do
      for i := 1 to 26 do
        if (ord(words[rovv][j])=96+i) then begin
          if ask[rovv,j]=2 then begin
            kbrdAnimationArray[i].StartValue := keys[i].TintColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
          if (ask[rovv,j]=1) and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber]) then begin
            kbrdAnimationArray[i].StartValue := keys[i].TintColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsYellow[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
          if (ask[rovv,j]=0) and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber])
                             and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsYellow[ColorsSetNumber]) then begin
            kbrdAnimationArray[i].StartValue := keys[i].TintColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsGrey[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
        end;

  end;

  if VocNumber = 4 then begin

    for j := 1 to 5 do
      for i := 1 to 26 do
        if (ord(words[rovv][j])=96+i) then begin
          if ask[rovv,j]=2 then begin
              kbrdAnimationArray[i].StartValue := keys[i].TintColor;
              kbrdAnimationArray[i].StopValue := $00000000;
              kbrdAnimationArray[i].Delay := animDelay[j];
              kbrdAnimationArray[i].start;
              kbrdAnimationArray[i].StartValue := $00000000;;
              kbrdAnimationArray[i].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];
              kbrdAnimationArray[i].start;
          end;
          if (ask[rovv,j]=1) and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber]) then begin
            kbrdAnimationArray[i].StartValue := keys[i].TintColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsYellow[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
          if (ask[rovv,j]=0) and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber])
                             and (kbrdAnimationArray[i].StopValue <> boardNKeyTextColorsYellow[ColorsSetNumber]) then begin
            kbrdAnimationArray[i].StartValue := keys[i].TintColor;
            kbrdAnimationArray[i].StopValue := $00000000;
            kbrdAnimationArray[i].Delay := animDelay[j];
            kbrdAnimationArray[i].start;
            kbrdAnimationArray[i].StartValue := $00000000;;
            kbrdAnimationArray[i].StopValue := boardNKeyTextColorsGrey[ColorsSetNumber];
            kbrdAnimationArray[i].start;
          end;
        end;
    for j := 1 to 5 do
      if (words[rovv][j] = 'ñ') then begin
        if ask[rovv,j]=2 then begin
          kbrdAnimationArray[27].StartValue := keys[27].TintColor;
          kbrdAnimationArray[27].StopValue := $00000000;
          kbrdAnimationArray[27].Delay := animDelay[j];
          kbrdAnimationArray[27].start;
          kbrdAnimationArray[27].StartValue := $00000000;;
          kbrdAnimationArray[27].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];
          kbrdAnimationArray[27].start;
        end;
        if (ask[rovv,j]=1) and (kbrdAnimationArray[27].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber]) then begin
          kbrdAnimationArray[27].StartValue := keys[27].TintColor;
          kbrdAnimationArray[27].StopValue := $00000000;
          kbrdAnimationArray[27].Delay := animDelay[j];
          kbrdAnimationArray[27].start;
          kbrdAnimationArray[27].StartValue := $00000000;;
          kbrdAnimationArray[27].StopValue := boardNKeyTextColorsYellow[ColorsSetNumber];
          kbrdAnimationArray[27].start;
        end;
        if (ask[rovv,j]=0) and (kbrdAnimationArray[27].StopValue <> boardNKeyTextColorsGreen[ColorsSetNumber])
                           and (kbrdAnimationArray[27].StopValue <> boardNKeyTextColorsYellow[ColorsSetNumber]) then begin
          kbrdAnimationArray[27].StartValue := keys[27].TintColor;
          kbrdAnimationArray[27].StopValue := $00000000;
          kbrdAnimationArray[27].Delay := animDelay[j];
          kbrdAnimationArray[27].start;
          kbrdAnimationArray[27].StartValue := $00000000;;
          kbrdAnimationArray[27].StopValue := boardNKeyTextColorsGrey[ColorsSetNumber];
          kbrdAnimationArray[27].start;
        end;
      end;
  end;
end;

function GetMyFile(const AssetName : string) : string;
begin
{$IFDEF ANDROID}
Result := TPath.Combine(TPath.GetDocumentsPath, AssetName);
{$ENDIF}

{$IFDEF MSWINDOWS}
Result := TPath.Combine(TPath.GetAppPath + PathDelim, AssetName);
{$ENDIF}

{$IFDEF IOS}
Result := TPath.Combine(TPath.GetAppPath, AssetName);
{$ENDIF}

{$IFDEF MACOS}
Result := TPath.Combine(TPath.GetAppPath, AssetName);
{$ENDIF}
end;

procedure WriteSettingsIniFile;
begin

  {$IFDEF ANDROID}
    ini := TIniFile.Create(GetMyFile('settings.ini'));
  {$ENDIF}
  {$IFDEF MSWINDOWS}
    ini := TIniFile.Create(TPath.GetAppPath + PathDelim + 'settings.ini');
  {$ENDIF}
  if ini.SectionExists('session')                                           // очищаем раздел ini файла session
    then ini.EraseSection('session');
  wordQuantity := 0;
  try
    ini.WriteInteger('settings','ColorsSetNumber',ColorsSetNumber);
    ini.WriteInteger('settings','VocNumber',VocNumber);
    if wordNotGuessed = true then begin
      ini.WriteInteger('session','numberOfTheword',numberOfTheword);
      ini.WriteString('session','theWord',theWord);

      for i:=1 to rovv do
        if Words[i].Length > 0 then begin
          boardWords[i] := board[i,1].Text + board[i,2].Text + board[i,3].Text + board[i,4].Text + board[i,5].Text;
          askTemp[i] := intToStr(ask[i,1]) + intToStr(ask[i,2]) + intToStr(ask[i,3]) + intToStr(ask[i,4]) + intToStr(ask[i,5]);
          INI.WriteString('session' , 'Board' + intToStr(i) , boardWords[i]);
          INI.WriteString('session' , 'Ask' + intToStr(i) , askTemp[i]);
          wordQuantity := i;
        end;
      INI.WriteInteger('session' , 'wordQuantity' , wordQuantity);
      ini.WriteBool('session' , 'wordNotGuessed' , wordNotGuessed);
    end;
  finally
    ini.Free;
  end;
end;

procedure ReadSettingsIniFile;
begin

  {$IFDEF ANDROID}
    ini := TIniFile.Create(GetMyFile('settings.ini'));
  {$ENDIF}
  {$IFDEF MSWINDOWS}
    ini := TIniFile.Create(TPath.GetAppPath + PathDelim + 'settings.ini');
  {$ENDIF}
  try
    ColorsSetNumber := ini.ReadInteger('settings','ColorsSetNumber',ColorsSetNumber);
    VocNumber := ini.ReadInteger('settings','VocNumber',VocNumber);
    wordNotGuessed := ini.ReadBool('session','wordNotGuessed',wordNotGuessed);
    if wordNotGuessed then begin
      numberOfTheword := ini.ReadInteger('session','numberOfTheword',numberOfTheword);
      theWord := ini.ReadString('session','theWord',theWord);
      wordQuantity := INI.ReadInteger('session','wordQuantity',wordQuantity);
      if wordQuantity > 0 then begin
        for i:=1 to wordQuantity do begin
          boardWords[i] := INI.ReadString('session' , 'Board' + intToStr(i) , boardWords[i]);
          askTemp[i] := INI.ReadString('session' , 'Ask' + intToStr(i) , askTemp[i]);
        end;
      end;
    end;
  finally
    ini.Free;
  end;
end;

procedure vocabularyChange;
forward;

procedure statsVarNull;
begin
  games := 0;
  wins := 0;
  winStreak := 0;
  lastGameWon := 0;
  lastStreak := 0;
end;

procedure statsVarNullL;
begin
  gamesL := 0;
  winsL := 0;
  winStreakL := 0;
  lastGameWonL := 0;
  lastStreakL := 0;
end;

procedure statsFileRead;
begin

  if FileExists(GetMyFile(statFileNames[0])) then begin
    AssignFile(stat,GetMyFile(statFileNames[0]));
    reset(stat);
    readln(stat , games);                               // считываем кол-во игр
    readln(stat , wins);                                // считываем кол-во всех побед
    readln(stat , winStreak);                           // считываем кол-во побед подряд
    readln(stat , lastGameWon);                         // считываем проверку на предыдущую победу
    readln(stat , lastStreak);                          // считываем послюднюю серию побед
    close(stat);
  end;

end;

procedure statsFileReadL;
begin

  if FileExists(GetMyFile(statFileNames[VocNumber])) then begin
    AssignFile(statL,GetMyFile(statFileNames[VocNumber]));
    reset(statL);
    readln(statL , gamesL);                               // считываем кол-во игр
    readln(statL , winsL);                                // считываем кол-во всех побед
    readln(statL , winStreakL);                           // считываем кол-во побед подряд
    readln(statL , lastGameWonL);                         // считываем проверку на предыдущую победу
    readln(statL , lastStreakL);                          // считываем послюднюю серию побед
    close(statL);
  end;

end;

procedure statsFileWriteWon;
begin

  AssignFile(stat,GetMyFile(statFileNames[0]));        // общая статистика
  rewrite(stat);
  inc(games);
  writeln(stat , games);
  inc(wins);
  writeln(stat , wins);
  if lastGameWon = 0
    then lastStreak := 1
    else inc(lastStreak);
  lastGameWon := 1;
  if lastStreak > winStreak
    then writeln(stat , lastStreak)
    else writeln(stat , winStreak);
  writeln(stat , lastGameWon);
  writeln(stat , lastStreak);
  close(stat);

  AssignFile(statL,GetMyFile(statFileNames[VocNumber]));  // статистика в языке
  rewrite(statL);
  inc(gamesL);
  writeln(statL , gamesL);
  inc(winsL);
  writeln(statL , winsL);
  if lastGameWonL = 0
    then lastStreakL := 1
    else inc(lastStreakL);
  lastGameWonL := 1;
  if lastStreakL > winStreakL
    then writeln(statL , lastStreakL)
    else writeln(statL , winStreakL);
  writeln(statL , lastGameWonL);
  writeln(statL , lastStreakL);
  close(statL);

end;

procedure statsFileWriteLost;
begin

  AssignFile(stat,GetMyFile(statFileNames[0]));
  rewrite(stat);
  inc(games);
  writeln(stat, games);
  writeln(stat, wins);
  writeln(stat, winStreak);
  lastGameWon := 0;
  writeln(stat, lastGameWon);
  lastStreak := 0;
  writeln(stat ,lastStreak);
  close(stat);

  AssignFile(statL,GetMyFile(statFileNames[VocNumber]));
  rewrite(statL);
  inc(gamesL);
  writeln(statL, gamesL);
  writeln(statL, winsL);
  writeln(statL, winStreakL);
  lastGameWonL := 0;
  writeln(statL, lastGameWonL);
  lastStreakL := 0;
  writeln(statL ,lastStreakL);
  close(statL);

end;

procedure statsRefresh;
begin
  StreakTemp1 := currentWinStreak;
  statsFileRead;
  currentWinStreak := StreakTemp1;
  statsFileReadL;
end;

procedure statsReadAll;
begin
  statsVarNull;
  statsVarNullL;
  statsFileRead;
  statsFileReadL;
end;

procedure kbrdArrays;
begin

    kbrdBtnPress[1]:=false;   kbrdBtnPress[2]:=false;   kbrdBtnPress[3]:=false;   kbrdBtnPress[4]:=false;   kbrdBtnPress[5]:=false;   kbrdBtnPress[6]:=false;   kbrdBtnPress[7]:=false;   kbrdBtnPress[8]:=false;
    kbrdBtnPress[9]:=false;   kbrdBtnPress[10]:=false;  kbrdBtnPress[11]:=false;  kbrdBtnPress[12]:=false;  kbrdBtnPress[13]:=false;  kbrdBtnPress[14]:=false;  kbrdBtnPress[15]:=false;  kbrdBtnPress[16]:=false;
    kbrdBtnPress[17]:=false;  kbrdBtnPress[18]:=false;  kbrdBtnPress[19]:=false;  kbrdBtnPress[20]:=false;  kbrdBtnPress[21]:=false;  kbrdBtnPress[22]:=false;  kbrdBtnPress[23]:=false;  kbrdBtnPress[24]:=false;
    kbrdBtnPress[25]:=false;  kbrdBtnPress[26]:=false;  kbrdBtnPress[27]:=false;  kbrdBtnPress[28]:=false;  kbrdBtnPress[29]:=false;  kbrdBtnPress[30]:=false;  kbrdBtnPress[31]:=false;  kbrdBtnPress[32]:=false;
    kbrdBtnPress[33]:=false;

  if VocNumber = 1 then begin

    kbrdKeys[1,1]:=keys[10];  kbrdKeys[1,2]:=keys[23];  kbrdKeys[1,3]:=keys[20];  kbrdKeys[1,4]:=keys[11];  kbrdKeys[1,5]:=keys[6];  kbrdKeys[1,6]:=keys[14];
    kbrdKeys[1,7]:=keys[4];   kbrdKeys[1,8]:=keys[25];  kbrdKeys[1,9]:=keys[26];  kbrdKeys[1,10]:=keys[8];  kbrdKeys[1,11]:=keys[22];kbrdKeys[1,12]:=keys[27];

    kbrdKeys[2,1]:=keys[21];  kbrdKeys[2,2]:=keys[28];  kbrdKeys[2,3]:=keys[3];   kbrdKeys[2,4]:=keys[1];   kbrdKeys[2,5]:=keys[16]; kbrdKeys[2,6]:=keys[17];
    kbrdKeys[2,7]:=keys[15];  kbrdKeys[2,8]:=keys[12];  kbrdKeys[2,9]:=keys[5];   kbrdKeys[2,10]:=keys[7];  kbrdKeys[2,11]:=keys[30];kbrdKeys[2,12]:=keys[40];

    kbrdKeys[3,1]:=keys[32];  kbrdKeys[3,2]:=keys[24];  kbrdKeys[3,3]:=keys[18];  kbrdKeys[3,4]:=keys[13];  kbrdKeys[3,5]:=keys[9];  kbrdKeys[3,6]:=keys[19];
    kbrdKeys[3,7]:=keys[29];  kbrdKeys[3,8]:=keys[2];   kbrdKeys[3,9]:=keys[31];  kbrdKeys[3,10]:=keys[33]; kbrdKeys[3,11]:=keys[39];


  end;

  if (VocNumber = 2) or (VocNumber = 3) then begin

    kbrdKeys[1,1]:=keys[17];  kbrdKeys[1,2]:=keys[23];  kbrdKeys[1,3]:=keys[5];   kbrdKeys[1,4]:=keys[18];  kbrdKeys[1,5]:=keys[20];  kbrdKeys[1,6]:=keys[25];
    kbrdKeys[1,7]:=keys[21];  kbrdKeys[1,8]:=keys[9];   kbrdKeys[1,9]:=keys[15];  kbrdKeys[1,10]:=keys[16];

    kbrdKeys[2,1]:=keys[1];   kbrdKeys[2,2]:=keys[19];  kbrdKeys[2,3]:=keys[4];   kbrdKeys[2,4]:=keys[6];   kbrdKeys[2,5]:=keys[7];   kbrdKeys[2,6]:=keys[8];
    kbrdKeys[2,7]:=keys[10];  kbrdKeys[2,8]:=keys[11];  kbrdKeys[2,9]:=keys[12];

    kbrdKeys[3,1]:=keys[26];  kbrdKeys[3,2]:=keys[24];  kbrdKeys[3,3]:=keys[3];   kbrdKeys[3,4]:=keys[22];  kbrdKeys[3,5]:=keys[2];   kbrdKeys[3,6]:=keys[14];
    kbrdKeys[3,7]:=keys[13];  kbrdKeys[3,8]:=keys[39];  kbrdKeys[3,9]:=keys[40];

  end;

  if VocNumber = 4 then begin

    kbrdKeys[1,1]:=keys[17];  kbrdKeys[1,2]:=keys[23];  kbrdKeys[1,3]:=keys[5];   kbrdKeys[1,4]:=keys[18];  kbrdKeys[1,5]:=keys[20];  kbrdKeys[1,6]:=keys[25];
    kbrdKeys[1,7]:=keys[21];  kbrdKeys[1,8]:=keys[9];   kbrdKeys[1,9]:=keys[15];  kbrdKeys[1,10]:=keys[16];

    kbrdKeys[2,1]:=keys[1];   kbrdKeys[2,2]:=keys[19];  kbrdKeys[2,3]:=keys[4];   kbrdKeys[2,4]:=keys[6];   kbrdKeys[2,5]:=keys[7];   kbrdKeys[2,6]:=keys[8];
    kbrdKeys[2,7]:=keys[10];  kbrdKeys[2,8]:=keys[11];  kbrdKeys[2,9]:=keys[12];  kbrdKeys[2,10]:=keys[40];

    kbrdKeys[3,1]:=keys[26];  kbrdKeys[3,2]:=keys[24];  kbrdKeys[3,3]:=keys[3];   kbrdKeys[3,4]:=keys[22];  kbrdKeys[3,5]:=keys[2];   kbrdKeys[3,6]:=keys[14];
    kbrdKeys[3,7]:=keys[13];  kbrdKeys[3,8]:=keys[27];  kbrdKeys[3,9]:=keys[39];

  end;


end;

procedure boardSizeCalc;
begin
{$IFDEF ANDROID}
  padX := 8;
  padY := 8;
  boardHeight := round (MainForm.infoLabel.Position.Y - padY);

  if boardHeight > screen.Width then begin
    boardWidth := round((screen.Width - padX * 6) / 5);
    for i := 1 to 6 do
      for j := 1 to 5 do begin
        board[i,j].Width := boardWidth;
        board[i,j].Height := board[i,j].Width;
      end;

    if board[1,1].Height * 7 < boardHeight
      then begin
        padY := round((boardHeight - board[1,1].Height * 6 - padX * 7 - keys[38].Height) / 2);

        for I := 34 to 38 do
          keys[i].Position.Y:=padY;
        keys[41].Position.Y:=padY;

        padY := 8;

        board[1,1].Position.X:=padX;
        board[1,1].Position.Y:=keys[38].Position.Y + keys[38].Height + padY;

        padY := padX;
        for I := 2 to 6 do begin
          board[i,1].Position.X := padX;
          board[i,1].Position.Y := board[i-1,1].Position.Y + board[i,1].Height + padY;
        end;

        for i := 2 to 5 do begin
          board[1,i].Position.X:=padX + board[1,i-1].Position.X + board[1,1].Width;
          board[1,i].Position.Y:=board[1,1].Position.Y;
        end;

        for i := 2 to 6 do
          for j := 2 to 5 do begin
            board[i,j].Position.X := board[i,j-1].Position.X + board[1,1].Width + padX;
            board[i,j].Position.Y := board[i-1,j].Position.Y + board[i,1].Height + padY;
          end;
      end
        else begin
          boardDivVar := 1;
          padX := 4;
          while board[1,1].Height * 7 + padX * 7 >= boardHeight do begin
            inc(boardDivVar);
            board[1,1].Height := board[1,1].Height - boardDivVar;
          end;

          for i := 1 to 6 do
            for j := 1 to 5 do begin
              board[i,j].Height := board[1,1].Height;
              board[i,j].Width := board[1,1].Height;
            end;
          padX := 8;
          padY := round((boardHeight - board[1,1].Height * 6 - padX * 7 - keys[38].Height) / 2);
          padX := round((screen.Width - (board[1,1].Height * 5 + padX * 4)) / 2);
          for I := 34 to 38 do
            keys[i].Position.Y:=padY;
          keys[41].Position.Y:=padY;

          padY := 8;

          board[1,1].Position.X:=padX;
          board[1,1].Position.Y:=keys[38].Position.Y + keys[38].Height + padY;

          for I := 2 to 6 do begin
            board[i,1].Position.X := board[1,1].Position.X;
            board[i,1].Position.Y := board[i-1,1].Position.Y + board[i,1].Height + padY;
          end;
          padX := 8;
          for i := 2 to 5 do begin
            board[1,i].Position.X:=padX + board[1,i-1].Position.X + board[1,1].Width;
            board[1,i].Position.Y:=board[1,1].Position.Y;
          end;

          for i := 2 to 6 do
            for j := 2 to 5 do begin
              board[i,j].Position.X := board[i,j-1].Position.X + board[1,1].Width + padX;
              board[i,j].Position.Y := board[i-1,j].Position.Y + board[i,1].Height + padY;
            end;
        end;

  end else
    begin
      padX := 8;
      padY := round((boardHeight - board[1,1].Height * 6 - padX * 6 - keys[38].Height) / 2);

      for I := 34 to 38 do
        keys[i].Position.Y:=padY;
      keys[41].Position.Y:=padY;

      for i := 1 to 6 do
        for j := 1 to 5 do begin
          board[i,j].Height := (boardHeight - padY * 2 - padX * 6 - keys[38].Height) / 6;
          board[i,j].Width := board[i,j].Height;
        end;
      padY := 8;

      board[1,1].Position.X:=padX;
      board[1,1].Position.Y:=keys[38].Position.Y + keys[38].Height + padY;

      padY := padX;
      for I := 2 to 6 do begin
        board[i,1].Position.X := padX;
        board[i,1].Position.Y := board[i-1,1].Position.Y + board[i,1].Height + padY;
      end;

      for i := 2 to 5 do begin
        board[1,i].Position.X:=padX + board[1,i-1].Position.X + board[1,1].Width;
        board[1,i].Position.Y:=board[1,1].Position.Y;
      end;

      for i := 2 to 6 do
        for j := 2 to 5 do begin
          board[i,j].Position.X := board[i,j-1].Position.X + board[1,1].Width + padX;
          board[i,j].Position.Y := board[i-1,j].Position.Y + board[i,1].Height + padY;
        end;
    end;
{$ENDIF}

{$IFDEF MSWINDOWS}
  padX := 8;
  padY := 8;

  for i := 1 to 6 do
    for j := 1 to 5 do begin
      board[i,j].Height := (MainForm.InfoLabel.Position.Y - padY * 7) / 6;
      board[i,j].Width := board[i,j].Height;
    end;

  board[1,1].Position.X := (MainForm.ClientWidth - board[1,1].Height * 5 - padX * 5) / 2;
  board[1,1].Position.Y := (MainForm.InfoLabel.Position.Y - board[1,1].Height * 6 - padX * 5) / 2;

  for I := 2 to 6 do begin
    board[i,1].Position.X := (MainForm.ClientWidth - board[1,1].Height * 5 - padX * 5) / 2;
    board[i,1].Position.Y := board[i-1,1].Position.Y + board[i,1].Height + padY;
  end;

  for i := 2 to 5 do begin
    board[1,i].Position.X:=padX + board[1,i-1].Position.X + board[1,1].Width;
    board[1,i].Position.Y:=board[1,1].Position.Y;
  end;

  for i := 2 to 6 do
    for j := 2 to 5 do begin
      board[i,j].Position.X := board[i,j-1].Position.X + board[1,1].Width + padX;
      board[i,j].Position.Y := board[i-1,j].Position.Y + board[i,1].Height + padY;
    end;

{$ENDIF}
end;

procedure topButtonsProperties;
begin
{$IFDEF ANDROID}
  keys[34].TextSettings.Font.Size := 18;
  keys[35].TextSettings.Font.Size := 20;
  keys[36].TextSettings.Font.Size := 22;
  keys[37].TextSettings.Font.Size := 20;
  keys[41].TextSettings.Font.Size := 20;
  if VocNumber = 1
    then keys[41].Text := '🇷🇺';
  if VocNumber = 2
    then keys[41].Text := '🇬🇧';
  if VocNumber = 4
    then keys[41].Text := '🇪🇸';
{$ENDIF}

{$IFDEF MSWINDOWS}
  keys[34].TextSettings.Font.Size := 22;
  keys[35].TextSettings.Font.Size := 22;
  keys[36].TextSettings.Font.Size := 22;
  keys[37].TextSettings.Font.Size := 22;
  keys[41].TextSettings.Font.Size := 22;

  if VocNumber = 1
    then keys[41].Text := '🇷🇺';
  if VocNumber = 2
    then keys[41].Text := '🇬🇧';
  if VocNumber = 4
    then keys[41].Text := '🇪🇸';
{$ENDIF}
end;

procedure topButtonsPositions;
begin
{$IFDEF ANDROID}
  for I := 34 to 37 do
      keys[i].Width := keys[i].Height;
  keys[41].Width := keys[41].Height;

  keys[38].Width := board[1,1].Width;
  keys[38].Position.X:=padX;
  keys[35].Position.X := keys[38].Position.X + keys[38].Width + padX;
  keys[36].Position.X := keys[35].Position.X + keys[35].Width + padX;
  keys[41].Position.X := keys[36].Position.X + keys[36].Width + padX;
  keys[34].Position.X := keys[41].Position.X + keys[41].Width + padX;
  keys[37].Position.X := screen.Width - keys[37].Width - padX;
{$ENDIF}

{$IFDEF MSWINDOWS}

  keys[38].Width := 30;
  for I := 34 to 37 do
      keys[i].Width := keys[38].Width;
  keys[41].Width := keys[38].Width;

  padX := 4;

  for i := 34 to 36 do
    keys[i].Position.X := MainForm.ClientWidth - keys[i].Width - 4;
  keys[41].Position.X := MainForm.ClientWidth - keys[41].Width - 4;
  keys[34].Position.Y := board[2,1].Position.Y;
  for i := 35 to 36 do
  keys[i].Position.Y := keys[i-1].Position.Y + keys[34].Height + 4;

  keys[38].Position.X := 4;
  keys[37].Position.X := 4;
  keys[41].Position.X := 4;
  keys[38].Position.Y := board[2,1].Position.Y;
  keys[37].Position.Y := keys[38].Position.Y + keys[38].Height + 4;
  keys[41].Position.Y := keys[37].Position.Y + keys[38].Height + 4;

{$ENDIF}
end;

procedure infoLabelProperties;
begin

{$IFDEF ANDROID}

  padY := 8;
  MainForm.infoLabel.Width := screen.Width;
  MainForm.infoLabel.Height := 20;
  MainForm.infoLabel.Position.Y := kbrdKeys[1,1].Position.Y - MainForm.infoLabel.Height - padY;
  MainForm.infoLabel.Position.X := 0;

{$ENDIF}

{$IFDEF MSWINDOWS}

  padY := 8;
  MainForm.infoLabel.Width := MainForm.ClientWidth;
  MainForm.infoLabel.Height := 20;
  MainForm.infoLabel.TextSettings.Font.Size := 20;
  MainForm.infoLabel.Position.Y := kbrdKeys[1,1].Position.Y - MainForm.infoLabel.Height - padY;
  MainForm.infoLabel.Position.X := 0;

{$ENDIF}

end;

procedure kbrdPosition;
begin

{$IFDEF ANDROID}
  padX := 8;
  padY := 8;

  for I := 34 to 38 do
    keys[i].Height := 32;
  keys[41].Height := 32;

  if VocNumber = 1 then begin

    kbrdWidth := round((Screen.Width - 4) / 12);
    kbrdHeight := round (kbrdWidth + kbrdWidth / 3);

    for j := 1 to 11 do begin
      kbrdKeys[3,j].Width := kbrdWidth;
      kbrdKeys[3,j].Height := kbrdHeight;
    end;
    for I := 1 to 2 do
      for j := 1 to 12 do begin
        kbrdKeys[i,j].Width := kbrdWidth;
        kbrdKeys[i,j].Height := kbrdHeight;
      end;
    kbrdKeys[2,12].Height := kbrdKeys[2,11].Height*2 + padY / 2;
    kbrdKeys[2,12].TextSettings.VertAlign := TTextAlign.Center;

    padX := (round(Screen.Width) - round(kbrdWidth)*12) div 2;
    padY := 8;

    for I := 1 to 11 do begin
      kbrdKeys[3,i].TextSettings.Font.Size := round(kbrdHeight / 2);
      kbrdKeys[3,i].Position.Y := screen.Height - 20 - kbrdHeight - padY / 2;
      if i = 1
        then kbrdKeys[3,i].Position.X := padX
        else kbrdKeys[3,i].Position.X := kbrdKeys[3,i-1].Position.X + kbrdWidth;
    end;
    for j := 1 to 12 do begin
      kbrdKeys[2,j].TextSettings.Font.Size := round(kbrdHeight / 2);
      kbrdKeys[2,j].Position.Y := kbrdKeys[3,1].Position.Y - kbrdHeight - padY / 2;
      if j = 1
        then kbrdKeys[2,j].Position.X := padX
        else kbrdKeys[2,j].Position.X := kbrdKeys[2,j-1].Position.X + kbrdWidth;
    end;
    for j := 1 to 12 do begin
      kbrdKeys[1,j].TextSettings.Font.Size := round(kbrdHeight / 2);
      kbrdKeys[1,j].Position.Y := kbrdKeys[2,1].Position.Y - kbrdHeight - padY / 2;
      if j = 1
        then kbrdKeys[1,j].Position.X := padX
        else kbrdKeys[1,j].Position.X := kbrdKeys[1,j-1].Position.X + kbrdWidth;
    end;
    kbrdKeys[2,12].TextSettings.Font.Size := kbrdHeight;
    Keys[39].TextSettings.Font.Size := round(kbrdHeight / 2) + 4;

    infoLabelProperties;
    boardSizeCalc;
    topButtonsProperties;
    topButtonsPositions;

  end;

  if (VocNumber = 2) or (VocNumber = 3) then begin

    kbrdWidth := round(((Screen.Width) - 13) / 10);
    kbrdHeight := round (kbrdWidth + kbrdWidth / 3);
    kbrdKeys[3,8] := keys[39];
    kbrdKeys[3,9] := keys[40];
    kbrdKeys[3,9].TextSettings.VertAlign := TTextAlign.Trailing;

    for I := 1 to 3 do
      for j := 1 to 9 do begin
        kbrdKeys[i,j].Width := kbrdWidth;
        kbrdKeys[i,j].Height := kbrdHeight;
      end;
    kbrdKeys[1,10].Width := kbrdWidth;
    kbrdKeys[1,10].Height := kbrdHeight;
    kbrdKeys[1,10].TextSettings.Font.Size := round(kbrdHeight / 2);

    padY := 8;
    padX := (round(Screen.Width) - round(kbrdWidth)*9) div 2;

    for j := 1 to 9 do begin                                                                              // 3-ий ряд
      kbrdKeys[3,j].TextSettings.Font.Size := round(kbrdHeight / 2);
      kbrdKeys[3,j].Position.Y := screen.Height - 20 - kbrdHeight - padY / 2;
      if j = 1
        then kbrdKeys[3,j].Position.X := padX
        else kbrdKeys[3,j].Position.X := kbrdKeys[3,j-1].Position.X + kbrdWidth;
    end;
    for j := 1 to 9 do begin                                                                              // 2-ой ряд
      kbrdKeys[2,j].TextSettings.Font.Size := round(kbrdHeight / 2);
      kbrdKeys[2,j].Position.Y := kbrdKeys[3,1].Position.Y - kbrdHeight - padY / 2;
      if j = 1
        then kbrdKeys[2,j].Position.X := padX
        else kbrdKeys[2,j].Position.X := kbrdKeys[2,j-1].Position.X + kbrdWidth;
    end;
    padX := (round(Screen.Width) - round(kbrdWidth)*10) div 2;                                                                                                    // отступы между клавишами
    for I := 1 to 10 do begin                                                                              // 1-ый ряд
      kbrdKeys[1,i].TextSettings.Font.Size := round(kbrdHeight / 2);
      kbrdKeys[1,i].Position.Y := kbrdKeys[2,1].Position.Y - kbrdHeight - padY / 2;
      if i = 1
        then kbrdKeys[1,i].Position.X := padX
        else kbrdKeys[1,i].Position.X := kbrdKeys[1,i-1].Position.X + kbrdWidth;
    end;

    kbrdKeys[3,9].TextSettings.Font.Size := kbrdHeight;
    Keys[39].TextSettings.Font.Size := round(kbrdHeight / 2) + 4;

    infoLabelProperties;
    boardSizeCalc;
    topButtonsProperties;
    topButtonsPositions;

  end;

  if VocNumber = 4 then begin

    kbrdWidth := round(((Screen.Width) - 13) / 10);
    kbrdHeight := round(kbrdWidth + kbrdWidth / 3);
    kbrdKeys[3,9] := keys[39];
    kbrdKeys[2,10] := keys[40];
    for I := 1 to 3 do
      for j := 1 to 9 do begin
        kbrdKeys[i,j].Width := kbrdWidth;
        kbrdKeys[i,j].Height := kbrdHeight;
      end;
    kbrdKeys[1,10].Width := kbrdWidth;
    kbrdKeys[1,10].Height := kbrdHeight;
    kbrdKeys[1,10].TextSettings.Font.Size := round(kbrdHeight / 2);
    kbrdKeys[2,10].Width := kbrdWidth;
    kbrdKeys[2,10].Height := kbrdKeys[2,9].Height*2 + padY / 2;
    kbrdKeys[2,10].TextSettings.VertAlign := TTextAlign.Center;

    padX := (round(Screen.Width) - round(kbrdWidth)*10) div 2;
    padY := 8;

    for j := 1 to 9 do begin                                                                              // 3-ий ряд
      kbrdKeys[3,j].TextSettings.Font.Size := round(kbrdHeight / 2);
      kbrdKeys[3,j].Position.Y := screen.Height - 20 - kbrdHeight - padY / 2;
      if j = 1
        then kbrdKeys[3,j].Position.X := padX
        else kbrdKeys[3,j].Position.X := kbrdKeys[3,j-1].Position.X + kbrdWidth;
    end;
    for j := 1 to 10 do begin                                                                              // 2-ой ряд
      kbrdKeys[2,j].TextSettings.Font.Size := round(kbrdHeight / 2);
      kbrdKeys[2,j].Position.Y := kbrdKeys[3,1].Position.Y - kbrdHeight - padY / 2;
      if j = 1
        then kbrdKeys[2,j].Position.X := padX
        else kbrdKeys[2,j].Position.X := kbrdKeys[2,j-1].Position.X + kbrdWidth;
    end;                                                                                                     // отступы между клавишами
    for I := 1 to 10 do begin                                                                              // 1-ый ряд
      kbrdKeys[1,i].TextSettings.Font.Size := round(kbrdHeight / 2);
      kbrdKeys[1,i].Position.Y := kbrdKeys[2,1].Position.Y - kbrdHeight - padY / 2;
      if i = 1
        then kbrdKeys[1,i].Position.X := padX
        else kbrdKeys[1,i].Position.X := kbrdKeys[1,i-1].Position.X + kbrdWidth;
    end;
    kbrdKeys[2,10].TextSettings.Font.Size := kbrdHeight;
    Keys[39].TextSettings.Font.Size := round(kbrdHeight / 2) + 4;

    infoLabelProperties;
    boardSizeCalc;
    topButtonsProperties;
    topButtonsPositions;

  end;
{$ENDIF}

{$IFDEF MSWINDOWS}
  if VocNumber = 1
    then begin
      padY := 4;
      padX := 4;
      kbrdWidth := 36;
      kbrdHeight := kbrdWidth;

      for I := 1 to 2 do
        for j := 1 to 12 do begin
          kbrdKeys[i,j].Width := kbrdWidth;
          kbrdKeys[i,j].Height := kbrdHeight;
          kbrdKeys[i,j].TextSettings.Font.Size := 18;
        end;
      kbrdKeys[2,12].Height := kbrdKeys[2,11].Height * 2 + padY;
      for j := 1 to 11 do begin
        kbrdKeys[3,j].Width := kbrdWidth;
        kbrdKeys[3,j].Height := kbrdHeight;
        kbrdKeys[3,j].TextSettings.Font.Size := 18;
      end;

      for j := 1 to 11 do begin
        kbrdKeys[3,j].Position.Y := MainForm.ClientHeight - kbrdHeight - padY;
        if j = 1
          then kbrdKeys[3,j].Position.X := padX
          else kbrdKeys[3,j].Position.X := kbrdKeys[3,j-1].Position.X + kbrdWidth + padX;
      end;
      for j := 1 to 12 do begin
        kbrdKeys[2,j].Position.Y := kbrdKeys[3,1].Position.Y - kbrdHeight - padY;
        if j = 1
          then kbrdKeys[2,j].Position.X := padX
          else kbrdKeys[2,j].Position.X := kbrdKeys[2,j-1].Position.X + kbrdWidth + padX;
      end;
      for I := 1 to 12 do begin
        kbrdKeys[1,i].Position.Y := kbrdKeys[2,1].Position.Y - kbrdHeight - padY;
        if i = 1
          then kbrdKeys[1,i].Position.X := padX
          else kbrdKeys[1,i].Position.X := kbrdKeys[1,i-1].Position.X + kbrdWidth + padX;
      end;

    end;

  if (VocNumber = 2) or (VocNumber = 3)
    then begin
      kbrdWidth := 40;
      kbrdHeight := kbrdWidth;
      kbrdKeys[3,8] := keys[39];
      kbrdKeys[3,9] := keys[40];
      kbrdKeys[3,9].TextSettings.VertAlign := TTextAlign.Center;
      for I := 1 to 3 do
        for j := 1 to 9 do begin
          kbrdKeys[i,j].Width := kbrdWidth;
          kbrdKeys[i,j].Height := kbrdHeight;
        end;
      kbrdKeys[1,10].Width := kbrdWidth;
      kbrdKeys[1,10].Height := kbrdHeight;

      padY := 4;
      padX := 6;

      for j := 1 to 9 do begin
        kbrdKeys[3,j].Position.Y := MainForm.ClientHeight - kbrdHeight - padY;
        if j = 1
          then kbrdKeys[3,j].Position.X := padX * 2.5 + kbrdWidth / 2
          else kbrdKeys[3,j].Position.X := kbrdKeys[3,j-1].Position.X + kbrdWidth + padX;
      end;
      for j := 1 to 9 do begin
        kbrdKeys[2,j].Position.Y := kbrdKeys[3,1].Position.Y - kbrdHeight - padY;
        if j = 1
          then kbrdKeys[2,j].Position.X := padX * 2.5 + kbrdWidth / 2
          else kbrdKeys[2,j].Position.X := kbrdKeys[2,j-1].Position.X + kbrdWidth + padX;
      end;
      for I := 1 to 10 do begin
        kbrdKeys[1,i].Position.Y := kbrdKeys[2,1].Position.Y - kbrdHeight - padY;
        if i = 1
          then kbrdKeys[1,i].Position.X := padX * 2.5
          else kbrdKeys[1,i].Position.X := kbrdKeys[1,i-1].Position.X + kbrdWidth + padX;
      end;

  end;

  if VocNumber = 4
    then begin
      padX := 4;
      padY := 6;
      kbrdWidth := 44;
      kbrdHeight := kbrdWidth;
      kbrdKeys[3,9] := keys[39];
      kbrdKeys[2,10] := keys[40];
      for I := 1 to 3 do
        for j := 1 to 9 do begin
          kbrdKeys[i,j].Width := kbrdWidth;
          kbrdKeys[i,j].Height := kbrdHeight;
        end;
      kbrdKeys[1,10].Width := kbrdWidth;
      kbrdKeys[1,10].Height := kbrdHeight;
      kbrdKeys[2,10].Width := kbrdWidth;
      kbrdKeys[2,10].Height := kbrdKeys[1,10].Height * 2 + padY;

      for j := 1 to 9 do begin
        kbrdKeys[3,j].Position.Y := MainForm.ClientHeight - kbrdHeight - padY;
        if j = 1
          then kbrdKeys[3,j].Position.X := padX
          else kbrdKeys[3,j].Position.X := kbrdKeys[3,j-1].Position.X + kbrdWidth + padX;
      end;
      for j := 1 to 10 do begin
        kbrdKeys[2,j].Position.Y := kbrdKeys[3,1].Position.Y - kbrdHeight - padY;
        if j = 1
          then kbrdKeys[2,j].Position.X := padX
          else kbrdKeys[2,j].Position.X := kbrdKeys[2,j-1].Position.X + kbrdWidth + padX;
      end;
      for I := 1 to 10 do begin
        kbrdKeys[1,i].Position.Y := kbrdKeys[2,1].Position.Y - kbrdHeight - padY;
        if i = 1
          then kbrdKeys[1,i].Position.X := padX
          else kbrdKeys[1,i].Position.X := kbrdKeys[1,i-1].Position.X + kbrdWidth + padX;
      end;
  end;
{$ENDIF}

{$IFDEF MACOS}
  if VocNumber = 1
    then begin
      kbrdWidth := 44;
      kbrdHeight := 30;
      for I := 1 to 2 do
        for j := 1 to 12 do begin
          kbrdKeys[i,j].Width := kbrdWidth;
          kbrdKeys[i,j].Height := kbrdHeight;
        end;
      for j := 1 to 11 do begin
        kbrdKeys[3,j].Width := kbrdWidth;
        kbrdKeys[3,j].Height := kbrdHeight;
      end;

      padX := 4;
      padY := 4;

      for I := 1 to 12 do begin
        kbrdKeys[1,i].Position.Y := board[6,5].Position.Y + board[6,5].Height + padY*2 + 20;
        if i = 1
          then kbrdKeys[1,i].Position.X := padX
          else kbrdKeys[1,i].Position.X := kbrdKeys[1,i-1].Position.X + kbrdWidth;
      end;
      for j := 1 to 12 do begin
        kbrdKeys[2,j].Position.Y := kbrdKeys[1,1].Position.Y + kbrdHeight + padY / 2;
        if j = 1
          then kbrdKeys[2,j].Position.X := padX
          else kbrdKeys[2,j].Position.X := kbrdKeys[2,j-1].Position.X + kbrdWidth;
      end;
      for j := 1 to 11 do begin
        kbrdKeys[3,j].Position.Y := kbrdKeys[2,1].Position.Y + kbrdHeight + padY / 2;
        if j = 1
          then kbrdKeys[3,j].Position.X := padX
          else kbrdKeys[3,j].Position.X := kbrdKeys[3,j-1].Position.X + kbrdWidth;
      end;

      kbrdKeys[2,12].Height := kbrdKeys[2,11].Height*2 + padY / 2;

    end;

  if (VocNumber = 2) or (VocNumber = 3)
    then begin
      kbrdWidth := 44;
      kbrdHeight := 30;
      kbrdKeys[3,8] := keys[39];
      kbrdKeys[3,9] := keys[40];
      for I := 1 to 3 do
        for j := 1 to 9 do begin
          kbrdKeys[i,j].Width := kbrdWidth;
          kbrdKeys[i,j].Height := kbrdHeight;
        end;
      kbrdKeys[1,10].Width := kbrdWidth;
      kbrdKeys[1,10].Height := kbrdHeight;

      padX := 4;
      padY := 4;
                                                                                                             // отступы между клавишами
      for I := 1 to 10 do begin                                                                              // 1-ый ряд
        kbrdKeys[1,i].Position.Y := board[6,5].Position.Y + board[6,5].Height + padY*2 + 20;
        if i = 1
          then kbrdKeys[1,i].Position.X := padX
          else kbrdKeys[1,i].Position.X := kbrdKeys[1,i-1].Position.X + kbrdWidth;
      end;
      for j := 1 to 9 do begin                                                                              // 2-ой ряд
        kbrdKeys[2,j].Position.Y := kbrdKeys[1,1].Position.Y + kbrdHeight + padY / 2;
        if j = 1
          then kbrdKeys[2,j].Position.X := padX
          else kbrdKeys[2,j].Position.X := kbrdKeys[2,j-1].Position.X + kbrdWidth;
      end;
      for j := 1 to 9 do begin                                                                              // 3-ий ряд
        kbrdKeys[3,j].Position.Y := kbrdKeys[2,1].Position.Y + kbrdHeight + padY / 2;
        if j = 1
          then kbrdKeys[3,j].Position.X := padX
          else kbrdKeys[3,j].Position.X := kbrdKeys[3,j-1].Position.X + kbrdWidth;
      end;

  end;

  if VocNumber = 4
    then begin
      kbrdWidth := 44;
      kbrdHeight := 30;
      kbrdKeys[3,9] := keys[39];
      kbrdKeys[2,10] := keys[40];
      for I := 1 to 3 do
        for j := 1 to 9 do begin
          kbrdKeys[i,j].Width := kbrdWidth;
          kbrdKeys[i,j].Height := kbrdHeight;
        end;
      kbrdKeys[1,10].Width := kbrdWidth;
      kbrdKeys[1,10].Height := kbrdHeight;
      kbrdKeys[2,10].Width := kbrdWidth;

      padX := 4;
      padY := 4;
                                                                                                             // отступы между клавишами
      for I := 1 to 10 do begin                                                                              // 1-ый ряд
        kbrdKeys[1,i].Position.Y := board[6,5].Position.Y + board[6,5].Height + padY*2 + 20;
        if i = 1
          then kbrdKeys[1,i].Position.X := padX
          else kbrdKeys[1,i].Position.X := kbrdKeys[1,i-1].Position.X + kbrdWidth;
      end;
      for j := 1 to 10 do begin                                                                              // 2-ой ряд
        kbrdKeys[2,j].Position.Y := kbrdKeys[1,1].Position.Y + kbrdHeight + padY / 2;
        if j = 1
          then kbrdKeys[2,j].Position.X := padX
          else kbrdKeys[2,j].Position.X := kbrdKeys[2,j-1].Position.X + kbrdWidth;
      end;
      kbrdKeys[2,10].Height := kbrdKeys[2,9].Height*2 + padY / 2;
      for j := 1 to 9 do begin                                                                              // 3-ий ряд
        kbrdKeys[3,j].Position.Y := kbrdKeys[2,1].Position.Y + kbrdHeight + padY / 2;
        if j = 1
          then kbrdKeys[3,j].Position.X := padX
          else kbrdKeys[3,j].Position.X := kbrdKeys[3,j-1].Position.X + kbrdWidth;
      end;
  end;
{$ENDIF}
end;

procedure topButtonsFlashing;
begin

{$IFDEF ANDROID}

{$ENDIF}
{$IFDEF MSWINDOWS}
{$ENDIF}
{$IFDEF MSWINDOWS}
  MainForm.FlashLightMeaning.Height := keys[36].Height + 4;
  MainForm.FlashLightMeaning.Width := keys[36].Width + 4;
  MainForm.FlashLightMeaning.Position.X := keys[36].Position.X - 2;
  MainForm.FlashLightMeaning.Position.Y := keys[36].Position.Y - 2;
{$ENDIF}

end;

procedure meaningsFill;
begin
{$IFDEF ANDROID}
  if VocNumber = 1 then begin
    AssignFile(input,GetMyFile(fileNameMean));
    reset(input);
    i:=0;
    while not eof(input) do begin
      inc(i);
      readln(input,meanings[i]);
    end;
  end;
  if VocNumber > 1 then begin
    var meanTemp := TFile.ReadAllLines(GetMyFile(fileNameMean), TEncoding.UTF8);
    setLength(meanings, length(meanTemp)+1);
    for i := 0 to length(meanTemp)-1 do
      meanings[i+1] := meanTemp[i];
  end;
{$ENDIF}

{$IFDEF MSWINDOWS}
  AssignFile(input,GetMyFile(fileNameMean));
  reset(input);
  i:=0;
  while not eof(input) do begin
    inc(i);
    readln(input,meanings[i]);
  end;
{$ENDIF}

{$IFDEF MACOS}
  if VocNumber = 1 then begin
    AssignFile(input,GetMyFile(fileNameMean));
    reset(input);
    numberOfTheword:=0;
    while not eof(input) do begin
      inc(numberOfTheword);
      readln(input,meanings[numberOfTheword]);
    end;
  end;
  if VocNumber > 1 then begin
    var meanTemp := TFile.ReadAllLines(GetMyFile(fileNameMean), TEncoding.UTF8);
    setLength(meanings, length(meanTemp)+1);
    for i := 0 to length(meanTemp)-1 do
      meanings[i+1] := meanTemp[i];
  end;

{$ENDIF}

{$IFDEF IOS}
  if VocNumber = 1 then begin
    AssignFile(input,GetMyFile(fileNameMean));
    reset(input);
    numberOfTheword:=0;
    while not eof(input) do begin
      inc(numberOfTheword);
      readln(input,meanings[numberOfTheword]);
    end;
  end;
  if VocNumber > 1 then begin
    var meanTemp := TFile.ReadAllLines(GetMyFile(fileNameMean), TEncoding.UTF8);
    setLength(meanings, length(meanTemp)+1);
    for i := 0 to length(meanTemp)-1 do
      meanings[i+1] := meanTemp[i];
  end;
{$ENDIF}
end;

procedure vocabFill;
begin
{$IFDEF ANDROID}
  if VocNumber = 1 then begin
    AssignFile(input,GetMyFile(fileNameWord));
    reset(input);
    i:=0;
    while not eof(input) do begin
      inc(i);
      readln(input,vocab[i]);
    end;
    if numberOfTheword = 0 then
      numberOfTheword := random(i) + 1;
  end;
  if VocNumber > 1 then begin
    var vocabTemp := TFile.ReadAllLines(GetMyFile(fileNameWord), TEncoding.UTF8);
    setLength(vocab, length(vocabTemp)+1);
    for i := 0 to length(vocabTemp)-1 do
      vocab[i+1] := vocabTemp[i];
    if numberOfTheword = 0 then
      numberOfTheword := random(length(vocab)) + 1;
  end;
{$ENDIF}

{$IFDEF MSWINDOWS}
//  AssignFile(input,GetMyFile(fileNameWord));
//  reset(input);
//  i:=0;
//  while not eof(input) do begin
//    inc(i);
//    readln(input,vocab[i]);
//  end;
//  if numberOfTheword = 0 then
//    numberOfTheword := random(i) + 1;

if VocNumber = 1 then begin
    AssignFile(input,GetMyFile(fileNameWord));
    reset(input);
    i:=0;
    while not eof(input) do begin
      inc(i);
      readln(input,vocab[i]);
    end;
    if numberOfTheword = 0 then
      numberOfTheword := random(i) + 1;
  end;
if VocNumber > 1 then begin
    var vocabTemp := TFile.ReadAllLines(GetMyFile(fileNameWord), TEncoding.UTF8);
    setLength(vocab, length(vocabTemp)+1);
    for i := 0 to length(vocabTemp)-1 do
      vocab[i+1] := vocabTemp[i];
    if numberOfTheword = 0 then
      numberOfTheword := random(length(vocab)) + 1;
  end;
{$ENDIF}

{$IFDEF MACOS}
  if VocNumber = 1 then begin
    AssignFile(input,GetMyFile(fileNameWord));
    reset(input);
    numberOfTheword:=0;
    while not eof(input) do begin
      inc(numberOfTheword);
      readln(input,vocab[numberOfTheword]);
    end;
    numberOfTheword := random(numberOfTheword) + 1;
  end;
  if VocNumber > 1 then begin
    var vocabTemp := TFile.ReadAllLines(GetMyFile(fileNameWord), TEncoding.UTF8);
    setLength(vocab, length(vocabTemp)+1);
    for i := 0 to length(vocabTemp)-1 do
      vocab[i+1] := vocabTemp[i];
    numberOfTheword := random(length(vocab)) + 1;
  end;
{$ENDIF}
  theWord := vocab[numberOfTheword];
end;

procedure IsWordFromVocabulary;
begin

  j:=0;
  wordExists:=false;
  while (j<size+1) and (wordExists=false) do begin
    if letters=vocab[j] then                                              ///////  2
      wordExists:=true;
    inc(j);
  end;

end;

procedure kbrdTextChange;
begin

  if VocNumber = 1 then begin

    keyValue[1]:=#1072;   keyValue[2]:=#1073;   keyValue[3]:=#1074;   keyValue[4]:=#1075;   keyValue[5]:=#1076;   keyValue[6]:=#1077;   keyValue[7]:=#1078;
    keyValue[8]:=#1079;   keyValue[9]:=#1080;   keyValue[10]:=#1081;  keyValue[11]:=#1082;  keyValue[12]:=#1083;  keyValue[13]:=#1084;  keyValue[14]:=#1085;
    keyValue[15]:=#1086;  keyValue[16]:=#1087;  keyValue[17]:=#1088;  keyValue[18]:=#1089;  keyValue[19]:=#1090;  keyValue[20]:=#1091;  keyValue[21]:=#1092;
    keyValue[22]:=#1093;  keyValue[23]:=#1094;  keyValue[24]:=#1095;  keyValue[25]:=#1096;  keyValue[26]:=#1097;  keyValue[27]:=#1098;  keyValue[28]:=#1099;
    keyValue[29]:=#1100;  keyValue[30]:=#1101;  keyValue[31]:=#1102;  keyValue[32]:=#1103;  keyValue[33]:=#1105;

    keys[1].Text:=#1072;   keys[2].Text:=#1073;   keys[3].Text:=#1074;   keys[4].Text:=#1075;   keys[5].Text:=#1076;   keys[6].Text:=#1077;   keys[7].Text:=#1078;
    keys[8].Text:=#1079;   keys[9].Text:=#1080;   keys[10].Text:=#1081;  keys[11].Text:=#1082;  keys[12].Text:=#1083;  keys[13].Text:=#1084;  keys[14].Text:=#1085;
    keys[15].Text:=#1086;  keys[16].Text:=#1087;  keys[17].Text:=#1088;  keys[18].Text:=#1089;  keys[19].Text:=#1090;  keys[20].Text:=#1091;  keys[21].Text:=#1092;
    keys[22].Text:=#1093;  keys[23].Text:=#1094;  keys[24].Text:=#1095;  keys[25].Text:=#1096;  keys[26].Text:=#1097;  keys[27].Text:=#1098;  keys[28].Text:=#1099;
    keys[29].Text:=#1100;  keys[30].Text:=#1101;  keys[31].Text:=#1102;  keys[32].Text:=#1103;  keys[33].Text:=#1105;

//    keys[1].Text:='а';   keys[2].Text:='б';   keys[3].Text:='в';   keys[4].Text:='г';   keys[5].Text:='д';   keys[6].Text:='е';   keys[7].Text:='ж';   keys[8].Text:='з';
//    keys[9].Text:='и';   keys[10].Text:='й';  keys[11].Text:='к';  keys[12].Text:='л';  keys[13].Text:='м';  keys[14].Text:='н';  keys[15].Text:='о';  keys[16].Text:='п';
//    keys[17].Text:='р';  keys[18].Text:='с';  keys[19].Text:='т';  keys[20].Text:='у';  keys[21].Text:='ф';  keys[22].Text:='х';  keys[23].Text:='ц';  keys[24].Text:='ч';
//    keys[25].Text:='ш';  keys[26].Text:='щ';  keys[27].Text:='ъ';  keys[28].Text:='ы';  keys[29].Text:='ь';  keys[30].Text:='э';  keys[31].Text:='ю';
//    keys[32].Text:='я';
//    keys[33].Text:='ё';

    for I := 27 to 33 do
      keys[i].Visible := true;

  end;

  if (VocNumber = 2) or (VocNumber = 3) then begin

    keyValue[1]:='a';   keyValue[2]:='b';   keyValue[3]:='c';   keyValue[4]:='d';   keyValue[5]:='e';   keyValue[6]:='f';   keyValue[7]:='g';   keyValue[8]:='h';
    keyValue[9]:='i';   keyValue[10]:='j';  keyValue[11]:='k';  keyValue[12]:='l';  keyValue[13]:='m';  keyValue[14]:='n';  keyValue[15]:='o';  keyValue[16]:='p';
    keyValue[17]:='q';  keyValue[18]:='r';  keyValue[19]:='s';  keyValue[20]:='t';  keyValue[21]:='u';  keyValue[22]:='v';  keyValue[23]:='w';  keyValue[24]:='x';
    keyValue[25]:='y';  keyValue[26]:='z';

    keys[1].Text:='a';   keys[2].Text:='b';   keys[3].Text:='c';   keys[4].Text:='d';   keys[5].Text:='e';   keys[6].Text:='f';   keys[7].Text:='g';   keys[8].Text:='h';
    keys[9].Text:='i';   keys[10].Text:='j';  keys[11].Text:='k';  keys[12].Text:='l';  keys[13].Text:='m';  keys[14].Text:='n';  keys[15].Text:='o';  keys[16].Text:='p';
    keys[17].Text:='q';  keys[18].Text:='r';  keys[19].Text:='s';  keys[20].Text:='t';  keys[21].Text:='u';  keys[22].Text:='v';  keys[23].Text:='w';  keys[24].Text:='x';
    keys[25].Text:='y';  keys[26].Text:='z';

    for I := 27 to 33 do
      keys[i].Visible := false;

  end;

  if VocNumber = 4 then begin

    keyValue[1]:='a';   keyValue[2]:='b';   keyValue[3]:='c';   keyValue[4]:='d';   keyValue[5]:='e';   keyValue[6]:='f';   keyValue[7]:='g';   keyValue[8]:='h';
    keyValue[9]:='i';   keyValue[10]:='j';  keyValue[11]:='k';  keyValue[12]:='l';  keyValue[13]:='m';  keyValue[14]:='n';  keyValue[15]:='o';  keyValue[16]:='p';
    keyValue[17]:='q';  keyValue[18]:='r';  keyValue[19]:='s';  keyValue[20]:='t';  keyValue[21]:='u';  keyValue[22]:='v';  keyValue[23]:='w';  keyValue[24]:='x';
    keyValue[25]:='y';  keyValue[26]:='z';  keyValue[27]:='ñ';

    keys[1].Text:='a';   keys[2].Text:='b';   keys[3].Text:='c';   keys[4].Text:='d';   keys[5].Text:='e';   keys[6].Text:='f';   keys[7].Text:='g';   keys[8].Text:='h';
    keys[9].Text:='i';   keys[10].Text:='j';  keys[11].Text:='k';  keys[12].Text:='l';  keys[13].Text:='m';  keys[14].Text:='n';  keys[15].Text:='o';  keys[16].Text:='p';
    keys[17].Text:='q';  keys[18].Text:='r';  keys[19].Text:='s';  keys[20].Text:='t';  keys[21].Text:='u';  keys[22].Text:='v';  keys[23].Text:='w';  keys[24].Text:='x';
    keys[25].Text:='y';  keys[26].Text:='z';  keys[27].Text:='ñ';

    // ñ - #1043
    keys[27].Visible := true;
    for I := 28 to 33 do
      keys[i].Visible := false;

  end;

end;

procedure BoardSuccessColoring;
begin
{$IFDEF ANDROID}
  for I := 1 to 5 do begin
    board[rovv,i].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
    board[rovv,i].TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
  end;
{$ENDIF}
{$IFDEF MSWINDOWS}
  for I := 1 to 5 do
    board[rovv,i].TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber];
{$ENDIF}
end;

procedure BoardFailColoring;
begin
{$IFDEF ANDROID}
  if words[6]<>'' then
    for I := 1 to 5 do begin
      board[6,i].TintColor := boardNKeyTextColorsRed[ColorsSetNumber];
      board[6,i].TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
    end;
{$ENDIF}
{$IFDEF MSWINDOWS}
  for I := 1 to 5 do
    board[rovv,i].TextSettings.FontColor := boardNKeyTextColorsRed[ColorsSetNumber];
{$ENDIF}
end;

procedure kbrdDisable;
begin
  for I := 1 to 33 do
    keys[i].Enabled:=false;
end;

procedure kbrdEnable;
begin
  for I := 1 to 33 do
    keys[i].Enabled:=true;
end;

procedure kbrdColoring;
begin
{$IFDEF ANDROID}
  if VocNumber = 1 then begin

    for j := 1 to 5 do
      for i := 1 to 32 do
        if (ord(words[rovv][j])=1071+i) then                                // 223 было
          if ask[rovv,j]=2
            then keys[i].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber]
            else if (ask[rovv,j]=1) and (keys[i].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) then
              keys[i].TintColor := boardNKeyTextColorsYellow[ColorsSetNumber]
                 else if (ask[rovv,j]=0) and (keys[i].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                                    and (keys[i].TintColor <> boardNKeyTextColorsYellow[ColorsSetNumber]) then
                   keys[i].TintColor := boardNKeyTextColorsGrey[ColorsSetNumber];
    for j := 1 to 5 do
      if (words[rovv][j] = #1105) then                                  //  (row[j] = 'ё')
        if ask[rovv,j]=2 then
          keys[33].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber]
            else if (ask[rovv,j]=1) and (keys[33].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) then
              keys[33].TintColor := boardNKeyTextColorsYellow[ColorsSetNumber]
                 else if (ask[rovv,j]=0) and (keys[33].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                                    and (keys[33].TintColor <> boardNKeyTextColorsYellow[ColorsSetNumber]) then
                   keys[33].TintColor := boardNKeyTextColorsGrey[ColorsSetNumber];

  end;

  if (VocNumber = 2) or (VocNumber = 3) then begin

    for j := 1 to 5 do
      for i := 1 to 33 do begin
        if (ord(words[rovv][j])=96+i) then begin
          if ask[rovv,j]=2
            then keys[i].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
          if (ask[rovv,j]=1) and (keys[i].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
            then keys[i].TintColor := boardNKeyTextColorsYellow[ColorsSetNumber];
          if (ask[rovv,j]=0) and (keys[i].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                             and (keys[i].TintColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
            then keys[i].TintColor := boardNKeyTextColorsGrey[ColorsSetNumber];
        end;
      end;

  end;

    if VocNumber = 4 then begin

    for j := 1 to 5 do
      for i := 1 to 33 do begin
        if (ord(words[rovv][j])=96+i) then begin
          if ask[rovv,j]=2
            then keys[i].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
          if (ask[rovv,j]=1) and (keys[i].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
            then keys[i].TintColor := boardNKeyTextColorsYellow[ColorsSetNumber];
          if (ask[rovv,j]=0) and (keys[i].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                             and (keys[i].TintColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
            then keys[i].TintColor := boardNKeyTextColorsGrey[ColorsSetNumber];
        end;
      end;
    for j := 1 to 5 do
      if (words[rovv][j] = 'ñ') then
        if ask[rovv,j]=2 then
          keys[27].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber]
            else if (ask[rovv,j]=1) and (keys[27].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) then
              keys[27].TintColor := boardNKeyTextColorsYellow[ColorsSetNumber]
                 else if (ask[rovv,j]=0) and (keys[27].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                                    and (keys[27].TintColor <> boardNKeyTextColorsYellow[ColorsSetNumber]) then
                   keys[27].TintColor := boardNKeyTextColorsGrey[ColorsSetNumber];
  end;
{$ENDIF}
{$IFDEF MSWINDOWS}
  if VocNumber = 1 then begin

    for j := 1 to 5 do
      for i := 1 to 32 do
        if (ord(words[rovv][j])=1071+i) then                                // 223 было
          if ask[rovv,j]=2
            then keys[i].TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber]
            else if (ask[rovv,j]=1) and (keys[i].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) then
              keys[i].TextSettings.FontColor := boardNKeyTextColorsYellow[ColorsSetNumber]
                 else if (ask[rovv,j]=0) and (keys[i].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                                    and (keys[i].TextSettings.FontColor <> boardNKeyTextColorsYellow[ColorsSetNumber]) then
                   keys[i].TextSettings.FontColor := boardNKeyTextColorsRed[ColorsSetNumber];
    for j := 1 to 5 do
      if (words[rovv][j] = #1105) then                                  //  (row[j] = 'ё')
        if ask[rovv,j]=2 then
          keys[33].TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber]
            else if (ask[rovv,j]=1) and (keys[33].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) then
              keys[33].TextSettings.FontColor := boardNKeyTextColorsYellow[ColorsSetNumber]
                 else if (ask[rovv,j]=0) and (keys[33].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                                    and (keys[33].TextSettings.FontColor <> boardNKeyTextColorsYellow[ColorsSetNumber]) then
                   keys[33].TextSettings.FontColor := boardNKeyTextColorsRed[ColorsSetNumber];

  end;

  if (VocNumber = 2) or (VocNumber = 3) then begin

    for j := 1 to 5 do
      for i := 1 to 33 do begin
        if (ord(words[rovv][j])=96+i) then begin
          if ask[rovv,j]=2
            then keys[i].TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber];
          if (ask[rovv,j]=1) and (keys[i].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
            then keys[i].TextSettings.FontColor := boardNKeyTextColorsYellow[ColorsSetNumber];
          if (ask[rovv,j]=0) and (keys[i].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                             and (keys[i].TextSettings.FontColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
            then keys[i].TextSettings.FontColor := boardNKeyTextColorsRed[ColorsSetNumber];
        end;
      end;

  end;

    if VocNumber = 4 then begin

    for j := 1 to 5 do
      for i := 1 to 33 do begin
        if (ord(words[rovv][j])=96+i) then begin
          if ask[rovv,j]=2
            then keys[i].TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber];
          if (ask[rovv,j]=1) and (keys[i].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
            then keys[i].TextSettings.FontColor := boardNKeyTextColorsYellow[ColorsSetNumber];
          if (ask[rovv,j]=0) and (keys[i].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                             and (keys[i].TextSettings.FontColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
            then keys[i].TextSettings.FontColor := boardNKeyTextColorsRed[ColorsSetNumber];
        end;
      end;
    for j := 1 to 5 do
      if (words[rovv][j] = 'ñ') then
        if ask[rovv,j]=2 then
          keys[27].TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber]
            else if (ask[rovv,j]=1) and (keys[27].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) then
              keys[27].TextSettings.FontColor := boardNKeyTextColorsYellow[ColorsSetNumber]
                 else if (ask[rovv,j]=0) and (keys[27].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                                    and (keys[27].TextSettings.FontColor <> boardNKeyTextColorsYellow[ColorsSetNumber]) then
                   keys[27].TextSettings.FontColor := boardNKeyTextColorsRed[ColorsSetNumber];
  end;
{$ENDIF}
end;

procedure BoardDefState;
begin
  for I := 1 to 6 do
    for j := 1 to 5 do
       board[i,j].Text:='';
end;

procedure BoardDefColor;
begin

  for I := 1 to 6 do
    for j := 1 to 5 do begin
      board[i,j].TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
      board[i,j].TintColor := boardNKeyColorsDef[ColorsSetNumber];
    end;

end;

procedure kbrdDefColor;
begin

  {$IF Defined(ANDROID)}
    for I := 1 to 40 do begin
      if i<34 then begin
        keys[i].TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
        keys[i].Tintcolor := boardNKeyColorsDef[ColorsSetNumber];
        kbrdAnimationArray[i].StopValue := boardNKeyTextColorsDef[ColorsSetNumber];
      end;
      if i>37 then begin
        keys[i].TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
        keys[i].Tintcolor := boardNKeyColorsDef[ColorsSetNumber];
      end;
    end;
    for I := 34 to 37 do
      keys[i].TintColor := $00ffffff;
    keys[41].TintColor := $00ffffff;

  {$ELSEIF Defined(MSWINDOWS)}
    for I := 1 to 33 do begin
      keys[i].TextSettings.FontColor := $FF000000;
    end;

  {$ENDIF}


end;

procedure kbrdColorsRefresh;
begin
{$IFDEF ANDROID}
  if VocNumber = 1 then begin
    for i := 1 to rovv do
      for j := 1 to 5 do
        if board[i,j].Text <> '' then
          if words[i] <> '' then
            if (ord(words[i][j]) > 1071) and (ord(words[i][j]) < 1104) then begin
              if board[i,j].TextSettings.FontColor = boardNKeyTextColorsGreen[ColorsSetNumber]
                then keys[ord(words[i][j]) - 1071].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsYellow[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 1071].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                then keys[ord(words[i][j]) - 1071].TintColor := boardNKeyTextColorsYellow[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsDef[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 1071].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 1071].TintColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
                then keys[ord(words[i][j]) - 1071].TintColor := boardNKeyTextColorsGrey[colorsSetNumber];
            end else begin
              if board[i,j].TextSettings.FontColor = boardNKeyTextColorsGreen[ColorsSetNumber]
                then keys[33].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsYellow[ColorsSetNumber]) and
                 (keys[33].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                then keys[33].TintColor := boardNKeyTextColorsYellow[ColorsSetNumber];                       // здеся ошибка, ниже   ord(words[i][j]) - 1071
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsDef[ColorsSetNumber]) and
                 (keys[33].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) and
                 (keys[33].TintColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
                then keys[33].TintColor := boardNKeyTextColorsGrey[colorsSetNumber];
              end;
    if wordGuessedRight
      then BoardSuccessColoring;
    if wordGuessedWrong
      then BoardFailColoring;
  end;

  if (VocNumber = 2) or (VocNumber = 3) then begin
    for i := 1 to rovv do
      for j := 1 to 5 do
        if board[i,j].Text <> '' then
          if words[i] <> '' then
            if (ord(words[i][j]) > 96) and (ord(words[i][j]) < 123) then begin
              if board[i,j].TextSettings.FontColor = boardNKeyTextColorsGreen[ColorsSetNumber]
                then keys[ord(words[i][j]) - 96].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsYellow[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 96].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                then keys[ord(words[i][j]) - 96].TintColor := boardNKeyTextColorsYellow[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsDef[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 96].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 96].TintColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
                then keys[ord(words[i][j]) - 96].TintColor := boardNKeyTextColorsGrey[colorsSetNumber]
            end;
    if wordGuessedRight
      then BoardSuccessColoring
      else if rovv=6 then BoardFailColoring;
  end;

  if VocNumber = 4 then begin
    for i := 1 to rovv do
      for j := 1 to 5 do
        if board[i,j].Text <> '' then
          if words[i] <> '' then
            if (ord(words[i][j]) > 96) and (ord(words[i][j]) < 123) then begin
              if board[i,j].TextSettings.FontColor = boardNKeyTextColorsGreen[ColorsSetNumber]
                then keys[ord(words[i][j]) - 96].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsYellow[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 96].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                then keys[ord(words[i][j]) - 96].TintColor := boardNKeyTextColorsYellow[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsDef[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 96].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 96].TintColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
                then keys[ord(words[i][j]) - 96].TintColor := boardNKeyTextColorsGrey[colorsSetNumber]
            end else begin
              if board[i,j].TextSettings.FontColor = boardNKeyTextColorsGreen[ColorsSetNumber]
                then keys[27].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsYellow[ColorsSetNumber]) and
                 (keys[27].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                then keys[27].TintColor := boardNKeyTextColorsYellow[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsDef[ColorsSetNumber]) and
                 (keys[27].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) and
                 (keys[27].TintColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
                then keys[27].TintColor := boardNKeyTextColorsGrey[colorsSetNumber];
              end;
    if wordGuessedRight
      then BoardSuccessColoring
      else if rovv=6 then BoardFailColoring;
  end;
{$ENDIF}
{$IFDEF MSWINDOWS}
  if VocNumber = 1 then begin
    for i := 1 to rovv do
      for j := 1 to 5 do
        if board[i,j].Text <> '' then
          if words[i] <> '' then
            if (ord(words[i][j]) > 1071) and (ord(words[i][j]) < 1104) then begin
              if board[i,j].TextSettings.FontColor = boardNKeyTextColorsGreen[ColorsSetNumber]
                then keys[ord(words[i][j]) - 1071].TextSettings.FontColor:= boardNKeyTextColorsGreen[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsYellow[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 1071].TextSettings.FontColor<> boardNKeyTextColorsGreen[ColorsSetNumber])
                then keys[ord(words[i][j]) - 1071].TextSettings.FontColor:= boardNKeyTextColorsYellow[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsDef[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 1071].TextSettings.FontColor<> boardNKeyTextColorsGreen[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 1071].TextSettings.FontColor<> boardNKeyTextColorsYellow[ColorsSetNumber])
                then keys[ord(words[i][j]) - 1071].TextSettings.FontColor:= boardNKeyTextColorsGrey[colorsSetNumber]
            end else begin
              if board[i,j].TextSettings.FontColor = boardNKeyTextColorsGreen[ColorsSetNumber]
                then keys[33].TextSettings.FontColor:= boardNKeyTextColorsGreen[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsYellow[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 1071].TextSettings.FontColor<> boardNKeyTextColorsGreen[ColorsSetNumber])
                then keys[33].TextSettings.FontColor:= boardNKeyTextColorsYellow[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsDef[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 1071].TextSettings.FontColor<> boardNKeyTextColorsGreen[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 1071].TextSettings.FontColor<> boardNKeyTextColorsYellow[ColorsSetNumber])
                then keys[33].TextSettings.FontColor:= boardNKeyTextColorsRed[colorsSetNumber];
              end;
    if wordGuessedRight
      then BoardSuccessColoring;
    if wordGuessedWrong
      then BoardFailColoring;
  end;


  if (VocNumber = 2) or (VocNumber = 3) then begin
    for i := 1 to rovv do
      for j := 1 to 5 do
        if board[i,j].Text <> '' then
          if words[i] <> '' then
            if (ord(words[i][j]) > 96) and (ord(words[i][j]) < 123) then begin
              if board[i,j].TextSettings.FontColor = boardNKeyTextColorsGreen[ColorsSetNumber]
                then keys[ord(words[i][j]) - 96].TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsYellow[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 96].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                then keys[ord(words[i][j]) - 96].TextSettings.FontColor := boardNKeyTextColorsYellow[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsDef[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 96].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 96].TextSettings.FontColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
                then keys[ord(words[i][j]) - 96].TextSettings.FontColor := boardNKeyTextColorsRed[colorsSetNumber]
            end;
    if wordGuessedRight
      then BoardSuccessColoring
      else if rovv=6 then BoardFailColoring;
  end;

  if VocNumber = 4 then begin
    for i := 1 to rovv do
      for j := 1 to 5 do
        if board[i,j].Text <> '' then
          if words[i] <> '' then
            if (ord(words[i][j]) > 96) and (ord(words[i][j]) < 123) then begin
              if board[i,j].TextSettings.FontColor = boardNKeyTextColorsGreen[ColorsSetNumber]
                then keys[ord(words[i][j]) - 96].TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsYellow[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 96].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                then keys[ord(words[i][j]) - 96].TextSettings.FontColor := boardNKeyTextColorsYellow[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsDef[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 96].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 96].TextSettings.FontColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
                then keys[ord(words[i][j]) - 96].TextSettings.FontColor := boardNKeyTextColorsGrey[colorsSetNumber]
            end else begin
              if board[i,j].TextSettings.FontColor = boardNKeyTextColorsGreen[ColorsSetNumber]
                then keys[27].TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsYellow[ColorsSetNumber]) and
                 (keys[27].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                then keys[27].TextSettings.FontColor := boardNKeyTextColorsYellow[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsDef[ColorsSetNumber]) and
                 (keys[27].TextSettings.FontColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) and
                 (keys[27].TextSettings.FontColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
                then keys[27].TextSettings.FontColor := boardNKeyTextColorsRed[colorsSetNumber];
              end;
    if wordGuessedRight
      then BoardSuccessColoring
      else if rovv=6 then BoardFailColoring;
  end;
{$ENDIF}
end;

procedure rowLettersDelete;
begin
  for I := 1 to 5 do
    letters[i]:=#0;
end;

procedure matches (word1,word2: string);
begin
    for i:=1 to 5 do                                // full match
    if (word1[i]=word2[i]) then begin
      ask[rovv,i]:=2;
      ques[rovv,i]:=2;
    end;
    i:=1;
    while i<6 do begin                              // match in the word
     j:=1;
     while (j<6) and (ques[rovv,i]=0) do begin
       if (word1[i]=word2[j]) and (ques[rovv,i]=0) and (ask[rovv,j]=0) then begin
         ask[rovv,j]:=1;
         ques[rovv,i]:=1;
        end;
        j:=j+1;
      end;
      i:=i+1
    end;

end;

procedure BoardNkbrdColoring (number: integer);
begin
  words[number]:=letters;
  rowLettersDelete;
  matches(vocab[numberOfTheword],words[number]);

  boardAnimationFontColorSet(number);
  for I := 1 to 5 do
    fontAnimation[number,i].start;

  {$IFDEF MSWINDOWS OR MACOS}
    kbrdAnimationFontColorStart;
  {$ENDIF}
  {$IFDEF ANDROID}
    kbrdAnimationTintColorStart;
  {$ENDIF}
//  kbrdColoring;
end;

procedure boardColorsRefresh;
begin

  for j := 1 to 6 do
    for I := 1 to 5 do begin
      if ask[j,i]=2 then board[j,i].TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber];
      if ask[j,i]=1 then board[j,i].TextSettings.FontColor := boardNKeyTextColorsYellow[ColorsSetNumber];
    end;

end;

procedure kbrdClick;
begin

  keyNumber:=1;
  while kbrdBtnPress[keyNumber]=false do
    inc(keyNumber);
  if col<5
    then begin
      inc(col);
      if (words[rovv]='') and (board[rovv,col].Text='')
        then begin
          board[rovv,col].Text:=keyValue[keyNumber];
          letters[col]:=keyValue[keyNumber];
        end
    end;
  kbrdBtnPress[keyNumber]:=false;
  if col = 5
    then keys[40].Enabled := true
    else keys[40].Enabled := false;

end;

procedure endRoundBtns;
begin

  keys[39].Enabled:=false;
  keys[40].Enabled:=false;
  keys[36].Enabled:=true;
  keys[38].Enabled:=true;
  keys[41].Enabled := true;
  startButtonCondition := false;

end;

procedure vocabularyChange;
begin
  case VocNumber of
  1: begin
    setlength (vocab,sizeRUS+1);
    setlength (meanings,sizeRUS+1);
    size := sizeRUS;
    fileNameWord := 'Rus5Word.ngm';
    fileNameMean := 'Rus5Mean.ngm';
  end;
  2: begin
       setlength (vocab,sizeENG+1);
       setlength (meanings,sizeENG+1);
       size := sizeENG;
       fileNameWord := 'Eng5Word.ngm';
       fileNameMean := 'Eng5Mean.ngm';
  end;
  3: begin setlength (vocab,sizeLAT+1); setlength (meanings,sizeLAT+1); size := sizeLAT; end;
  4: begin
       setlength (vocab,sizeESP+1);
       setlength (meanings,sizeESP+1);
       size := sizeESP;
       fileNameWord := 'Esp5Word.ngm';
       fileNameMean := 'Esp5Mean.ngm';
  end;
  end;

end;

procedure TMainForm.deleteBtnClick(Sender: TObject);
begin

  if col>0 then begin
    board[rovv,col].Text:='';
    InfoLabel.Text:='';
    letters[col]:=#0;
    dec(col);
    enter.Enabled := false;
  end;

end;

procedure ThemeRefresh;
begin
  MainForm.Fill.Color := bckgrndColor[ColorsSetNumber];
  MainForm.infoLabel.TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
  BoardDefColor;
  kbrdDefColor;
  boardColorsRefresh;
  kbrdColorsRefresh;
{$IF Defined(ANDROID)}
  TAndroidHelper.Activity.getWindow.setStatusBarColor(barsColors[ColorsSetNumber]);
  TAndroidHelper.Activity.getWindow.setNavigationBarColor(barsColors[ColorsSetNumber]);
{$ENDIF}
end;

procedure LanguageKbrdRefresh;
begin
  vocabularyChange;
  kbrdArrays;
  kbrdTextChange;
  kbrdPosition;
  MainForm.InfoLabel.TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
  MainForm.InfoLabel.Text := '';
{$IFDEF MSWINDOWS}
  infoLabelProperties;
  boardSizeCalc;
  topButtonsProperties;
  topButtonsPositions;
  topButtonsFlashing;
{$ENDIF}
{$IFDEF ANDROID}
  MainForm.BrainDissapearance.Enabled := false;
{$ENDIF}
  BoardDefColor;
  BoardDefState;
  kbrdDefColor;
  MainForm.StartAnimation.Enabled := true;
  keys[36].Enabled := false;
  statsReadAll;
end;

procedure FormRefresh;
begin
  MainForm.meaning.Enabled:=false;
  vocabularyChange;
  kbrdEnable;
  kbrdArrays;
  kbrdPosition;
  kbrdTextChange;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WriteSettingsIniFile;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin

  keys[1]:=а;   keys[2]:=б;   keys[3]:=в;   keys[4]:=г;   keys[5]:=д;   keys[6]:=е;   keys[7]:=ж;   keys[8]:=з;
  keys[9]:=и;   keys[10]:=й;  keys[11]:=к;  keys[12]:=л;  keys[13]:=м;  keys[14]:=н;  keys[15]:=о;  keys[16]:=п;
  keys[17]:=р;  keys[18]:=с;  keys[19]:=т;  keys[20]:=у;  keys[21]:=ф;  keys[22]:=х;  keys[23]:=ц;  keys[24]:=ч;
  keys[25]:=ш;  keys[26]:=щ;  keys[27]:=ъ;  keys[28]:=ы;  keys[29]:=ь;  keys[30]:=э;  keys[31]:=ю;  keys[32]:=я;
  keys[33]:=ё;  keys[39]:=deleteBtn;        keys[40]:=Enter;
  keys[34]:=ThemeButton;      keys[35]:=stats;            keys[36]:=meaning;          keys[37]:=info;
  keys[38]:=start;            keys[41]:=Lang;

  board[1,1]:=R11;  board[1,2]:=R12; board[1,3]:=R13; board[1,4]:=R14; board[1,5]:=R15;
  board[2,1]:=R21;  board[2,2]:=R22; board[2,3]:=R23; board[2,4]:=R24; board[2,5]:=R25;
  board[3,1]:=R31;  board[3,2]:=R32; board[3,3]:=R33; board[3,4]:=R34; board[3,5]:=R35;
  board[4,1]:=R41;  board[4,2]:=R42; board[4,3]:=R43; board[4,4]:=R44; board[4,5]:=R45;
  board[5,1]:=R51;  board[5,2]:=R52; board[5,3]:=R53; board[5,4]:=R54; board[5,5]:=R55;
  board[6,1]:=R61;  board[6,2]:=R62; board[6,3]:=R63; board[6,4]:=R64; board[6,5]:=R65;

  fontAnimation[1,1]:=fontAnimationR11;  fontAnimation[1,2]:=fontAnimationR12; fontAnimation[1,3]:=fontAnimationR13; fontAnimation[1,4]:=fontAnimationR14; fontAnimation[1,5]:=fontAnimationR15;
  fontAnimation[2,1]:=fontAnimationR21;  fontAnimation[2,2]:=fontAnimationR22; fontAnimation[2,3]:=fontAnimationR23; fontAnimation[2,4]:=fontAnimationR24; fontAnimation[2,5]:=fontAnimationR25;
  fontAnimation[3,1]:=fontAnimationR31;  fontAnimation[3,2]:=fontAnimationR32; fontAnimation[3,3]:=fontAnimationR33; fontAnimation[3,4]:=fontAnimationR34; fontAnimation[3,5]:=fontAnimationR35;
  fontAnimation[4,1]:=fontAnimationR41;  fontAnimation[4,2]:=fontAnimationR42; fontAnimation[4,3]:=fontAnimationR43; fontAnimation[4,4]:=fontAnimationR44; fontAnimation[4,5]:=fontAnimationR45;
  fontAnimation[5,1]:=fontAnimationR51;  fontAnimation[5,2]:=fontAnimationR52; fontAnimation[5,3]:=fontAnimationR53; fontAnimation[5,4]:=fontAnimationR54; fontAnimation[5,5]:=fontAnimationR55;
  fontAnimation[6,1]:=fontAnimationR61;  fontAnimation[6,2]:=fontAnimationR62; fontAnimation[6,3]:=fontAnimationR63; fontAnimation[6,4]:=fontAnimationR64; fontAnimation[6,5]:=fontAnimationR65;

  boardAnimationArrayAppearMove[1,1]:=AppearMoveR11;  boardAnimationArrayAppearMove[1,2]:=AppearMoveR12; boardAnimationArrayAppearMove[1,3]:=AppearMoveR13; boardAnimationArrayAppearMove[1,4]:=AppearMoveR14; boardAnimationArrayAppearMove[1,5]:=AppearMoveR15;
  boardAnimationArrayAppearMove[2,1]:=AppearMoveR21;  boardAnimationArrayAppearMove[2,2]:=AppearMoveR22; boardAnimationArrayAppearMove[2,3]:=AppearMoveR23; boardAnimationArrayAppearMove[2,4]:=AppearMoveR24; boardAnimationArrayAppearMove[2,5]:=AppearMoveR25;
  boardAnimationArrayAppearMove[3,1]:=AppearMoveR31;  boardAnimationArrayAppearMove[3,2]:=AppearMoveR32; boardAnimationArrayAppearMove[3,3]:=AppearMoveR33; boardAnimationArrayAppearMove[3,4]:=AppearMoveR34; boardAnimationArrayAppearMove[3,5]:=AppearMoveR35;
  boardAnimationArrayAppearMove[4,1]:=AppearMoveR41;  boardAnimationArrayAppearMove[4,2]:=AppearMoveR42; boardAnimationArrayAppearMove[4,3]:=AppearMoveR43; boardAnimationArrayAppearMove[4,4]:=AppearMoveR44; boardAnimationArrayAppearMove[4,5]:=AppearMoveR45;
  boardAnimationArrayAppearMove[5,1]:=AppearMoveR51;  boardAnimationArrayAppearMove[5,2]:=AppearMoveR52; boardAnimationArrayAppearMove[5,3]:=AppearMoveR53; boardAnimationArrayAppearMove[5,4]:=AppearMoveR54; boardAnimationArrayAppearMove[5,5]:=AppearMoveR55;
  boardAnimationArrayAppearMove[6,1]:=AppearMoveR61;  boardAnimationArrayAppearMove[6,2]:=AppearMoveR62; boardAnimationArrayAppearMove[6,3]:=AppearMoveR63; boardAnimationArrayAppearMove[6,4]:=AppearMoveR64; boardAnimationArrayAppearMove[6,5]:=AppearMoveR65;

  boardAnimationArrayAppearPos[1,1]:=AppearPosR11;  boardAnimationArrayAppearPos[1,2]:=AppearPosR12; boardAnimationArrayAppearPos[1,3]:=AppearPosR13; boardAnimationArrayAppearPos[1,4]:=AppearPosR14; boardAnimationArrayAppearPos[1,5]:=AppearPosR15;
  boardAnimationArrayAppearPos[2,1]:=AppearPosR21;  boardAnimationArrayAppearPos[2,2]:=AppearPosR22; boardAnimationArrayAppearPos[2,3]:=AppearPosR23; boardAnimationArrayAppearPos[2,4]:=AppearPosR24; boardAnimationArrayAppearPos[2,5]:=AppearPosR25;
  boardAnimationArrayAppearPos[3,1]:=AppearPosR31;  boardAnimationArrayAppearPos[3,2]:=AppearPosR32; boardAnimationArrayAppearPos[3,3]:=AppearPosR33; boardAnimationArrayAppearPos[3,4]:=AppearPosR34; boardAnimationArrayAppearPos[3,5]:=AppearPosR35;
  boardAnimationArrayAppearPos[4,1]:=AppearPosR41;  boardAnimationArrayAppearPos[4,2]:=AppearPosR42; boardAnimationArrayAppearPos[4,3]:=AppearPosR43; boardAnimationArrayAppearPos[4,4]:=AppearPosR44; boardAnimationArrayAppearPos[4,5]:=AppearPosR45;
  boardAnimationArrayAppearPos[5,1]:=AppearPosR51;  boardAnimationArrayAppearPos[5,2]:=AppearPosR52; boardAnimationArrayAppearPos[5,3]:=AppearPosR53; boardAnimationArrayAppearPos[5,4]:=AppearPosR54; boardAnimationArrayAppearPos[5,5]:=AppearPosR55;
  boardAnimationArrayAppearPos[6,1]:=AppearPosR61;  boardAnimationArrayAppearPos[6,2]:=AppearPosR62; boardAnimationArrayAppearPos[6,3]:=AppearPosR63; boardAnimationArrayAppearPos[6,4]:=AppearPosR64; boardAnimationArrayAppearPos[6,5]:=AppearPosR65;

  boardAnimationArrayFadeMove[1,1]:=FadeMoveR11;  boardAnimationArrayFadeMove[1,2]:=FadeMoveR12; boardAnimationArrayFadeMove[1,3]:=FadeMoveR13; boardAnimationArrayFadeMove[1,4]:=FadeMoveR14; boardAnimationArrayFadeMove[1,5]:=FadeMoveR15;
  boardAnimationArrayFadeMove[2,1]:=FadeMoveR21;  boardAnimationArrayFadeMove[2,2]:=FadeMoveR22; boardAnimationArrayFadeMove[2,3]:=FadeMoveR23; boardAnimationArrayFadeMove[2,4]:=FadeMoveR24; boardAnimationArrayFadeMove[2,5]:=FadeMoveR25;
  boardAnimationArrayFadeMove[3,1]:=FadeMoveR31;  boardAnimationArrayFadeMove[3,2]:=FadeMoveR32; boardAnimationArrayFadeMove[3,3]:=FadeMoveR33; boardAnimationArrayFadeMove[3,4]:=FadeMoveR34; boardAnimationArrayFadeMove[3,5]:=FadeMoveR35;
  boardAnimationArrayFadeMove[4,1]:=FadeMoveR41;  boardAnimationArrayFadeMove[4,2]:=FadeMoveR42; boardAnimationArrayFadeMove[4,3]:=FadeMoveR43; boardAnimationArrayFadeMove[4,4]:=FadeMoveR44; boardAnimationArrayFadeMove[4,5]:=FadeMoveR45;
  boardAnimationArrayFadeMove[5,1]:=FadeMoveR51;  boardAnimationArrayFadeMove[5,2]:=FadeMoveR52; boardAnimationArrayFadeMove[5,3]:=FadeMoveR53; boardAnimationArrayFadeMove[5,4]:=FadeMoveR54; boardAnimationArrayFadeMove[5,5]:=FadeMoveR55;
  boardAnimationArrayFadeMove[6,1]:=FadeMoveR61;  boardAnimationArrayFadeMove[6,2]:=FadeMoveR62; boardAnimationArrayFadeMove[6,3]:=FadeMoveR63; boardAnimationArrayFadeMove[6,4]:=FadeMoveR64; boardAnimationArrayFadeMove[6,5]:=FadeMoveR65;

  boardAnimationArrayFadePos[1,1]:=FadePosR11;  boardAnimationArrayFadePos[1,2]:=FadePosR12; boardAnimationArrayFadePos[1,3]:=FadePosR13; boardAnimationArrayFadePos[1,4]:=FadePosR14; boardAnimationArrayFadePos[1,5]:=FadePosR15;
  boardAnimationArrayFadePos[2,1]:=FadePosR21;  boardAnimationArrayFadePos[2,2]:=FadePosR22; boardAnimationArrayFadePos[2,3]:=FadePosR23; boardAnimationArrayFadePos[2,4]:=FadePosR24; boardAnimationArrayFadePos[2,5]:=FadePosR25;
  boardAnimationArrayFadePos[3,1]:=FadePosR31;  boardAnimationArrayFadePos[3,2]:=FadePosR32; boardAnimationArrayFadePos[3,3]:=FadePosR33; boardAnimationArrayFadePos[3,4]:=FadePosR34; boardAnimationArrayFadePos[3,5]:=FadePosR35;
  boardAnimationArrayFadePos[4,1]:=FadePosR41;  boardAnimationArrayFadePos[4,2]:=FadePosR42; boardAnimationArrayFadePos[4,3]:=FadePosR43; boardAnimationArrayFadePos[4,4]:=FadePosR44; boardAnimationArrayFadePos[4,5]:=FadePosR45;
  boardAnimationArrayFadePos[5,1]:=FadePosR51;  boardAnimationArrayFadePos[5,2]:=FadePosR52; boardAnimationArrayFadePos[5,3]:=FadePosR53; boardAnimationArrayFadePos[5,4]:=FadePosR54; boardAnimationArrayFadePos[5,5]:=FadePosR55;
  boardAnimationArrayFadePos[6,1]:=FadePosR61;  boardAnimationArrayFadePos[6,2]:=FadePosR62; boardAnimationArrayFadePos[6,3]:=FadePosR63; boardAnimationArrayFadePos[6,4]:=FadePosR64; boardAnimationArrayFadePos[6,5]:=FadePosR65;

  kbrdAnimationArray[1]:=kbrdAnimation1;   kbrdAnimationArray[2]:=kbrdAnimation2;   kbrdAnimationArray[3]:=kbrdAnimation3;   kbrdAnimationArray[4]:=kbrdAnimation4;   kbrdAnimationArray[5]:=kbrdAnimation5;
  kbrdAnimationArray[6]:=kbrdAnimation6;   kbrdAnimationArray[7]:=kbrdAnimation7;   kbrdAnimationArray[8]:=kbrdAnimation8;   kbrdAnimationArray[9]:=kbrdAnimation9;   kbrdAnimationArray[10]:=kbrdAnimation10;
  kbrdAnimationArray[11]:=kbrdAnimation11;  kbrdAnimationArray[12]:=kbrdAnimation12;  kbrdAnimationArray[13]:=kbrdAnimation13;  kbrdAnimationArray[14]:=kbrdAnimation14;  kbrdAnimationArray[15]:=kbrdAnimation15;
  kbrdAnimationArray[16]:=kbrdAnimation16;  kbrdAnimationArray[17]:=kbrdAnimation17;  kbrdAnimationArray[18]:=kbrdAnimation18;  kbrdAnimationArray[19]:=kbrdAnimation19;  kbrdAnimationArray[20]:=kbrdAnimation20;
  kbrdAnimationArray[21]:=kbrdAnimation21;  kbrdAnimationArray[22]:=kbrdAnimation22;  kbrdAnimationArray[23]:=kbrdAnimation23;  kbrdAnimationArray[24]:=kbrdAnimation24;  kbrdAnimationArray[25]:=kbrdAnimation25;
  kbrdAnimationArray[26]:=kbrdAnimation26;  kbrdAnimationArray[27]:=kbrdAnimation27;  kbrdAnimationArray[28]:=kbrdAnimation28;  kbrdAnimationArray[29]:=kbrdAnimation29;  kbrdAnimationArray[30]:=kbrdAnimation30;
  kbrdAnimationArray[31]:=kbrdAnimation31;  kbrdAnimationArray[32]:=kbrdAnimation32;  kbrdAnimationArray[33]:=kbrdAnimation33;

  ReadSettingsIniFile;
  statsReadAll;
                              // recovering previous session
  if wordNotGuessed then begin
    BoardDefColor;
    kbrdDefColor;
    for i := 1 to wordQuantity do begin
      for j := 1 to 5 do
        board[i,j].Text := boardWords[i][j];
      words[i] := boardWords[i];
    end;
    for i := 1 to wordQuantity do
      for j := 1 to 5 do
        ask[i,j] := StrToInt(copy(askTemp[i], j , 1));
    rovv := wordQuantity + 1;
    keys[38].Enabled := false;
    keys[41].Enabled := false;
    startButtonCondition := true;
    FormRefresh;
    kbrdEnable;
    vocabFill;
    meaningsFill;
    boardColorsRefresh;
    kbrdColorsRefresh;
    meaningOfTheWord:=meanings[numberOfTheword];
    InfoLabel.TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
    InfoLabel.Text := textPrevious[VocNumber];
  end;
                              ///////////////////////////////
  if not wordNotGuessed then begin
    if VocNumber = 0 then InfoAnimation.Enabled := true;       // infoAnimation on first run
    if VocNumber = 0 then LangAnimation.Enabled := true;       // infoAnimation on first run
    if VocNumber = 0 then VocNumber := 2;
    if ColorsSetNumber = 0 then ColorsSetNumber := 2;
    Fill.Color := bckgrndColor[ColorsSetNumber];               // bckgrnd color
    FormRefresh;
    BoardDefColor;
    kbrdDefColor;
    kbrdDisable;
    StartAnimation.Enabled := true;
    InfoLabel.TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
    InfoLabel.Text := textGreetings[VocNumber];
  end;

  {$IFDEF MSWINDOWS}
    infoLabelProperties;
    boardSizeCalc;
    topButtonsProperties;
    topButtonsPositions;
    topButtonsFlashing;
  {$ENDIF}

  {$IF Defined(ANDROID)}
  TAndroidHelper.Activity.getWindow.setStatusBarColor(barsColors[ColorsSetNumber]);
  TAndroidHelper.Activity.getWindow.setNavigationBarColor(barsColors[ColorsSetNumber]);
  {$ENDIF}
end;

procedure TMainForm.FormSaveState(Sender: TObject);
begin
  WriteSettingsIniFile;
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
  Fill.Color := bckgrndColor[ColorsSetNumber];

            // Данный параметр нужен для тестирования. Выводит нужное сообщение в инфо строку.
//  InfoLabel.Text := intToStr(numberOfTheword) + ' - ' + TheWord;
            //

  if themeChanged
    then ThemeRefresh;
  if languageChanged
    then LanguageKbrdRefresh;
end;

procedure TMainForm.йClick(Sender: TObject);
begin

  kbrdBtnPress[10]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;

end;

procedure TMainForm.цClick(Sender: TObject);
begin
  kbrdBtnPress[23]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.уClick(Sender: TObject);
begin
  kbrdBtnPress[20]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.кClick(Sender: TObject);
begin
  kbrdBtnPress[11]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.нClick(Sender: TObject);
begin
  kbrdBtnPress[14]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.гClick(Sender: TObject);
begin
  kbrdBtnPress[4]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.шClick(Sender: TObject);
begin
  kbrdBtnPress[25]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.щClick(Sender: TObject);
begin
  kbrdBtnPress[26]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.зClick(Sender: TObject);
begin
 kbrdBtnPress[8]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.фClick(Sender: TObject);
begin
  kbrdBtnPress[21]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.ыClick(Sender: TObject);
begin
  kbrdBtnPress[28]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.вClick(Sender: TObject);
begin
  kbrdBtnPress[3]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.аClick(Sender: TObject);
begin
  kbrdBtnPress[1]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.пClick(Sender: TObject);
begin
  kbrdBtnPress[16]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.рClick(Sender: TObject);
begin
  kbrdBtnPress[17]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.оClick(Sender: TObject);
begin
  kbrdBtnPress[15]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.лClick(Sender: TObject);
begin
  kbrdBtnPress[12]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.дClick(Sender: TObject);
begin
kbrdBtnPress[5]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.еClick(Sender: TObject);
begin
  kbrdBtnPress[6]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.яClick(Sender: TObject);
begin
  kbrdBtnPress[32]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.чClick(Sender: TObject);
begin
  kbrdBtnPress[24]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.сClick(Sender: TObject);
begin
  kbrdBtnPress[18]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.мClick(Sender: TObject);
begin
  kbrdBtnPress[13]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.иClick(Sender: TObject);
begin
  kbrdBtnPress[9]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.тClick(Sender: TObject);
begin
  kbrdBtnPress[19]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.ьClick(Sender: TObject);
begin
  kbrdBtnPress[29]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.бClick(Sender: TObject);
begin
  kbrdBtnPress[2]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.юClick(Sender: TObject);
begin
  kbrdBtnPress[31]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.жClick(Sender: TObject);
begin
  kbrdBtnPress[7]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.ёClick(Sender: TObject);
begin
  kbrdBtnPress[33]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.хClick(Sender: TObject);
begin
  kbrdBtnPress[22]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.эClick(Sender: TObject);
begin
  kbrdBtnPress[30]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.ъClick(Sender: TObject);
begin
  kbrdBtnPress[27]:=true;
  kbrdClick;
  deleteBtn.Enabled:=true;
end;

procedure TMainForm.meaningClick(Sender: TObject);
begin
  BrainDissapearance.Enabled := false;
  meaningForm1.Show;
end;

procedure TMainForm.statsClick(Sender: TObject);
begin
  statsReadAll;
  statsForm.Show;
end;

procedure TMainForm.langClick(Sender: TObject);
begin
  LangAnimation.Enabled := false;
  languageForm.Show;
end;

procedure TMainForm.infoClick(Sender: TObject);
begin
  InfoAnimation.Enabled := false;
  informationForm.Show;
end;

procedure TMainForm.themeButtonClick(Sender: TObject);
begin
  setForm.Show;
end;

procedure TMainForm.enterClick(Sender: TObject);
begin

  if (letters[5]<>#0) and (col>0) then begin                                 //////    1
    InfoLabel.Text:='';
    IsWordFromVocabulary;
    enter.Enabled := false;
    if wordExists then begin
      if words[rovv]='' then begin
        boardAnimationSet(rovv);
        boardAnimationFadeStart(rovv);
        BoardNkbrdColoring(rovv);
        boardAnimationAppearStart(rovv);
        if words[rovv]=vocab[numberOfTheword] then begin
          boardAnimationSet(rovv);
          InfoLabel.TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber];
          InfoLabel.Text:=textCongrats[VocNumber];
          wordGuessedRight := true;
          wordNotGuessed := false;
          kbrdDisable;
          endRoundBtns;
          statsReadAll;
          statsFileWriteWon;
          boardAnimationFadeStart(rovv);
          boardAnimationTintColorSet(rovv);
          for i := 1 to 5 do begin
            fontAnimation[rovv,i].Start;
          end;
          boardAnimationAppearStart(rovv);
          {$IFDEF ANDROID}
            BrainDissapearance.Enabled := true;
          {$ENDIF}
          {$IFDEF MSWINDOWS}
            BrainDissapearance.Enabled := true;
          {$ENDIF}
        end else if rovv=6 then begin
          boardAnimationSet(rovv);
          InfoLabel.TextSettings.FontColor := boardNKeyTextColorsRed[ColorsSetNumber];       // розовый
          InfoLabel.Text:=textFails[VocNumber]+vocab[numberOfTheword];
          wordGuessedWrong := true;
          wordNotGuessed := false;
          kbrdDisable;
          endRoundBtns;
          statsReadAll;
          statsFileWriteLost;
          boardAnimationFadeStart(rovv);
          boardAnimationTintColorSet(rovv);
          for i := 1 to 5 do begin
            fontAnimation[rovv,i].Start;
          end;
          boardAnimationAppearStart(rovv);
          BrainDissapearance.Enabled := true;
        end;

        if (rovv<6) and not wordGuessedRight then begin
          inc(rovv);
        end;
        col:=0;
      end
    end else begin
      InfoLabel.TextSettings.FontColor := boardNKeyTextColorsRed[ColorsSetNumber];           // розовый
      InfoLabel.Text:=textTries[VocNumber];
      enter.Enabled := true;
    end;
  end;
 end;

procedure TMainForm.startClick(Sender: TObject);
begin

  keys[41].Enabled := false;
  startButtonCondition := true;
  wordGuessedRight := false;
  wordGuessedWrong := false;
  wordNotGuessed := true;
  numberOfTheword := 0;
  rovv:=1;
  col:=0;
  start.Enabled:=false;
  meaning.Enabled:=false;
  BrainDissapearance.Enabled := false;
  StartAnimation.Enabled := false;
  kbrdEnable;
  BoardDefState;
  BoardDefColor;
  kbrdDefColor;
  vocabFill;
  meaningsFill;
  languageChanged := false;

          // Данный параметр нужен для тестирования. Задаёт определённое по счёту слово.
//  numberOfTheword := 11;                               // акция - abbey - abaco - 2 слово
          //

  InfoLabel.TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
  InfoLabel.Text := textStarts[VocNumber];

          // Данный параметр нужен для тестирования. Выводит нужное сообщение в инфо строку.
//  InfoLabel.Text := vocab[Length(vocab) - 1];
          //

  meaningOfTheWord:=meanings[numberOfTheword];
  otvet:='';
  for j := 1 to 6 do
    for i:=1 to 5 do begin
      ask[j,i]:=0;
      ques[j,i]:=0;
      board[j,i].Text := '';
    end;

  rowLettersDelete;
  for I := 1 to 6 do
    words[i]:='';
end;

end.
