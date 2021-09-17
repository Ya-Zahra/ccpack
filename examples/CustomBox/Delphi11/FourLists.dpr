program FourLists;

uses
  Forms,
  w_FourLists in '..\src\w_FourLists.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
