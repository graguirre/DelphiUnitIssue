unit Unit1;

interface

uses
  UnitExternal
  ;

type

IClass1 = interface
['{8040D7E1-2959-4107-9C7F-2E431716B537}']
  function msg: String;
end;

TClass1 = class(TInterfacedObject, IClass1)
private
  FExtObj : IClassE;
public
  constructor Create;
  function msg: String;
end;

implementation

constructor TClass1.Create;
begin
  FExtObj := TClassE.Create;
end;


function TClass1.msg: String;
begin
  result := 'Im object no 1 from package A, requires external package' + #13#10 + FExtObj.msg;
end;

end.
