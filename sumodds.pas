{ Sum odd numbers from 1 to N }

program SumOdds(input, output);

var
  N: LongInt;
  Sum: LongInt = 0;
  Curr: LongInt = 1;

begin
  ReadLn(N);

  while Curr <= N do
    begin
      Sum := Sum + Curr;
      Curr := Curr + 2
    end;

  WriteLn('Sum of odd numbers from 1 to ', N, ' = ', Sum)
end.
