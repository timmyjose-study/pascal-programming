{ find the sum of the series: 1/2 + 3/4 + 5/6 + ... + 99/100 }

program SumFracSeries(output);
var
  N: Real = 1.0;
  D: Real = 2.0;
  Sum: Real = 0.0;
begin
  while N <= 99 do
    begin
      Sum := Sum + N / D;
      N := N + 2.0;
      D := D + 2.0
    end;

  WriteLn(Sum:0:2)
end.
