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
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const                                                                   // 1         // 2        // 3         //4          //5        //6        //7
  colorsMax = 7;                                                        // azul     // day     // violet   // Barbie   // Console // latinum // greek
    bckgrndColor: array              [1..colorsMax] of TAlphaColor = ( $FF003049 , $FFfdfdfd , $FF725ac1 , $FFFDECF4 , $FF000080, $FFFDF0D5, $FFffffff );
    boardNKeyColorsDef: array        [1..colorsMax] of TAlphaColor = ( $FF669BBC , $FFd2d2d2 , $FFf7ece1 , $FFff67b1 , $FFC0C0C0, $FFAB172B, $FF1C85F6 );
    boardNKeyTextColorsDef: array    [1..colorsMax] of TAlphaColor = ( $FFFDF0D5 , $FF000000 , $FFfdfffc , $FFff037d , $FFDB00FF, $FF000000, $FF865746 );
    boardNKeyTextColorsYellow: array [1..colorsMax] of TAlphaColor = ( $FFffea00 , $FFffc000 , $FFffff3f , $FFf0f405 , $FFFFFF00, $FF00C8FA, $FFffee32 );
    boardNKeyTextColorsGreen: array  [1..colorsMax] of TAlphaColor = ( $FF5bf36d , $FF40916c , $FF80ed99 , $FF73C4FE , $FF00FF33, $FF7B2CBF, $FF02c39a );
    boardNKeyTextColorsGrey: array   [1..colorsMax] of TAlphaColor = ( $FF6c757d , $FF495057 , $FFd6a9db , $FFcbcbcb , $FFFFFFFF, $FF6C757D, $FFd6d6d6 );
    boardNKeyTextColorsRed: array    [1..colorsMax] of TAlphaColor = ( $FFFFB3C6 , $FFba181b , $FFff5d73 , $FFa9a2a6 , $FF000000, $FFDC1934, $FFDFBA89 );
    barsColors:             array    [1..colorsMax] of TAlphaColor = ( $FF669BBC , $FF495057 , $FF725ac1 , $FFff037d , $FF000080, $FFAB172B, $FF1C85F6 );
  sizeRUS = 4844;
  sizeENG = 3193;
  sizeESP = 3595;
  sizeLAT = 3;
  sizeFRA = 2;
  vocabSize: array [1..5] of integer = (sizeRUS, sizeENG, sizeLAT, sizeESP, sizeFRA);

var
  MainForm: TMainForm;
  wins, games, winStreak, lastGameWon, currentWinStreak, lastStreak, ColorsSetNumber: integer;         // statistics transfering to statistics form
  winsL, gamesL, winStreakL, currentWinStreakL, lastGameWonL, lastStreakL, lastLangGame: integer;
  meaningOfTheWord, otvet: String;                      // meaning transfering to meaningForm
  VocNumber: byte;
  startButtonCondition, languageChanged: boolean;
const

      statFileNames: array [0..4] of string = ('stats.txt', 'statsRus.txt', 'statsEng.txt', 'statsLat.txt', 'statsEsp.txt');
      textCongratsRus='Ура! Ура! Молоденчик!'; textCongratsEng='Great job!'; textCongratsLat=''; textCongratsEsp='¡Que trabajo tan excelente!'; textCongratsFra='';
      textFailRus='Вы не угадали слово '; textFailEng='The word was '; textFailLat=''; textFailEsp='La palabra correcta - '; textFailFra='';
      textAnotherTryRus='Попробуйте другое слово'; textAnotherTryEng='Try another word'; textAnotherTryLat=''; textAnotherTryEsp='Pruebe otra palabra, por favor'; textAnotherTryFra='';
      textStartRus='Я сказала: "Стартуем!"'; textStartEng='Let`s start the game!'; textStartLat=''; textStartEsp='¡Empezamos el juego!'; textStartFra='';
      textGreetingsRus='Приветули'; textGreetingsEng='Greetings'; textGreetingsLat=''; textGreetingsEsp='¡Hola!'; textGreetingsFra='';

      textCongrats: array [1..5] of String = (textCongratsRus, textCongratsEng, textCongratsLat, textCongratsEsp, textCongratsFra);
      textFails: array [1..5] of String = (textFailRus, textFailEng, textFailLat, textFailEsp, textFailFra);
      textTries: array [1..5] of String = (textAnotherTryRus, textAnotherTryEng, textAnotherTryLat, textAnotherTryEsp, textAnotherTryFra);
      textStarts: array [1..5] of String = (textStartRus, textStartEng, textStartLat, textStartEsp, textStartFra);
      textGreetings: array [1..5] of String = (textGreetingsRus, textGreetingsEng, textGreetingsLat, textGreetingsEsp, textGreetingsFra);

var StreakTemp1, StreakTemp2: integer;
    input, stat, statL: text;                              // input - read from vocabulary, stat - read from statistics file
    i, j, k, l, numberOfTheword, keyNumber, size: integer;  // разные счетчики wins - победы, games - все игры
    vocab, meanings: array of String;         // массив всего словаря и массив значений
    words: array [1..6] of string;              // массив со всеми ответами
    wordExists, wordGuessedRight, wordGuessedWrong: boolean;
    ask: array [1..6,1..5] of integer;
    ques: array [1..6,1..5] of integer;
    keys: array [1..42] of TButton;
    keyValue: array [1..33] of char;                 // массив кнопок клавиатуры
    board: array [1..6,1..5] of TButton;             // массив табло с буквами 5х6
    letters: array [1..5] of char;
    kbrdBtnPress: array [1..33] of boolean;
    col, rovv: byte;
    fileNameWord, fileNameMean: string;
    kbrdKeys: array [1..3,1..12] of TButton;
    padY, padX, colorTemp, vocabTemp : integer;
    kbrdWidth, kbrdHeight: integer;
    boardHeight, boardWidth, boardDivVar: integer;
    ini: TIniFile;
implementation

uses statistics, meaningForm, themeForm, languageForm, infoForm;

{$R *.fmx}
{$R *.iPhone4in.fmx IOS}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}

function GetMyFile(const AssetName : string) : string;
begin
{$IFDEF ANDROID}
Result := TPath.Combine(TPath.GetDocumentsPath, AssetName);
{$ENDIF}

{$IFDEF MSWINDOWS}
Result := TPath.Combine(TPath.GetLibraryPath, AssetName);
{$ENDIF}

{$IFDEF IOS}
Result := TPath.Combine(TPath.GetAppPath, AssetName);
{$ENDIF}

{$IFDEF MACOS}
Result := TPath.Combine(TPath.GetAppPath, AssetName);
{$ENDIF}
end;

procedure readIniFile;
begin


    ini := TIniFile.Create(TPath.GetDocumentsPath + PathDelim + 'config.ini');
    try
      VocNumber := ini.ReadInteger('INFO','VocNumber',vocabTemp);
      ColorsSetNumber := ini.ReadInteger('INFO','ColorsSetNumber',colorTemp);
    finally
      ini.Free;
    end;

end;

procedure writeIniFile;
begin


    ini := TIniFile.Create(TPath.GetDocumentsPath + PathDelim + 'config.ini');
    try
      ini.WriteInteger('INFO','VocNumber',vocabTemp);
      ini.WriteInteger('INFO','ColorsSetNumber',colorTemp);
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

procedure keyboardArrays;
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

procedure keyboardPosition;
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
    kbrdKeys[3,9].TextSettings.Font.Size := kbrdHeight * 2;

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

{$IFDEF MSWINDOWS}
  AssignFile(input,GetMyFile(fileNameMean));
  reset(input);
  numberOfTheword:=0;
  while not eof(input) do begin
    inc(numberOfTheword);
    readln(input,meanings[numberOfTheword]);
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

{$IFDEF MSWINDOWS}
  AssignFile(input,GetMyFile(fileNameWord));
  reset(input);
  numberOfTheword:=0;
  while not eof(input) do begin
    inc(numberOfTheword);
    readln(input,vocab[numberOfTheword]);
  end;
  numberOfTheword := random(numberOfTheword) + 1;
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

procedure TMainForm.FormCreate(Sender: TObject);
begin

  readIniFile;
  if VocNumber = 0 then InfoAnimation.Enabled := true;       // infoAnimation on first run
  if VocNumber = 0 then LangAnimation.Enabled := true;       // infoAnimation on first run
  if VocNumber = 0 then VocNumber := 2;
  if ColorsSetNumber = 0 then ColorsSetNumber := 6;

  Fill.Color := bckgrndColor[ColorsSetNumber];               // bckgrnd color

  keys[1]:=а;   keys[2]:=б;   keys[3]:=в;   keys[4]:=г;   keys[5]:=д;   keys[6]:=е;   keys[7]:=ж;   keys[8]:=з;
  keys[9]:=и;   keys[10]:=й;  keys[11]:=к;  keys[12]:=л;  keys[13]:=м;  keys[14]:=н;  keys[15]:=о;  keys[16]:=п;
  keys[17]:=р;  keys[18]:=с;  keys[19]:=т;  keys[20]:=у;  keys[21]:=ф;  keys[22]:=х;  keys[23]:=ц;  keys[24]:=ч;
  keys[25]:=ш;  keys[26]:=щ;  keys[27]:=ъ;  keys[28]:=ы;  keys[29]:=ь;  keys[30]:=э;  keys[31]:=ю;  keys[32]:=я;
  keys[33]:=ё;  keys[34]:=ThemeButton;      keys[35]:=stats;            keys[36]:=meaning;          keys[38]:=start;
  keys[37]:=info;  keys[39]:=deleteBtn;  keys[40]:=Enter;  keys[41]:=Lang;

  board[1,1]:=R11;  board[1,2]:=R12; board[1,3]:=R13; board[1,4]:=R14; board[1,5]:=R15;
  board[2,1]:=R21;  board[2,2]:=R22; board[2,3]:=R23; board[2,4]:=R24; board[2,5]:=R25;
  board[3,1]:=R31;  board[3,2]:=R32; board[3,3]:=R33; board[3,4]:=R34; board[3,5]:=R35;
  board[4,1]:=R41;  board[4,2]:=R42; board[4,3]:=R43; board[4,4]:=R44; board[4,5]:=R45;
  board[5,1]:=R51;  board[5,2]:=R52; board[5,3]:=R53; board[5,4]:=R54; board[5,5]:=R55;
  board[6,1]:=R61;  board[6,2]:=R62; board[6,3]:=R63; board[6,4]:=R64; board[6,5]:=R65;

  vocabularyChange;
  keyboardArrays;
  kbrdTextChange;
  statsReadAll;

  {$IF Defined(ANDROID)}
  keyboardPosition;
  {$ENDIF}

  {$IFDEF MSWINDOWS}
  keyboardPosition;
  infoLabelProperties;
  boardSizeCalc;
  topButtonsProperties;
  topButtonsPositions;

  topButtonsFlashing;
  {$ENDIF}

  meaning.Enabled:=false;
  InfoLabel.TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
  InfoLabel.Text := textGreetings[VocNumber];
  FormActivate(Self);

  {$IF Defined(ANDROID)}
  TAndroidHelper.Activity.getWindow.setStatusBarColor(barsColors[ColorsSetNumber]);
  TAndroidHelper.Activity.getWindow.setNavigationBarColor(barsColors[ColorsSetNumber]);
  {$ENDIF}

end;

procedure TMainForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  FormActivate(Sender);
end;

procedure BoardSuccessColoring;
begin
  for I := 1 to 5 do begin
    board[rovv,i].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
    board[rovv,i].TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
  end;
end;

procedure BoardFailColoring;
begin
  for I := 1 to 5 do begin
    board[rovv,i].TintColor := boardNKeyTextColorsRed[ColorsSetNumber];
    board[rovv,i].TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
  end;
end;

procedure keyboardDisable;
begin
  for I := 1 to 33 do
    keys[i].Enabled:=false;
end;

procedure keyboardEnable;
begin
  for I := 1 to 33 do
    keys[i].Enabled:=true;
end;

procedure keyboardColoring;
begin

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

procedure KeyboardDefColor;
begin

  {$IF Defined(ANDROID)}
    for I := 1 to 40 do begin
      if (i<34) or (i>37) then begin
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
      keys[i].Tintcolor := $FFc1121f;
    end;

  {$ENDIF}


end;

procedure keyboardColorsRefresh;
begin

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
                then keys[ord(words[i][j]) - 1071].TintColor := boardNKeyTextColorsGrey[colorsSetNumber]
            end else begin
              if board[i,j].TextSettings.FontColor = boardNKeyTextColorsGreen[ColorsSetNumber]
                then keys[33].TintColor := boardNKeyTextColorsGreen[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsYellow[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 1071].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber])
                then keys[33].TintColor := boardNKeyTextColorsYellow[ColorsSetNumber];
              if (board[i,j].TextSettings.FontColor = boardNKeyTextColorsDef[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 1071].TintColor <> boardNKeyTextColorsGreen[ColorsSetNumber]) and
                 (keys[ord(words[i][j]) - 1071].TintColor <> boardNKeyTextColorsYellow[ColorsSetNumber])
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

procedure BoardNKeyboardColoring (number: integer);
begin

  words[number]:=letters;
  rowLettersDelete;
  matches(vocab[numberOfTheword],words[number]);
  for I := 1 to 5 do begin
    if ask[number,i]=2 then board[number,i].TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber];              //green
    if ask[number,i]=1 then board[number,i].TextSettings.FontColor := boardNKeyTextColorsYellow[ColorsSetNumber];              //yellow bright
  end;
  keyboardColoring;
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
       fileNameWord := 'Rus5Word.txt';
       fileNameMean := 'Rus5Mean.txt';
  end;
  2: begin
       setlength (vocab,sizeENG+1);
       setlength (meanings,sizeENG+1);
       size := sizeENG;
       fileNameWord := 'Eng5Word.txt';
       fileNameMean := 'Eng5Mean.txt';
  end;
  3: begin setlength (vocab,sizeLAT+1); setlength (meanings,sizeLAT+1); size := sizeLAT; end;
  4: begin
       setlength (vocab,sizeESP+1);
       setlength (meanings,sizeESP+1);
       size := sizeESP;
       fileNameWord := 'Esp5Word.txt';
       fileNameMean := 'Esp5Mean.txt';
  end;
  end;
  BoardDefColor;
  KeyboardDefColor;

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

procedure TMainForm.FormActivate(Sender: TObject);
begin
  colorTemp := ColorsSetNumber;
  vocabTemp := VocNumber;
  writeIniFile;

  Fill.Color := bckgrndColor[ColorsSetNumber];
  infoLabel.TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
  infoLabel.Text := '';
  if (keys[38].Enabled) and (board [1,1].Text = '') then
    infoLabel.Text:=textGreetings[VocNumber];
  vocabularyChange;
  keyboardArrays;
  keyboardPosition;
  kbrdTextChange;

  {$IFDEF ANDROID}
  keyboardPosition;
  {$ENDIF}

  {$IFDEF MSWINDOWS}
  keyboardPosition;
  infoLabelProperties;
  boardSizeCalc;
  topButtonsProperties;
  topButtonsPositions;
  {$ENDIF}

  statsReadAll;

  BoardDefColor;
  KeyboardDefColor;
  boardColorsRefresh;
  if wordGuessedRight
    then BoardSuccessColoring;
  if wordGuessedWrong
    then BoardFailColoring;
  if not wordGuessedRight and not wordGuessedWrong
    then keyboardColorsRefresh;
  MainForm.Active := true;
  {$IF Defined(ANDROID)}
  TAndroidHelper.Activity.getWindow.setStatusBarColor(barsColors[ColorsSetNumber]);
  TAndroidHelper.Activity.getWindow.setNavigationBarColor(barsColors[ColorsSetNumber]);
  {$ENDIF}
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
  language.show;
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
        BoardNKeyboardColoring(rovv);
        if words[rovv]=vocab[numberOfTheword] then begin
          InfoLabel.TextSettings.FontColor := boardNKeyTextColorsGreen[ColorsSetNumber];
          InfoLabel.Text:=textCongrats[VocNumber];
          wordGuessedRight := true;
          keyboardDisable;
          endRoundBtns;
          statsReadAll;
          statsFileWriteWon;
          BoardSuccessColoring;
          {$IFDEF ANDROID}
            BrainDissapearance.Enabled := true;
          {$ENDIF}
          {$IFDEF MSWINDOWS}
            BrainDissapearance.Enabled := true;
          {$ENDIF}
        end else if rovv=6 then begin
          InfoLabel.TextSettings.FontColor := boardNKeyTextColorsRed[ColorsSetNumber];       // розовый
          InfoLabel.Text:=textFails[VocNumber]+vocab[numberOfTheword];
          wordGuessedWrong := true;
          keyboardDisable;
          endRoundBtns;
          statsReadAll;
          statsFileWriteLost;
          BoardFailColoring
        end;

        if (rovv<6) and not wordGuessedRight then
          inc(rovv);
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
  rovv:=1;
  col:=0;
  start.Enabled:=false;
  meaning.Enabled:=false;
  keyboardEnable;
  meaningsFill;
  BoardDefState;
  BoardDefColor;
  KeyboardDefColor;
  vocabFill;

          // Данный параметр нужен для тестирования. Задаёт определённое по счёту слово.
  numberOfTheword := 2;                               // акция - abbey - abaco - 2 слово
          //

  InfoLabel.TextSettings.FontColor := boardNKeyTextColorsDef[ColorsSetNumber];
  InfoLabel.Text := textStarts[VocNumber];

          // Данный параметр нужен для тестирования. Выводит нужное сообщение в инфо строку.
//  InfoLabel.Text := inttostr ( boardHeight ) + ' ' + inttostr ( round (board[1,1].Height ));
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
