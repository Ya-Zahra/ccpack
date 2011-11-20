unit CCCustomBox;

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
  TCustomBox = class(TBox)
    TheLabelCtrl: TLabel;
    TheListBoxCtrl: TListBox;
  private
  protected
  public
  published
    property CaptionLabel: TLabel read TheLabelCtrl;
    property List: TListbox read TheListBoxCtrl;
  end;

procedure Register;

implementation

{$R *.DFM}

procedure Register;
begin
  RegisterComponents('Composites', [TCustomBox]);
end;

end.

