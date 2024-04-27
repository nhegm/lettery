unit themeForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ExtCtrls, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListBox,
  FMX.Layouts, FMX.ListView, FMX.Styles.Objects, FMX.Objects, FMX.Ani;

type
  TsetForm = class(TForm)
    Label1: TLabel;
    azul1: TRoundRect;
    Text1: TText;
    day2: TRoundRect;
    Text2: TText;
    violet3: TRoundRect;
    Text3: TText;
    barbie4: TRoundRect;
    Text4: TText;
    console5: TRoundRect;
    Text5: TText;
    latinum6: TRoundRect;
    Text6: TText;
    greek7: TRoundRect;
    Text7: TText;
    x_men8: TRoundRect;
    Text8: TText;
    FillColorAnimation: TColorAnimation;
    FontColorAnimation: TColorAnimation;
    returnButton: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure azul1Click(Sender: TObject);
    procedure day2Click(Sender: TObject);
    procedure violet3Click(Sender: TObject);
    procedure barbie4Click(Sender: TObject);
    procedure returnButtonClick(Sender: TObject);
    procedure Text1Click(Sender: TObject);
    procedure Text2Click(Sender: TObject);
    procedure Text3Click(Sender: TObject);
    procedure Text4Click(Sender: TObject);
    procedure console5Click(Sender: TObject);
    procedure Text5Click(Sender: TObject);
    procedure latinum6Click(Sender: TObject);
    procedure Text6Click(Sender: TObject);
    procedure greek7Click(Sender: TObject);
    procedure Text7Click(Sender: TObject);
    procedure x_men8Click(Sender: TObject);
    procedure Text8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

// To add new color:
// 1) In main form add to colorsMax +1
// 2) Copy button + text
// 3) Remove click events for both
// 4) Rename the both
// 5) Add new click events for both
// 6) Add to form.Height +30
// 7) Add themeButton[i] and buttonText[i]

var
  setForm: TsetForm;

implementation

uses HeaderFooterTemplate;
{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}

var
  i,j: integer;
  s: string;
  padY: single;
  themeButton: array [1..HeaderFooterTemplate.colorsMax] of TRoundRect;
  buttonText: array [1..HeaderFooterTemplate.colorsMax] of TText;

const
  textHeaderRus='Цветовая схема'; textHeaderEng='Color Scheme'; textHeaderLat=''; textHeaderEsp='Esquema de colores'; textHeaderFra='';
  textHitRus='активна'; textHitEng='applied'; textHitLat=''; textHitEsp='usando'; textHitFra='';
  textDef1='azul'; textDef2='day'; textDef3='violet'; textDef4='Barbie'; textDef5='console'; textDef6='latinum'; textDef7='greek'; textDef8='X';

  textHeader: array [1..5] of String = (textHeaderRus, textHeaderEng, textHeaderLat, textHeaderEsp, textHeaderFra);
  textHitButton: array [1..5] of String = (textHitRus, textHitEng, textHitLat, textHitEsp, textHitFra);
  textDefButton: array [1..8] of String = (textDef1, textDef2, textDef3, textDef4, textDef5, textDef6, textDef7, textDef8);

procedure animationStart;
begin
  setForm.FillColorAnimation.Duration := 0.8;
  setForm.FillColorAnimation.Delay := 0;
  setForm.FillColorAnimation.Interpolation := TInterpolationType.linear;
  setForm.FillColorAnimation.PropertyName := 'Fill.Color';
  setForm.FillColorAnimation.StartValue := bckgrndColor[ColorsSetNumber];
  setForm.FillColorAnimation.StopValue := bckgrndColor[ColorsSetNumber];
  setForm.FillColorAnimation.start;

  setForm.FontColorAnimation.Duration := 0.8;
  setForm.FontColorAnimation.Delay := 0;
  setForm.FontColorAnimation.Interpolation := TInterpolationType.linear;
  setForm.FontColorAnimation.PropertyName := 'FontColor';
  setForm.FontColorAnimation.StartValue := boardNKeyTextColorsDef[ColorsSetNumber];
  setForm.FontColorAnimation.StopValue := boardNKeyTextColorsDef[ColorsSetNumber];
  setForm.FontColorAnimation.start;
end;

procedure elementsShow;
begin

  themeChanged := false;


  setForm.Label1.Position.Y := 8;
  setForm.Label1.Height := 24;
  padY := 8;
  padX := 25;

  themeButton[1].Position.Y := setForm.Label1.Position.Y + setForm.Label1.Height + padY;
  for I := 2 to HeaderFooterTemplate.colorsMax div 2 do
    themeButton[i].Position.Y := themeButton[i-1].Position.Y + themeButton[i-1].Height + padY;

  themeButton[5].Position.Y := setForm.Label1.Position.Y + setForm.Label1.Height + padY;
  for I := 6 to HeaderFooterTemplate.colorsMax do
    themeButton[i].Position.Y := themeButton[i-1].Position.Y + themeButton[i-1].Height + padY;

  for I := 1 to HeaderFooterTemplate.colorsMax div 2 do
    themeButton[i].Position.X := padX;

  for I := 5 to HeaderFooterTemplate.colorsMax do
    themeButton[i].Position.X := themeButton[1].Position.X + themeButton[1].Width + padX;

//  setForm.returnButton.Position.Y := themeButton[colorsMax].Position.Y + themeButton[colorsMax].Height + padY;
//  setForm.returnButton.Position.X := (setForm.Width - setForm.returnButton.Width)/2;

  for I := 1 to HeaderFooterTemplate.colorsMax do begin
    themeButton[i].Fill.Color := HeaderFooterTemplate.bckgrndColor[i];
    buttonText[i].TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[i];
  end;

  for i := 1 to colorsMax do
    if i = ColorsSetNumber
      then buttonText[i].Text := textHitButton[VocNumber];
end;

procedure btnClickSet;
begin
  setForm.Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
  themeChanged := true;
  for i := 1 to colorsMax do
    if i = ColorsSetNumber
      then begin
        themeButton[i].HitTest := false;
        buttonText[i].HitTest := false;
        buttonText[i].Text := textHitButton[VocNumber];
      end
      else begin
        themeButton[i].HitTest := true;
        buttonText[i].HitTest := true;
        buttonText[i].Text := textDefButton[i];
      end;
end;

procedure TsetForm.FormCreate(Sender: TObject);
begin

  themeButton[1] := azul1;
  themeButton[2] := day2;
  themeButton[3] := violet3;
  themeButton[4] := barbie4;
  themeButton[5] := console5;
  themeButton[6] := latinum6;
  themeButton[7] := greek7;
  themeButton[8] := x_men8;
  buttonText[1] := Text1;
  buttonText[2] := Text2;
  buttonText[3] := Text3;
  buttonText[4] := Text4;
  buttonText[5] := Text5;
  buttonText[6] := Text6;
  buttonText[7] := Text7;
  buttonText[8] := Text8;

  elementsShow;
  animationStart;
  setForm.Label1.Text := 'Цветовая схема';
  returnButton.TintColor := HeaderFooterTemplate.boardNKeyColorsDef[ColorsSetNumber];
  returnButton.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];

end;

procedure TsetForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FillColorAnimation.Duration := 0.5;
  FillColorAnimation.Delay := 0;
  FillColorAnimation.Interpolation := TInterpolationType.linear;
  FillColorAnimation.PropertyName := 'Fill.Color';
  FillColorAnimation.StartValue := bckgrndColor[ColorsSetNumber];
  FillColorAnimation.StopValue := $00000000;
  FillColorAnimation.start;

  FontColorAnimation.Duration := 0.5;
  FontColorAnimation.Delay := 0;
  FontColorAnimation.Interpolation := TInterpolationType.linear;
  FontColorAnimation.PropertyName := 'FontColor';
  FontColorAnimation.StartValue := boardNKeyTextColorsDef[ColorsSetNumber];
  FontColorAnimation.StopValue := $00000000;
  FontColorAnimation.start;
end;

procedure TsetForm.returnButtonClick(Sender: TObject);
begin
{$IF Defined(ANDROID)}
  setForm.Close;
{$ELSEIF Defined(MSWINDOWS)}
  setForm.Destroy;
{$ENDIF}
end;

procedure TsetForm.FormShow(Sender: TObject);
begin
  themeChanged := false;

  {$IF Defined(ANDROID)}
    setForm.width := 275;
    setForm.height := 220;
    setForm.Top := 50;
    setForm.Left := round(Screen.Width-setForm.Width) div 2;
  {$ELSEIF Defined(MSWINDOWS)}
    setForm.StyleLookup := DefaultFormStyleLookup;
    width := 300;
    height := 530;
  {$ENDIF}

  animationStart;
  setForm.Label1.Position.X := (setForm.Width - setForm.Label1.Width)/2;
  setForm.Label1.Text := textHeader[VocNumber];
  if languageChanged then buttonText[ColorsSetNumber].Text := textHitButton[VocNumber];

  setForm.Active := true;
  MainForm.Active := false;

end;

procedure TsetForm.greek7Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 7;
  btnClickSet;
end;

procedure TsetForm.x_men8Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 8;
  btnClickSet;
end;

procedure TsetForm.latinum6Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 6;
  btnClickSet;
end;

procedure TsetForm.azul1Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 1;
  btnClickSet;
end;

procedure TsetForm.day2Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 2;
  btnClickSet;
end;

procedure TsetForm.violet3Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 3;
  btnClickSet;
end;

procedure TsetForm.barbie4Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 4;
  btnClickSet;
end;

procedure TsetForm.console5Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 5;
  btnClickSet;
end;

procedure TsetForm.Text1Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 1;
  btnClickSet;
end;

procedure TsetForm.Text2Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 2;
  btnClickSet;
end;

procedure TsetForm.Text3Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 3;
  btnClickSet;
end;

procedure TsetForm.Text4Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 4;
  btnClickSet;
end;

procedure TsetForm.Text5Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 5;
  btnClickSet;
end;

procedure TsetForm.Text6Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 6;
  btnClickSet;
end;

procedure TsetForm.Text7Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 7;
  btnClickSet;
end;

procedure TsetForm.Text8Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 8;
  btnClickSet;
end;

end.

  FillColorAnimation.Duration := 0.8;
  FillColorAnimation.Delay := 0;
  FillColorAnimation.Interpolation := TInterpolationType.linear;
  FillColorAnimation.PropertyName := 'Fill.Color';
  FillColorAnimation.StartValue := bckgrndColor[ColorsSetNumber];
  FillColorAnimation.StopValue := bckgrndColor[ColorsSetNumber];
  FillColorAnimation.start;

  FontColorAnimation.Duration := 0.8;
  FontColorAnimation.Delay := 0;
  FontColorAnimation.Interpolation := TInterpolationType.linear;
  FontColorAnimation.PropertyName := 'FontColor';
  FontColorAnimation.StartValue := boardNKeyTextColorsDef[ColorsSetNumber];
  FontColorAnimation.StopValue := boardNKeyTextColorsDef[ColorsSetNumber];
  FontColorAnimation.start;

  FillColorAnimation.Duration := 0.5;
  FillColorAnimation.Delay := 0;
  FillColorAnimation.Interpolation := TInterpolationType.linear;
  FillColorAnimation.PropertyName := 'Fill.Color';
  FillColorAnimation.StartValue := bckgrndColor[ColorsSetNumber];
  FillColorAnimation.StopValue := $00000000;
  FillColorAnimation.start;

  FontColorAnimation.Duration := 0.5;
  FontColorAnimation.Delay := 0;
  FontColorAnimation.Interpolation := TInterpolationType.linear;
  FontColorAnimation.PropertyName := 'FontColor';
  FontColorAnimation.StartValue := boardNKeyTextColorsDef[ColorsSetNumber];
  FontColorAnimation.StopValue := $00000000;
  FontColorAnimation.start;
