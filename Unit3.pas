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
public
  procedure msg;
end;


implementation


procedure TClass3.msg;
begin
  writeln('message from TClass3');
end;

end.

