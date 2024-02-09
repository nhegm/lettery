unit languageForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.Layouts, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls;

type
  Tlanguage = class(TForm)
    okButton: TButton;
    langButton1: TButton;
    langButton2: TButton;
    langButton4: TButton;
    procedure langButton1Click(Sender: TObject);
    procedure langButton2Click(Sender: TObject);
    procedure langButton4Click(Sender: TObject);
    procedure okButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  language: Tlanguage;

implementation

uses HeaderFooterTemplate;

  var listVoc: array [1..5] of TListBoxItem;
      vocChangeClick: array [1..5] of boolean;
      i: integer;
      langButton : array [1..3] of TButton;
      padY: single;

{$R *.fmx}

//procedure TlanguageForm.okButtonClick(Sender: TObject);
//begin
//  for I := 1 to 5 do
//    if vocChangeClick[i] = true
//      then HeaderFooterTemplate.VocNumber := i;
//end;

procedure Tlanguage.FormDeactivate(Sender: TObject);
begin
  MainForm.Active := true;
end;

procedure Tlanguage.FormShow(Sender: TObject);
begin

  FullScreen := false;
  width := 138;
  height := 138;
  Left := round(Screen.Width-Width) div 2;
  Top := 50;
  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];

  langButton[1] := langButton1;
  langButton[2] := langButton2;
  langButton[3] := langButton4;

  padY := 8;
  langButton[1].Position.Y := padY * 2;
  for I := 2 to 3 do
    langButton[i].Position.Y := langButton[i-1].Position.Y + langButton[i-1].Height + padY;
  for I := 1 to 3 do
    langButton[i].Position.X := (language.Width - langButton[i].Width)/2;
  okButton.Position.Y := langButton[3].Position.Y + langButton[3].Height + padY;
  okButton.Position.X := (language.Width - okButton.Width)/2;
  for I := 1 to 3 do begin
    langButton[i].TintColor := HeaderFooterTemplate.boardNKeyColorsDef[ColorsSetNumber];
    langButton[i].TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
  end;

  okButton.TintColor := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  okButton.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];

  for I := 1 to 2 do begin
    if VocNumber = i
      then langButton[i].Enabled := false
      else langButton[i].Enabled := true
  end;
  if VocNumber = 4
    then langButton[3].Enabled := false
    else begin
      langButton[1].Enabled := true;
      langButton[2].Enabled := true;
    end;
  language.Active := true;
  MainForm.Active := false;
end;

procedure Tlanguage.langButton1Click(Sender: TObject);
begin
  VocNumber := 1;
  langButton1.Enabled := false;
  langButton2.Enabled := true;
  langButton4.Enabled := true;
  languageChanged := true;
end;

procedure Tlanguage.langButton2Click(Sender: TObject);
begin
  VocNumber := 2;
  langButton2.Enabled := false;
  langButton1.Enabled := true;
  langButton4.Enabled := true;
  languageChanged := true;
end;

procedure Tlanguage.langButton4Click(Sender: TObject);
begin
  VocNumber := 4;
  langButton4.Enabled := false;
  langButton2.Enabled := true;
  langButton1.Enabled := true;
  languageChanged := true;
end;

procedure Tlanguage.okButtonClick(Sender: TObject);
begin
{$IF Defined(ANDROID)}
  language.Close;
{$ELSEIF Defined(MSWINDOWS)}
  language.Destroy;
{$ENDIF}

end;

end.
