unit UnitExternal;

interface

type

IClassE = interface
['{97470FC1-48C5-44E8-95A8-257C02670B4D}']
  procedure msg;
end;

TClassE = class(TInterfacedObject, IClassE)
public
  procedure msg;
end;

implementation

procedure TClassE.msg;
begin
  writeln('Im an external unit');
end;

end.

