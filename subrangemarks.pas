{$r+}
program SubrangeMarks(input, output);
type
  Marks = 1..100;

var
  M1, M2, M3: Marks;
  Tot: Integer;

begin
  WriteLn('Enter three marks');
  ReadLn(M1, M2, M3);
  Tot := M1 + M2 + M3;
  WriteLn('Total marks = ', Tot)
end.
