{ some builtin functions }

program BuiltinFunctions(output);
var
  I: Integer;
  R: Real;
begin
  I := 42;
  WriteLn('Abs(', I, ') = ', Abs(42));
  WriteLn('Sqr(', I, ') = ', Sqr(I));
  WriteLn('Sqrt(', I, ') = ', Sqrt(I));

  R := 3.14159;
  WriteLn('Sqr(', R, ') = ', Sqr(R));
  WriteLn('Sqrt(', R, ') = ', Sqrt(R));
  WriteLn('Abs(', R, ') = ', Abs(R));
  WriteLn('Frac(', R, ') = ', Frac(R));
  WriteLn('Int(', R, ') = ', Int(R));
  WriteLn('Round(', R, ') = ', Round(R));
  
  R := 3.95;
  WriteLn('Round(', R, ') = ', Round(R));
  WriteLn('Trunc(', R, ') = ', Trunc(R));
  
  i := -42;
  WriteLn('Abs(', I, ') = ', Abs(42));
  R := -R;
  WriteLn('Abs(', R, ') = ', Abs(R));

  I := 3;
  WriteLn('e^', I, ' = ', Exp(I));
  WriteLn('Ln(', Exp(I), ') = ', Ln(Exp(I)));

  WriteLn('Pi = ', Pi:8:8);
end.