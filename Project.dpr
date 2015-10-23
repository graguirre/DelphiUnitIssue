program Project;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit5
  ;

var
  FObj : IClass5;
begin
  try
    FObj := TClass5.Create;
    FObj.msg;
    readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
