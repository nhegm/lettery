unit meaningForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, System.IOUtils, FMX.StdCtrls, FMX.Objects,
  FMX.Layouts, Math, System.Actions, FMX.ActnList, FMX.StdActns, FMX.Gestures,
  System.Sensors, System.Sensors.Components, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, IdIntercept, IdBaseComponent, IdLogBase, IdLogEvent,
  FireDAC.Phys.Intf, FireDAC.Stan.Option, FireDAC.Stan.Intf, FireDAC.Comp.Client, FMX.InertialMovement;

type
  TmeaningForm1 = class(TForm)
    meaningText: TLabel;
    ScrollBar: TScrollBar;
    ScrollBox: TScrollBox;

    procedure FormShow(Sender: TObject);
    procedure ScrollBarChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  meaningForm1: TmeaningForm1;

implementation

uses HeaderFooterTemplate;

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

const
  posY = 100;
var
  meaningString : String;

procedure TmeaningForm1.FormShow(Sender: TObject);

begin

  Fill.Color := HeaderFooterTemplate.bckgrndColor[ColorsSetNumber];
  meaningText.TextSettings.FontColor := HeaderFooterTemplate.boardNKeyTextColorsDef[ColorsSetNumber];
  meaningForm1.Top:=50;
  meaningForm1.Left:=70;
  meaningText.TextSettings.Font.Size := 18;
  meaningString := HeaderFooterTemplate.meaningOfTheWord;
  meaningText.Text := AnsiToUTF8 (meaningString);

  {$IFDEF ANDROID}
    ScrollBox.Height := meaningText.Height;
    meaningForm1.Width := round(ScrollBox.Width) + 16;
    if ScrollBox.height + 16 < 300
      then meaningForm1.height := round (ScrollBox.Height + 16);
    if ScrollBox.height + 16 >= 300
      then begin
        meaningForm1.Height := 300;
        ScrollBox.Height := 284;
        ScrollBox.AniCalculations.TouchTracking := [ttVertical];
        ScrollBox.AniCalculations.Animation := True;
    end;
  {$ENDIF}

  {$IFDEF MSWINDOWS}
    meaningForm1.Width:=round(meaningText.Width)+40;
    if meaningText.height+12<400
      then begin
        meaningText.Position.Y := 0;
        meaningForm1.ScrollBar.Visible := false;
        meaningForm1.height:=round(meaningText.height) + 8;
      end
      else begin
        meaningForm1.height:=400;
        meaningForm1.ScrollBar.Visible:=true;
        ScrollBar.Min := 0;
        ScrollBar.Value := 0;
        ScrollBar.Max := meaningText.Height - meaningForm1.height + 8;
      end;
  {$ENDIF}
  meaningForm1.Active := true;
  MainForm.Active := false;
end;

procedure TmeaningForm1.ScrollBarChange(Sender: TObject);
begin
  meaningText.Position.Y := - ScrollBar.Value;
end;

end.
