{ str is the converse of val - converts a numeric value into a string }

program StrDemo(input, output);
var
  R: Real;
  I: Integer;
  S: String;
begin
  ReadLn(R);
  Str(R:0:3, S);
  WriteLn(S, ' has length ', Length(S));

  ReadLn(I);
  Str(I, S);
  WriteLn(S, ' has length ', Length(S))
end.
