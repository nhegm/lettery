﻿unit infoForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Ani;

type
  TinformationForm = class(TForm)
    b1: TButton;
    title: TLabel;
    contactInfo: TLabel;
    vocabInfo: TLabel;
    btn3descr: TLabel;
    btn2descr: TLabel;
    text1: TLabel;
    b3: TButton;
    b2: TButton;
    btn1descr: TLabel;
    FillColorAnimation: TColorAnimation;
    FontColorAnimation1: TColorAnimation;
    FontColorAnimation2: TColorAnimation;
    FontColorAnimation3: TColorAnimation;
    FontColorAnimation4: TColorAnimation;
    FontColorAnimation5: TColorAnimation;
    FontColorAnimation6: TColorAnimation;
    FontColorAnimation7: TColorAnimation;
    btnTintAnimation1: TColorAnimation;
    btnTextAnimation1: TColorAnimation;
    btnTintAnimation2: TColorAnimation;
    btnTextAnimation2: TColorAnimation;
    btnTintAnimation3: TColorAnimation;
    btnTextAnimation3: TColorAnimation;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  informationForm: TinformationForm;

implementation

uses HeaderFooterTemplate, GuessWhat;

const
  titleRus = 'Справка';
  titleEng = 'Information';
  titleLat = 'Notitia';
  titleEsp = 'Información';
  titleFra = 'Information';
  arrayTitle: array [1..5] of String = (titleRus, titleEng, titleLat, titleEsp, titleFra);

  text1Rus = 'В этой игре вам нужно угадать слово из 5 букв. Для этого у вас будет 6 попыток.';
  text1Eng = 'In this game you need to guess a word within 5 letters. You have 6 tries to do it.';
  text1Lat = 'Some text';
  text1Esp = 'En este juego debe adivinar una palabra de 5 letras. Tiene 6 intentos para hacerlo.';
  text1Fra = 'Bonjour';
  arrayText1: array [1..5] of String = (text1Rus, text1Eng, text1Lat, text1Esp, text1Fra);

  greenArray: array [1..5] of String = ('в', 'o', 'r', 'v', 'f');
  yellowArray: array [1..5] of String = ('и', 'y', 'h', 'a', 'é');
  defArray: array [1..5] of String = ('т', 'g', 'i', 'ñ', 'd');

  btn1descrRus = 'Вы точно угадали положение буквы в слове.';
  btn1descrEng = 'You have guessed the position of the letter right.';
  btn1descrLat = 'Lorem Ipsum';
  btn1descrEsp = 'Has adivinado bien la posición de la letra.';
  btn1descrFra = 'Bonjour';
  arrayBtn1descr: array [1..5] of String = (btn1descrRus, btn1descrEng, btn1descrLat, btn1descrEsp, btn1descrFra);

  btn2descrRus = 'Эта буква находится в другом месте.';
  btn2descrEng = 'The letter should be in other place.';
  btn2descrLat = 'Lorem Ipsum';
  btn2descrEsp = 'Esta letra debería estar en otro lugar.';
  btn2descrFra = 'Bonjour';
  arrayBtn2descr: array [1..5] of String = (btn2descrRus, btn2descrEng, btn2descrLat, btn2descrEsp, btn2descrFra);

  btn3descrRus = 'Такой буквы нет в слове.';
  btn3descrEng = 'This letter is not in the word.';
  btn3descrLat = 'Lorem Ipsum';
  btn3descrEsp = 'Esta letra no está en la palabra.';
  btn3descrFra = 'Bonjour';
  arrayBtn3descr: array [1..5] of String = (btn3descrRus, btn3descrEng, btn3descrLat, btn3descrEsp, btn3descrFra);

  vocabInfoRus = 'За основу были взяты классические словари русских слов Ожегова, Даля и Ушакова. Количество слов в словаре: ';
  vocabInfoEng = 'The game uses Oxford English Dictionary. Number of the words: ';
  vocabInfoLat = 'Lorem Ipsum';
  vocabInfoEsp = 'El juego utiliza el Diccionario Real Academia Española. Numero de palabras: ';
  vocabInfoFra = 'Bonjour';
  arrayVocabInfo: array [1..5] of String = (vocabInfoRus, vocabInfoEng, vocabInfoLat, vocabInfoEsp, vocabInfoFra);

  contactInfoRus = 'Если у вас есть какие-либо пожелания, можете связаться со мной: nhegmus@gmail.com';
  contactInfoEng = 'If you have any suggestions feel free to contact me: nhegmus@gmail.com';
  contactInfoLat = 'Lorem Ipsum';
  contactInfoEsp = 'Si tiene alguna sugerencia no dude en contactarme: nhegmus@gmail.com';
  contactInfoFra = 'Bonjour';
  arraycontactInfo: array [1..5] of String = (contactInfoRus, contactInfoEng, contactInfoLat, contactInfoEsp, contactInfoFra);

var
  buttons: array [1..3] of TButton;                  // array for 3 examples of boards
  btnDescriptions: array [1..3] of TLabel;           // array for 3 descriptions for these boards
  i, padX, padY: integer;
  fontColorAnimation: array [1..7] of TColorAnimation;
  btnTextAnimation: array [1..3] of TColorAnimation;
  btnTintAnimation: array [1..3] of TColorAnimation;

{$R *.fmx}

procedure FormColorAnimation;
begin
  informationForm.FillColorAnimation.Duration := 0.8;
  informationForm.FillColorAnimation.Delay := 0;
  informationForm.FillColorAnimation.Interpolation := TInterpolationType.linear;
  informationForm.FillColorAnimation.PropertyName := 'Fill.Color';
  informationForm.FillColorAnimation.StartValue := bckgrndColor[ColorsSetNumber];
  informationForm.FillColorAnimation.StopValue := bckgrndColor[ColorsSetNumber];
end;

procedure elementsShow;
begin
  ////////////////////////////// Form settings //////////////////////////////
  informationForm.width:= round (Screen.Width / 1.5);
  informationForm.Left := round(Screen.Width-informationForm.Width) div 2;

  padX := 20;
  padY := 10;
  ////////////////////////////// title settings //////////////////////////////
  informationForm.title.Text := arrayTitle[VocNumber];
  informationForm.title.Font.Size := 14;
  informationForm.title.Width := informationForm.Width - 40;
  informationForm.text1.Position.X := padX;
  informationForm.title.Position.Y := padY;
  ////////////////////////////// First phrase settings //////////////////////////////
  informationForm.text1.Text := arrayText1[VocNumber];
  informationForm.text1.Font.Size := 14;
  informationForm.text1.Width := informationForm.Width - 40;
  informationForm.text1.Position.X := padX;
  informationForm.text1.Position.Y := informationForm.title.Position.Y + informationForm.title.Height + padY;
  //////////////////////////// Button examples settings //////////////////////////////
  for i := 1 to 3 do begin
    buttons[i].Tintcolor := boardNKeyColorsDef[ColorsSetNumber];
    buttons[i].Width := 60;
    buttons[i].Height := 60;
    buttons[i].Position.X := 20;
    if i = 1 then
      buttons[i].Position.Y := informationForm.text1.Position.Y + informationForm.text1.Height + padY;
  end;
  for i := 2 to 3 do
    buttons[i].Position.Y := buttons[i-1].Position.Y + buttons[i-1].Height + padY;
  buttons[1].Text := greenArray[VocNumber];
  buttons[2].Text := yellowArray[VocNumber];
  buttons[3].Text := defArray[VocNumber];
  ////////////////////////////// Buttons description settings //////////////////////////////
  for I := 1 to 3 do begin
    btnDescriptions[i].Font.Size := 14;
    btnDescriptions[i].Width := informationForm.text1.Width - buttons[i].Width - padX;
    btnDescriptions[i].Position.X := buttons[i].Position.X + buttons[i].Width + padX;
  end;
  btnDescriptions[1].Text := arrayBtn1descr[VocNumber];
  btnDescriptions[2].Text := arrayBtn2descr[VocNumber];
  btnDescriptions[3].Text := arrayBtn3descr[VocNumber];
  for I := 1 to 3 do
    if btnDescriptions[i].Height < buttons[i].Height
      then btnDescriptions[i].Position.Y := buttons[i].Position.Y + (buttons[i].Height - btnDescriptions[i].Height)/2
      else btnDescriptions[i].Position.Y := buttons[i].Position.Y;
  ////////////////////////////// Vocab info text settings //////////////////////////////
  informationForm.vocabInfo.Text := arrayVocabInfo[VocNumber] + intToStr(vocabSize[VocNumber]);
  informationForm.vocabInfo.Font.Size := 14;
  informationForm.vocabInfo.Width := informationForm.Width - 40;
  informationForm.vocabInfo.Position.X := padX;
  informationForm.vocabInfo.Position.Y := buttons[3].Position.Y + buttons[3].Height + padY;
  ////////////////////////////// Contact info text settings //////////////////////////////
  informationForm.contactInfo.Text := arrayContactInfo[VocNumber];
  informationForm.contactInfo.Font.Size := 14;
  informationForm.contactInfo.Width := informationForm.Width - 40;
  informationForm.contactInfo.Position.X := padX;
  informationForm.contactInfo.Position.Y := informationForm.vocabInfo.Position.Y + informationForm.vocabInfo.Height + padY;

  informationForm.height:= round (informationForm.contactInfo.Position.Y + informationForm.contactInfo.Height + padY);
  informationForm.Top := round(Screen.Height-informationForm.Height) div 2;
end;

procedure TinformationForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  informationForm.FillColorAnimation.Duration := 0.5;
  informationForm.FillColorAnimation.Delay := 0;
  informationForm.FillColorAnimation.Interpolation := TInterpolationType.linear;
  informationForm.FillColorAnimation.PropertyName := 'Fill.Color';
  informationForm.FillColorAnimation.StartValue := bckgrndColor[ColorsSetNumber];
  informationForm.FillColorAnimation.StopValue := $00000000;
  informationForm.FillColorAnimation.start;

  for i := 1 to 7 do begin
    FontColorAnimation[i].Duration := 0.5;
    FontColorAnimation[i].Delay := 0;
    FontColorAnimation[i].Interpolation := TInterpolationType.linear;
    FontColorAnimation[i].PropertyName := 'FontColor';
    FontColorAnimation[i].StartValue := boardNKeyTextColorsDef[ColorsSetNumber];
    FontColorAnimation[i].StopValue := $00000000;
    FontColorAnimation[i].start;
  end;

  for i := 1 to 3 do begin
    btnTintAnimation[i].Duration := 0.5;
    btnTintAnimation[i].Delay := 0;
    btnTintAnimation[i].Interpolation := TInterpolationType.linear;
    btnTintAnimation[i].PropertyName := 'TintColor';
    btnTintAnimation[i].StartValue := boardNKeyColorsDef[ColorsSetNumber];
    btnTintAnimation[i].StopValue := $00000000;
    btnTintAnimation[i].start;
  end;

  btnTextAnimation[1].StartValue := boardNKeyTextColorsGreen[ColorsSetNumber];
  btnTextAnimation[2].StartValue := boardNKeyTextColorsYellow[ColorsSetNumber];
  btnTextAnimation[3].StartValue := boardNKeyTextColorsDef[ColorsSetNumber];
  for i := 1 to 3 do begin
    btnTextAnimation[i].Duration := 0.5;
    btnTextAnimation[i].Delay := 0;
    btnTextAnimation[i].Interpolation := TInterpolationType.linear;
    btnTextAnimation[i].PropertyName := 'FontColor';
    btnTextAnimation[i].StopValue := $00000000;
    btnTextAnimation[i].start;
  end;

end;

procedure TinformationForm.FormCreate(Sender: TObject);
begin
  buttons[1] := b1;
  buttons[2] := b2;
  buttons[3] := b3;
  btnDescriptions[1] := btn1descr;
  btnDescriptions[2] := btn2descr;
  btnDescriptions[3] := btn3descr;

  btnTextAnimation[1] := btnTextAnimation1;
  btnTextAnimation[2] := btnTextAnimation2;
  btnTextAnimation[3] := btnTextAnimation3;
  btnTintAnimation[1] := btnTintAnimation1;
  btnTintAnimation[2] := btnTintAnimation2;
  btnTintAnimation[3] := btnTintAnimation3;

  fontColorAnimation[1] := fontColorAnimation1;
  fontColorAnimation[2] := fontColorAnimation2;
  fontColorAnimation[3] := fontColorAnimation3;
  fontColorAnimation[4] := fontColorAnimation4;
  fontColorAnimation[5] := fontColorAnimation5;
  fontColorAnimation[6] := fontColorAnimation6;
  fontColorAnimation[7] := fontColorAnimation7;

  elementsShow;
  FormColorAnimation;
  FillColorAnimation.Start;
end;

procedure TinformationForm.FormShow(Sender: TObject);
begin
  elementsShow;
  FormColorAnimation;
  FillColorAnimation.Start;

  for i := 1 to 7 do begin
    FontColorAnimation[i].Duration := 0.8;
    FontColorAnimation[i].Delay := 0;
    FontColorAnimation[i].Interpolation := TInterpolationType.linear;
    FontColorAnimation[i].PropertyName := 'FontColor';
    FontColorAnimation[i].StartValue := boardNKeyTextColorsDef[ColorsSetNumber];
    FontColorAnimation[i].StopValue := boardNKeyTextColorsDef[ColorsSetNumber];
    FontColorAnimation[i].start;
  end;

  for i := 1 to 3 do begin
    btnTintAnimation[i].Duration := 0.8;
    btnTintAnimation[i].Delay := 0;
    btnTintAnimation[i].Interpolation := TInterpolationType.linear;
    btnTintAnimation[i].PropertyName := 'TintColor';
    btnTintAnimation[i].StartValue := boardNKeyColorsDef[ColorsSetNumber];
    btnTintAnimation[i].StopValue := boardNKeyColorsDef[ColorsSetNumber];
    btnTintAnimation[i].start;
  end;

  btnTextAnimation[1].StartValue := boardNKeyTextColorsGreen[ColorsSetNumber];
  btnTextAnimation[2].StartValue := boardNKeyTextColorsYellow[ColorsSetNumber];
  btnTextAnimation[3].StartValue := boardNKeyTextColorsDef[ColorsSetNumber];
  btnTextAnimation[1].StopValue := boardNKeyTextColorsGreen[ColorsSetNumber];
  btnTextAnimation[2].StopValue := boardNKeyTextColorsYellow[ColorsSetNumber];
  btnTextAnimation[3].StopValue := boardNKeyTextColorsDef[ColorsSetNumber];
  for i := 1 to 3 do begin
    btnTextAnimation[i].Duration := 0.8;
    btnTextAnimation[i].Delay := 0;
    btnTextAnimation[i].Interpolation := TInterpolationType.linear;
    btnTextAnimation[i].PropertyName := 'FontColor';
    btnTextAnimation[i].start;
  end;
end;

end.
