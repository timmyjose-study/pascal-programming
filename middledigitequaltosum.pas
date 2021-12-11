{ enter a 3 digit number and check if the middle digit is the sum of the other two digits }

program MiddleDigitEqualToSum(input, output);
var
  N, M, F, S, T: LongInt;
  L: Integer = 0;
begin
  ReadLn(N);

  M := N;
  while M <> 0 do
    begin
      L := L + 1;
      M := M div 10
    end;

  if L <> 3 then
    begin
      WriteLn('Invalid input: not a 3 digit number');
      Exit
    end;

  T := N mod 10;
  S := (N div 10) mod 10;
  F := (N div 100) mod 10;

  if S = F + T then
    WriteLn('Yes')
  else
    WriteLn('No');
end.
