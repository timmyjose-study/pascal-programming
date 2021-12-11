{ Enter a variable number of subject marks based on the value of `code`, and print the total marks }

program MarksCode;

var
  Code, ExamNo, S1, S2, S3, S4, S5, TotMarks: Integer;

begin
  WriteLn('Enter 1 for 3 subjects, 2 for 4 subjects, or 3 for 5 subjects');
  ReadLn(Code);

  if Code = 1 then
    begin
      WriteLn('Enter marks for 3 subjects');
      ReadLn(S1, S2, S3);
      ExamNo := 201;
      TotMarks := S1 + S2 + S3
    end
  else if Code = 2 then
    begin
      WriteLn('Enter marks for 4 subjects');
      ReadLn(S1, S2, S3, S4);
      ExamNo := 301;
      TotMarks := S1 + S2 + S3 + S4 
    end
  else
    begin
      WriteLn('Enter marks for 5 subjects');
      ReadLn(S1, S2, S3, S4, S5);
      ExamNo := 401;
      TotMarks := S1 + S2 + S3 + S4 + S5
    end;

  WriteLn('Exam No. = ', ExamNo, ', total marks = ', TotMarks)
end.
