unit langForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani;

type
  TlanguageForm = class(TForm)
    FillColorAnimation: TColorAnimation;
    langButton1: TButton;
    langButton2: TButton;
    langButton4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure langButton1Click(Sender: TObject);
    procedure langButton2Click(Sender: TObject);
    procedure langButton4Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  languageForm: TlanguageForm;

implementation

uses HeaderFooterTemplate;

var
  vocChangeClick: array [1..5] of boolean;
  i: integer;
  langButton : array [1..3] of TButton;
  padY: single;
  btnTextAnimation: array [1..3] of TColorAnimation;
  btnTintAnimation: array [1..3] of TColorAnimation;

{$R *.fmx}

procedure AppearAnimationStart;
begin
  languageForm.FillColorAnimation.Duration := 0.8;
  languageForm.FillColorAnimation.Delay := 0;
  languageForm.FillColorAnimation.Interpolation := TInterpolationType.linear;
  languageForm.FillColorAnimation.PropertyName := 'Fill.Color';
  languageForm.FillColorAnimation.StartValue := bckgrndColor[ColorsSetNumber];
  languageForm.FillColorAnimation.StopValue := bckgrndColor[ColorsSetNumber];
  languageForm.FillColorAnimation.start;
end;

procedure FadeAnimationStart;
begin
  languageForm.FillColorAnimation.Duration := 0.5;
  languageForm.FillColorAnimation.Delay := 0;
  languageForm.FillColorAnimation.Interpolation := TInterpolationType.linear;
  languageForm.FillColorAnimation.PropertyName := 'Fill.Color';
  languageForm.FillColorAnimation.StartValue := bckgrndColor[ColorsSetNumber];
  languageForm.FillColorAnimation.StopValue := $00000000;
  languageForm.FillColorAnimation.start;
end;

procedure elementsShow;
begin
  languageChanged := false;
  languageForm.FullScreen := false;
  {$IF Defined(ANDROID)}
  languageForm.width := 138;
  languageForm.height := 138;
  languageForm.Left := round(Screen.Width-languageForm.Width) div 2;
  languageForm.Top := 50;
  {$ELSEIF Defined(MSWINDOWS)}
  Height := 180;
  width := 200;
  {$ENDIF}

  padY := 8;
  langButton[1].Position.Y := padY * 2;
  for I := 2 to 3 do
    langButton[i].Position.Y := langButton[i-1].Position.Y + langButton[i-1].Height + padY;
  for I := 1 to 3 do
    langButton[i].Position.X := (languageForm.Width - langButton[i].Width)/2;
  for I := 1 to 3 do begin
    langButton[i].TintColor := HeaderFooterTemplate.boardNKeyColorsDef[ColorsSetNumber];
    langButton[i].TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
  end;
  if VocNumber = 4
    then langButton[3].Enabled := false
    else langButton[VocNumber].Enabled := false;
  AppearAnimationStart;
end;

procedure TlanguageForm.FormCreate(Sender: TObject);
begin
  langButton[1] := langButton1;
  langButton[2] := langButton2;
  langButton[3] := langButton4;
end;

procedure TlanguageForm.FormHide(Sender: TObject);
begin
  FadeAnimationStart;
end;

procedure TlanguageForm.langButton4Click(Sender: TObject);
begin
  VocNumber := 4;
  langButton4.Enabled := false;
  langButton2.Enabled := true;
  langButton1.Enabled := true;
  languageChanged := true;
end;

procedure TlanguageForm.FormShow(Sender: TObject);
begin
  languageForm.Active := true;
  MainForm.Active := false;
  elementsShow;
end;

procedure TlanguageForm.langButton1Click(Sender: TObject);
begin
  VocNumber := 1;
  langButton1.Enabled := false;
  langButton2.Enabled := true;
  langButton4.Enabled := true;
  languageChanged := true;

end;

procedure TlanguageForm.langButton2Click(Sender: TObject);
begin
  VocNumber := 2;
  langButton2.Enabled := false;
  langButton1.Enabled := true;
  langButton4.Enabled := true;
  languageChanged := true;

end;

end.
