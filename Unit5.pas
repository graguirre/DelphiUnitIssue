unit Unit5;

interface

uses
  Unit3,
  Unit4
  ;

type
IClass5 = interface
['{EBDC64C4-451D-4163-BC31-BA24BB56153B}']
  procedure msg;
end;

TClass5 = class(TInterfacedObject, IClass5)
  FObjC : IClass3;
  FObjD : IClass4;
public
  constructor Create;
  procedure msg;
end;


implementation

constructor TClass5.Create;
begin
  FObjC := TClass3.Create;
  FObjD := TClass4.Create;
end;

procedure TClass5.msg;
begin
  writeln('Im object no 5, requires:');
  FObjC.msg;
  FObjD.msg;
end;

end.
