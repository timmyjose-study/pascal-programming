unit PrintMessageUnit;

interface

procedure WriteMessageAtXY(X, Y: Integer; Message: String);

implementation
uses Crt;

procedure WriteMessageAtXY(X, Y: Integer; Message: String);
begin
  GotoXY(X, Y);
  Write(Message)
end;

begin
end.
