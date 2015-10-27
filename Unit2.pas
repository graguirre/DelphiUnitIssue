unit Unit2;

interface

type
IClass2 = interface
['{87DE6B1A-F5B9-4C2B-95B3-8CB200611E23}']
  function msg: String;
end;

TClass2 = class(TInterfacedObject, IClass2)
public
  function msg: String;
end;


implementation


function TClass2.msg: String;
begin
  Result := 'Im object no 2 from package B, requires no package';
end;

end.
