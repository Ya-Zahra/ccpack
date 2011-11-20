unit CustomFrameExample;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ccBoxes,
  StdCtrls;

type
  TGender = (gUnspecified, gMale, gFemale);

type
  TCustomFrameExample = class(TFrame)
    grp_Caption: TGroupBox;
    l_FirstName: TLabel;
    l_LastName: TLabel;
    ed_FirstName: TEdit;
    ed_LastName: TEdit;
    grp_Gender: TGroupBox;
    rb_Male: TRadioButton;
    rb_Female: TRadioButton;
    grp_DateOfBirth: TGroupBox;
    l_DateOfBirth: TLabel;
    cmb_Year: TComboBox;
    cmb_Month: TComboBox;
    cmb_Day: TComboBox;
  private
    function GetCaption: string;
    procedure SetCaption(const Value: string);
    function GetName(const Index: Integer): string;
    procedure SetName(const Index: Integer; const Value: string);
    function GetGender: TGender;
    procedure SetGender(const Value: TGender);
    function GetDateOfBirth: TDate;
    procedure SetDateOfBirth(const Value: TDate);
  protected
  public
  published
    property Caption: string read GetCaption write SetCaption;
    property FullName: string index 0 read GetName;
    property FirstName: string index 1 read GetName write SetName;
    property LastName: string index 2 read GetName write SetName;
    property Gender: TGender read GetGender write SetGender;
    property DateOfBirth: TDate read GetDateOfBirth write SetDateOfBirth;
  end;

procedure Register;

implementation

{$R *.DFM}

uses
  DateUtils;

procedure Register;
begin
  RegisterComponents('Composites', [TCustomFrameExample]);
end;

{ TCustomFrameExample }

function TCustomFrameExample.GetCaption: string;
begin
  Result := grp_Caption.Caption;
end;

function TCustomFrameExample.GetDateOfBirth: TDate;
var
  Year, Month, Day: Integer;
  MaxDay: Integer;
begin
  if not TryStrToInt(cmb_Year.Text, Year) then
    Year := 2000;
  if not TryStrToInt(cmb_Month.Text, Month) then
    Month := 1;
  if Month > 12 then
    Month := 12;
  if not TryStrToInt(cmb_Day.Text, Day) then
    Day := 1;
  Result := DateUtils.EncodeDateTime(Year, Month, 1, 0, 0, 0, 0);
  MaxDay := DaysInMonth(Result);
  if Day > MaxDay then
    Day := MaxDay;
  Result := DateUtils.EncodeDateTime(Year, Month, Day, 0, 0, 0, 0);
end;

function TCustomFrameExample.GetGender: TGender;
begin
  if rb_Male.Checked then
    Result := gMale
  else if rb_Female.Checked then
    Result := gFemale
  else
    Result := gUnspecified;
end;

function TCustomFrameExample.GetName(const Index: Integer): string;
begin
  case Index of
    0: begin
        Result := LastName + ', ' + FirstName;
        if Result = ', ' then
          Result := '';
      end;
    1: Result := ed_FirstName.Text;
    2: Result := ed_LastName.Text;
  end;
end;

procedure TCustomFrameExample.SetCaption(const Value: string);
begin
  grp_Caption.Caption := Value;
end;

procedure TCustomFrameExample.SetDateOfBirth(const Value: TDate);
begin
  cmb_Year.Text := IntToStr(YearOf(Value));
  cmb_Month.ItemIndex := MonthOf(Value) - 1;
  cmb_Day.ItemIndex := DayOf(Value) - 1;
end;

procedure TCustomFrameExample.SetGender(const Value: TGender);
begin
  case Value of
    gUnspecified: begin
        rb_Male.Checked := False;
        rb_Female.Checked := False;
      end;
    gMale:
      rb_Male.Checked := True;
    gFemale:
      rb_Female.Checked := True;
  end;
end;

procedure TCustomFrameExample.SetName(const Index: Integer; const Value: string);
begin
  case Index of
    1: ed_FirstName.Text := Value;
    2: ed_LastName.Text := Value;
  end;
end;

end.

