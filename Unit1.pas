unit Unit1;

interface

type
  IClass1 = interface
  ['{8040D7E1-2959-4107-9C7F-2E431716B537}']
    procedure msg;
  end;

  TClass1 = class(TInterfacedObject, IClass1)
  public
    procedure msg;
  end;

implementation

procedure TClass1.msg;
begin
  writeln('message from TClass1');
end;

end.
