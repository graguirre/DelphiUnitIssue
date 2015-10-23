unit Unit2;

interface

type
IClass2 = interface
['{87DE6B1A-F5B9-4C2B-95B3-8CB200611E23}']
  procedure msg;
end;

TClass2 = class(TInterfacedObject, IClass2)
public
  procedure msg;
end;


implementation


procedure TClass2.msg;
begin
  writeln('message from TClass2');
end;

end.
