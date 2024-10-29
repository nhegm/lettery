unit meaningForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, System.IOUtils, FMX.StdCtrls, FMX.Objects,
  FMX.Layouts, Math, System.Actions, FMX.ActnList, FMX.StdActns, FMX.Gestures,
  System.Sensors, System.Sensors.Components, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, IdIntercept, IdBaseComponent, IdLogBase, IdLogEvent,
  FireDAC.Phys.Intf, FireDAC.Stan.Option, FireDAC.Stan.Intf, FireDAC.Comp.Client, FMX.InertialMovement,
  FMX.Ani;

type
  TmeaningForm1 = class(TForm)
    meaningText: TLabel;
    ScrollBar: TScrollBar;
    ScrollBox: TScrollBox;
    FillColorAnimation: TColorAnimation;
    FontColorAnimation: TColorAnimation;

    procedure ScrollBarChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

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

procedure TmeaningForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  meaningForm1.FillColorAnimation.Duration := 0.5;
  meaningForm1.FillColorAnimation.Delay := 0;
  meaningForm1.FillColorAnimation.Interpolation := TInterpolationType.linear;
  meaningForm1.FillColorAnimation.PropertyName := 'Fill.Color';
  meaningForm1.FillColorAnimation.StartValue := bckgrndColor[ColorsSetNumber];
  meaningForm1.FillColorAnimation.StopValue := $00000000;
  meaningForm1.FillColorAnimation.start;

  meaningForm1.FontColorAnimation.Duration := 0.5;
  meaningForm1.FontColorAnimation.Delay := 0;
  meaningForm1.FontColorAnimation.Interpolation := TInterpolationType.linear;
  meaningForm1.FontColorAnimation.PropertyName := 'FontColor';
  meaningForm1.FontColorAnimation.StartValue := boardNKeyTextColorsDef[ColorsSetNumber];
  meaningForm1.FontColorAnimation.StopValue := $00000000;
  meaningForm1.FontColorAnimation.start;
end;

procedure TmeaningForm1.FormShow(Sender: TObject);

begin
  meaningForm1.FillColorAnimation.Duration := 0.8;
  meaningForm1.FillColorAnimation.Delay := 0;
  meaningForm1.FillColorAnimation.Interpolation := TInterpolationType.linear;
  meaningForm1.FillColorAnimation.PropertyName := 'Fill.Color';
  meaningForm1.FillColorAnimation.StartValue := bckgrndColor[ColorsSetNumber];
  meaningForm1.FillColorAnimation.StopValue := bckgrndColor[ColorsSetNumber];
  meaningForm1.FontColorAnimation.Duration := 0.8;
  meaningForm1.FontColorAnimation.Delay := 0;
  meaningForm1.FontColorAnimation.Interpolation := TInterpolationType.linear;
  meaningForm1.FontColorAnimation.PropertyName := 'FontColor';
  meaningForm1.FontColorAnimation.StartValue := boardNKeyTextColorsDef[ColorsSetNumber];
  meaningForm1.FontColorAnimation.StopValue := boardNKeyTextColorsDef[ColorsSetNumber];
  meaningText.TextSettings.Font.Size := 18;
  meaningText.Text := AnsiToUTF8 (HeaderFooterTemplate.meaningOfTheWord);

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
    meaningForm1.FillColorAnimation.start;
    meaningForm1.FontColorAnimation.start;
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
    meaningForm1.FillColorAnimation.start;
    meaningForm1.FontColorAnimation.start;
  {$ENDIF}

  meaningForm1.Top:=50;
  meaningForm1.Left:=round(screen.Width - meaningForm1.Width) div 2;
end;

procedure TmeaningForm1.ScrollBarChange(Sender: TObject);
begin
  meaningText.Position.Y := - ScrollBar.Value;
end;

end.
