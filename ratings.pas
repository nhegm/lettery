unit ratings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TrateForm = class(TForm)
    ratingHeader: TLabel;
    ratingValue: TLabel;
    Switcher: TSwitch;
    procedure SwitcherSwitch(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rateForm: TRateForm;

implementation

uses HeaderFooterTemplate;

const
  commonHeaderRus = 'Ваш рейтинг:'; commonHeaderEng = 'Your rank is:'; commonHeaderLat = 'фывфыв'; commonHeaderEsp = 'Tu rango es:';
  langHeaderRus = 'Рейтинг в русском:'; langHeaderEng = 'English rating:'; langHeaderLat = 'фывфыв'; langHeaderEsp = 'Español rango:';
  commonHeaders: array [1..4] of String = (commonHeaderRus, commonHeaderEng, commonHeaderLat, commonHeaderEsp);
  langHeaders: array [1..4] of String = (langHeaderRus, langHeaderEng, langHeaderLat, langHeaderEsp);

{$R *.fmx}
procedure elementsSettings;
begin
  rateForm.Height := 100;
  rateForm.Width := 150;
  rateForm.Top := 50;
  rateForm.Left := round(screen.Width - rateForm.Width) div 2;
  rateForm.Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  rateForm.ratingHeader.Width := rateForm.Width - 2;
  rateForm.ratingHeader.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  rateForm.ratingValue.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[HeaderFooterTemplate.ColorsSetNumber];
  rateForm.ratingHeader.TextSettings.Font.Size := 14;
  rateForm.ratingValue.TextSettings.Font.Size := 18;
  rateForm.ratingHeader.Position.Y := 8;
  rateForm.ratingHeader.Position.X := (rateForm.Width - rateForm.ratingHeader.Width) / 2;
  rateForm.ratingValue.Position.Y := rateForm.ratingHeader.Position.Y + rateForm.ratingHeader.Height + 8;
  rateForm.ratingValue.Position.X := (rateForm.Width - rateForm.ratingValue.Width) / 2;
  rateForm.ratingValue.Text := intToStr (HeaderFooterTemplate.ratingValue);
  rateForm.Switcher.Position.Y := rateForm.ratingValue.Position.Y + rateForm.Switcher.Height + 8;
  rateForm.Switcher.Position.X := (rateForm.Width - rateForm.Switcher.Width) / 2;
end;

procedure langStatTextFields;
begin
  rateForm.ratingHeader.Text := langHeaders[HeaderFooterTemplate.VocNumber];
  rateForm.ratingValue.Text := intToStr(HeaderFooterTemplate.ratingValueL)
end;

procedure commonStatTextFields;
begin
  rateForm.ratingHeader.Text := commonHeaders[HeaderFooterTemplate.VocNumber];
  rateForm.ratingValue.Text := intToStr(HeaderFooterTemplate.ratingValue)
end;

procedure TrateForm.FormShow(Sender: TObject);
begin
  SwitcherSwitch(self);
  elementsSettings;
end;

procedure TrateForm.SwitcherSwitch(Sender: TObject);
begin
  if Switcher.IsChecked
    then langStatTextFields
    else commonStatTextFields;
end;

end.
