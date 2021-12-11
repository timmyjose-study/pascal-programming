{ Sum of the digits of a given number }

program SumDigits(input, output);

var
  M, N: LongInt;
  Sum: LongInt = 0;

begin
  ReadLn(N);
  M := N;

  repeat
    Sum := Sum + N mod 10;
    N := N div 10
  until N = 0;

  WriteLn('Sum of the digits of ', M, ' = ', Sum)
end.
