{ demonstrating pass by var parameters }

program PassByVar;
var
  X, Y, Z: Integer;

procedure Test(var X, Y, Z: Integer);
begin
  X := X * X;
  Y := Y * Y;
  Z := Z * Z;

  WriteLn('[Inside Test] X = ', X, ', Y = ', Y, ', and Z = ', Z)
end;

begin
  ReadLn(X, Y, Z);
  WriteLn('Before calling Test, X = ', X, ', Y = ', Y, ', and Z = ', Z);
  Test(X, Y, Z);
  WriteLn('After calling Test, X = ', X, ', Y = ', Y, ', and Z = ', Z)
end.
