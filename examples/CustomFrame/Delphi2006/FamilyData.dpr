program FamilyData;

uses
  Forms,
  w_Family in '..\src\w_Family.pas' {f_Family};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tf_Family, f_Family);
  Application.Run;
end.
