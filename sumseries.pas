{ sum the following series: -1, 2, -4, 8, -16, .... +1024 }

program SumSeries(output);
var
  N: LongInt = -1;
  Sum: LongInt = 0;
begin
  repeat
    Sum :=  Sum + N;
    N := N * -2
  until N >= 1024;

  WriteLn(Sum);
end.
