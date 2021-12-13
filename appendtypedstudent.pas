{
 Pascal does have Append, but that's only for text files. For binary files, the approach is to Reset the file, read a dummy record till the end of 
 the file, and then start appending from that position onwards.
 }

program AppendTypedStudent(input, output);
type
  StdRec = record
            Name: String;
            ExamNo: Integer;
            Tam: Integer;
            Eng: Integer;
            Maths: Integer;
          end;

var
  Student: StdRec;
  DataFileName: String;
  DataFile: File of StdRec;
  Cont: String;

begin
  WriteLn('Which file to append to?');
  ReadLn(DataFileName);

  Assign(DataFile, DataFileName);
  Reset(DataFile);

  while not Eof(DataFile) do
    Read(DataFile, Student);

  { now the file pointer is at the end of the file }
  Cont := 'YES';
  while (cont = 'Y') or (Cont = 'YES') do
    begin
      with Student do
        begin
          WriteLn('Enter name');
          ReadLn(Name);
          WriteLn('Enter exam number');
          ReadLn(ExamNo);
          WriteLn('Enter marks in Tamil, English, and Mathematics');
          ReadLn(Tam, Eng, Maths);
          Write(DataFile, Student)
        end;

      WriteLn('Add more students? [y/n]');
      ReadLn(Cont);
      Cont := Upcase(Cont)
    end;

  Close(DataFile)
end.
