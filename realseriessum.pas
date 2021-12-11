{ Sum of the series 1.0 + 1.1 + 1.2 + ... + 2.5 }

program RealSeriesSum(output);

var
  Start: Real = 1.0;
  Delta: Real = 0.1;
  Sum: Real = 0.0;

begin
  repeat
    Sum := Sum + Start;
    Start := Start + Delta
  until Start >= 2.5;

  WriteLn('1.0 + 1.1 + 1.2 + ... + 2.5 = ', Sum:0:3)
end.
