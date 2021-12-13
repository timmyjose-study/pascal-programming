program NestedRecords(input, output);
type
  Dob = record
          Date: Integer;
          Month: String;
          Year: Integer;
        end;

  StdRec = record
            Name: String;
            Age: Integer;
            Bday: Dob;
          end;

var
  Student: StdRec;

begin
  with Student do
    begin
      WriteLn('Enter name');
      ReadLn(Name);
      WriteLn('Enter age');
      ReadLn(Age);
      
      with Bday do
        begin
          WriteLn('Enter date of birth');
          ReadLn(Date);
          WriteLn('Enter month of birth');
          ReadLn(Month);
          WriteLn('Enter year of birth');
          ReadLn(Year)
        end
    end;

    WriteLn('Name: ', Student.Name);
    WriteLn('Age: ', Student.Age);
    WriteLn('Birth details - Date: ', Student.Bday.Date, ', Month: ', Student.Bday.Month, ', Year: ', Student.Bday.Year)
end.
