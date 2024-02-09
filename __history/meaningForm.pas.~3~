unit meaningForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, System.IOUtils, FMX.StdCtrls, FMX.Objects,
  FMX.Layouts, Math, System.Actions, FMX.ActnList, FMX.StdActns, FMX.Gestures,
  System.Sensors, System.Sensors.Components, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, IdIntercept, IdBaseComponent, IdLogBase, IdLogEvent,
  FireDAC.Phys.Intf, FireDAC.Stan.Option, FireDAC.Stan.Intf, FireDAC.Comp.Client;

type
  TmeaningForm1 = class(TForm)
    meaningText: TLabel;
    ScrollBar: TScrollBar;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    ScrollDown: TAction;
    ScrollUp: TAction;

    procedure FormShow(Sender: TObject);
    procedure ScrollBarChange(Sender: TObject);
    procedure ScrollDownExecute(Sender: TObject);
    procedure ScrollUpExecute(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);

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
  meaningForm1.Width:=round(meaningText.Width)+40;
  meaningString := HeaderFooterTemplate.meaningOfTheWord;
  meaningText.Text := AnsiToUTF8 (meaningString);

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
  meaningForm1.Active := true;
  MainForm.Active := false;
end;

procedure TmeaningForm1.ScrollBarChange(Sender: TObject);
begin
  meaningText.Position.Y := - ScrollBar.Value;
end;

procedure TmeaningForm1.ScrollDownExecute(Sender: TObject);        // вниз движение
begin
  {$IF Defined(ANDROID)}
    if ScrollBar.Value > 0
      then ScrollBar.Value := ScrollBar.Value - 14;
  {$ENDIF}
end;

procedure TmeaningForm1.ScrollUpExecute(Sender: TObject);        // вверх движение
begin
  {$IF Defined(ANDROID)}
    ScrollBarChange(ScrollUp);
  {$ENDIF}
end;

procedure TmeaningForm1.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
  var GestureString: string;
begin
  GestureToIdent(EventInfo.GestureID , GestureString);
  {$IF Defined(ANDROID)}
    if GestureString = 'sgiDown'
      then meaningText.Position.Y := - EventInfo.Distance;
    if EventInfo.GestureID = sgiUp
      then meaningText.Position.Y := + EventInfo.Distance;
  {$ENDIF}

end;

end.
