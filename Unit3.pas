unit Unit3;

interface

uses
  UnitExternal
  ;

type
IClass3 = interface
['{3A9D0469-0603-444E-B012-E18104ED2D9E}']
  procedure msg;
end;

TClass3 = class(TInterfacedObject, IClass3)
private
  FExtObj : IClassE;
public
  constructor Create;
  procedure msg;
end;


implementation

constructor TClass3.Create;
begin
  FExtObj := TClassE.Create;
end;

procedure TClass3.msg;
begin
  writeln('Im object no 3 from package C, requires external package');
  FExtObj.msg;
end;

end.

