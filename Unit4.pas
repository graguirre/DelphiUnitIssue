unit Unit4;

interface

uses
  Unit1,
  Unit2
  ;

type
IClass4 = interface
['{8D7181A6-F70A-4593-A11D-E60AC64ADD20}']
  function msg:String;
end;

TClass4 = class(TInterfacedObject, IClass4)
  FObjA : IClass1;
  FObjB : IClass2;
public
  constructor Create;
  function msg: String;
end;


implementation

constructor TClass4.Create;
begin
  FObjA := TClass1.Create;
  FObjB := TClass2.Create;
end;

function TClass4.msg: String;
begin
  Result := 'Im object no 4 from package D, requires packages A & B' + #13#10 + FObjA.msg + #13#10 + FObjB.msg;
end;

end.

