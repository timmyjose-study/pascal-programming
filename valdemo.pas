{ val is used to convert a string representation of a number into its numeric value }

program ValDemo(input, output);
var
  S: String;
  I: Integer;
  R: Real;
  Err: Integer;
begin
  ReadLn(S);
  Val(S, R, Err);
  WriteLn('Err = ', Err);

  if Err = 0 then
    WriteLn(R:0:3);

  ReadLn(S);
  Val(S, I, Err);
  WriteLn('Err = ', Err);

  if Err = 0 then
    WriteLn(I);
end.
