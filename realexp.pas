{ calculate r ^ n, where r is a real and n is an integer }

program RealExp(input, output);
var
  R: Real;
  Res: Real = 1.0;
  N, I: LongInt;
begin
  ReadLn(R, N);

  for I := 1 to N do
    Res:= Res * R;

  WriteLn(Res:0:2)
end.
