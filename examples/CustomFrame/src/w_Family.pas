unit w_Family;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomFrameExample;

type
  Tf_Family = class(TForm)
    cf_Father: TCustomFrameExample;
    cf_Mother: TCustomFrameExample;
    cf_FirstChild: TCustomFrameExample;
    cf_SecondChild: TCustomFrameExample;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Family: Tf_Family;

implementation

{$R *.dfm}

end.
