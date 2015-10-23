unit Unit1;

interface

uses
  UnitExternal
  ;

type

IClass1 = interface
['{8040D7E1-2959-4107-9C7F-2E431716B537}']
  procedure msg;
end;

TClass1 = class(TInterfacedObject, IClass1)
private
  FExtObj : IClassE;
public
  constructor Create;
  procedure msg;
end;

implementation

constructor TClass1.Create;
begin
  FExtObj := TClassE.Create;
end;


procedure TClass1.msg;
begin
  writeln('Im object no 1 from package A, requires external package');
  FExtObj.msg;
end;

end.
