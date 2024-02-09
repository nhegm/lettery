unit themeForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ExtCtrls, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListBox,
  FMX.Layouts, FMX.ListView, FMX.Styles.Objects, FMX.Objects;

type
  TsetForm = class(TForm)
    Label1: TLabel;
    azul: TRoundRect;
    Text1: TText;
    day: TRoundRect;
    Text2: TText;
    violet: TRoundRect;
    Text3: TText;
    returnButton: TButton;
    barbie: TRoundRect;
    Text4: TText;
    console: TRoundRect;
    Text5: TText;
    latinum: TRoundRect;
    Text6: TText;
    greek: TRoundRect;
    Text7: TText;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure azulClick(Sender: TObject);
    procedure dayClick(Sender: TObject);
    procedure violetClick(Sender: TObject);
    procedure barbieClick(Sender: TObject);
    procedure returnButtonClick(Sender: TObject);
    procedure Text1Click(Sender: TObject);
    procedure Text2Click(Sender: TObject);
    procedure Text3Click(Sender: TObject);
    procedure Text4Click(Sender: TObject);
    procedure consoleClick(Sender: TObject);
    procedure Text5Click(Sender: TObject);
    procedure latinumClick(Sender: TObject);
    procedure Text6Click(Sender: TObject);
    procedure Text7Click(Sender: TObject);
    procedure greekClick(Sender: TObject);

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

var i,j: integer;
    s: string;
    padY: single;
    themeButton: array [1..HeaderFooterTemplate.colorsMax] of TRoundRect;
    buttonText: array [1..HeaderFooterTemplate.colorsMax] of TText;

procedure TsetForm.FormCreate(Sender: TObject);
begin

  {$IF Defined(ANDROID)}
    setForm.width := 150;
    setForm.height := 340;
    setForm.Visible := false;
  {$ELSEIF Defined(MSWINDOWS)}
    setForm.StyleLookup := DefaultFormStyleLookup;
    width := 300;
    height := 500;
  {$ENDIF}

  themeButton[1] := azul;
  themeButton[2] := day;
  themeButton[3] := violet;
  themeButton[4] := barbie;
  themeButton[5] := console;
  themeButton[6] := latinum;
  themeButton[7] := greek;
  buttonText[1] := Text1;
  buttonText[2] := Text2;
  buttonText[3] := Text3;
  buttonText[4] := Text4;
  buttonText[5] := Text5;
  buttonText[6] := Text6;
  buttonText[7] := Text7;

  Label1.Position.X := (setForm.Width - Label1.Width)/2;
  Label1.Position.Y := 8;
  Label1.Height := 24;
  padY := 8;
  themeButton[1].Position.Y := Label1.Position.Y + Label1.Height + padY;
  for I := 2 to HeaderFooterTemplate.colorsMax do
    themeButton[i].Position.Y := themeButton[i-1].Position.Y + themeButton[i-1].Height + padY;
  for I := 1 to HeaderFooterTemplate.colorsMax do
    themeButton[i].Position.X := (setForm.Width - themeButton[i].Width)/2;
  returnButton.Position.Y := themeButton[colorsMax].Position.Y + themeButton[colorsMax].Height + padY;
  returnButton.Position.X := (setForm.Width - returnButton.Width)/2;

  for I := 1 to HeaderFooterTemplate.colorsMax do begin
    themeButton[i].Fill.Color := HeaderFooterTemplate.bckgrndColor[i];
    buttonText[i].TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[i];
  end;

  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
  setForm.Label1.Text := 'Цветовая схема';
  returnButton.TintColor := HeaderFooterTemplate.boardNKeyColorsDef[ColorsSetNumber];
  returnButton.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];

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

  setForm.width := 150;
  setForm.height := 340;
  {$IF Defined(ANDROID)}
    Left := round((screen.Width - setForm.width)/2);
    Top := 50;
  {$ELSEIF Defined(MSWINDOWS)}
    setForm.StyleLookup := DefaultFormStyleLookup;
    width := 300;
    height := 500;
    Left := round(setForm.width/2);
    Top := 100;
  {$ENDIF}

  setForm.Label1.Text := 'Цветовая схема';
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];

  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];

  setForm.Active := true;
  MainForm.Active := false;

end;

procedure TsetForm.greekClick(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 7;
  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

procedure TsetForm.latinumClick(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 6;
  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

procedure TsetForm.azulClick(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 1;
  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

procedure TsetForm.dayClick(Sender: TObject);
begin

  HeaderFooterTemplate.ColorsSetNumber := 2;
//  Form2.Active := true;

  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];

end;

procedure TsetForm.violetClick(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 3;
//  Form2.Active := true;

  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

procedure TsetForm.barbieClick(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 4;
//  Form2.Active := true;

  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

procedure TsetForm.consoleClick(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 5;
  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

procedure TsetForm.Text1Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 1;
  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

procedure TsetForm.Text2Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 2;
  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

procedure TsetForm.Text3Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 3;
  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

procedure TsetForm.Text4Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 4;
  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

procedure TsetForm.Text5Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 5;
  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

procedure TsetForm.Text6Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 6;
  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

procedure TsetForm.Text7Click(Sender: TObject);
begin
  HeaderFooterTemplate.ColorsSetNumber := 7;
  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  setForm.Label1.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
end;

end.
