{ Read in marks in three subjects, and determine if pass/fail. If pass, the total marks, and the average marks }

program TotAvgMarks;

const
  TamPass = 40;
  EngPass = 40;
  MathsPass = 35;

var
  TamMarks, EngMarks, MathsMarks, TotMarks: Integer;
  AvgMarks: Real;

begin
  ReadLn(TamMarks, EngMarks, MathsMarks);

  if (TamMarks >= TamPass) and (EngMarks >= EngPass) and (MathsMarks >= MathsPass) then
    begin
      WriteLn('Pass!');
      TotMarks := TamMarks + EngMarks + MathsMarks;
      AvgMarks := TotMarks / 3;
      WriteLn('Total marks = ', TotMarks);
      WriteLn('Average marks = ', AvgMarks:5:2);
    end
  else
    WriteLn('Fail!')
end.
