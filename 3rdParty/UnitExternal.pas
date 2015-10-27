unit UnitExternal;

interface

type

IClassE = interface
['{97470FC1-48C5-44E8-95A8-257C02670B4D}']
  function msg: String;
end;

TClassE = class(TInterfacedObject, IClassE)
public
  function msg: String;
end;

implementation

function TClassE.msg: String;
begin
  Result := 'Im an external unit';
end;

end.

