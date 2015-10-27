unit Unit3;

interface

uses
  UnitExternal
  ;

type
IClass3 = interface
['{3A9D0469-0603-444E-B012-E18104ED2D9E}']
  function msg: String;
end;

TClass3 = class(TInterfacedObject, IClass3)
private
  FExtObj : IClassE;
public
  constructor Create;
  function msg: String;
end;


implementation

constructor TClass3.Create;
begin
  FExtObj := TClassE.Create;
end;

function TClass3.msg: String;
begin
  Result := 'Im object no 3 from package C, requires external package' + #13#10 + FExtObj.msg;
end;

end.

