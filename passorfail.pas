{ Determine if the student has passed or failed depending on the marks in Tamil, English, and Maths }

program PassOrFail;

const
  TamPass = 40;
  EngPass = 40;
  MathsPass = 35;

var
  TamMarks, EngMarks, MathsMarks: Integer;

begin
  ReadLn(TamMarks, EngMarks, MathsMarks);

  if (TamMarks >= TamPass) and (EngMarks >= EngPass) and (MathsMarks >= MathsPass) then
    WriteLn('Pass!')
  else
    WriteLn('Fail!');
end.
