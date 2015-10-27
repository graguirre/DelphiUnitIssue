unit Unit5;

interface

uses
  Unit3,
  Unit4
  ;

type
IClass5 = interface
['{EBDC64C4-451D-4163-BC31-BA24BB56153B}']
  function msg: String;
end;

TClass5 = class(TInterfacedObject, IClass5)
  FObjC : IClass3;
  FObjD : IClass4;
public
  constructor Create;
  function msg: String;
end;


implementation

constructor TClass5.Create;
begin
  FObjC := TClass3.Create;
  FObjD := TClass4.Create;
end;

function TClass5.msg: String;
begin
  Result := 'Im object no 5 from package E, requires packages C & D' + #13#10 +  FObjC.msg + #13#10 + FObjD.msg;
end;

end.
