{ find the roots of a quadratic equation }

program Quadratic(input, output);
var
  A, B, C: Real;
  Disc, Root1, Root2: Real;
begin
  ReadLn(A, B, C);
  Disc := B * B - 4.0 * A * C;

  if Disc > 0 then
    begin
      WriteLn('Real roots');
      Root1 := (-B + Sqrt(Disc)) / (2.0 * A);
      Root2 := (-B - Sqrt(Disc)) / (2.0 * A);
      WriteLn('Root1 = ', Root1:8:2, ', Root2 = ', Root2:8:2)
    end
  else if Disc = 0 then
    begin
      WriteLn('Equal Real roots');
      Root1 := -B / (2.0 * A);
      WriteLn('Root = ', Root1:8:2)
    end
  else
    begin
      WriteLn('Complex roots');
      Disc := -Disc;
      Root1 := Sqrt(Disc) / (2.0 * A);
      Root2 := -B / (2.0 * A);
      WriteLn('Root1 = ', Root1:8:2, ', Root2 = ', Root2:8:2)
    end;
end.
