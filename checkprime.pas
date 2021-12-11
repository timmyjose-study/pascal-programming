{ check if the input is prime or not }

program CheckPrime(input, output);

var
  N, D: LongInt;

begin
  ReadLn(N);

  for D := 2 to N-1 do
    if N mod D = 0 then
      begin
        WriteLn(N, ' is not prime');
        Exit
      end;

  WriteLn(N, ' is prime')
end.
