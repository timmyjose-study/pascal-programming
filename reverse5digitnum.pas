program Reverse5DigitNum;

var
  Num, A, B, C, D, E, RevNum : LongInt;

begin
  WriteLn('Enter a 5 digit number');
  ReadLn(Num);
  A := Num mod 10;
  B := (Num div 10) mod 10;
  C := (Num div 100) mod 10;
  D := (Num div 1000) mod 10;
  E := (Num div 10000) mod 10;
  RevNum := A * 10000 + B * 1000 + C * 100 + D * 10 + E;
  WriteLn(Num, ' reversed is ', RevNum)
end.
