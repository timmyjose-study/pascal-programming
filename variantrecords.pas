program VariantRecords(input, output);
type
  StdRec = record 
            Name: String;
            case Option: Integer of
            1: (Tamil, English: Integer);
            2: (Hindi, Malayalam, Telugu: Integer);
          end;

var
  Student: StdRec;
  Option, Tot: Integer;

begin
  Tot := 0;
  with Student do
    begin
      WriteLn('Enter name');
      ReadLn(Name);

      WriteLn('Enter 1 for two subjects, or 2 for 3 subjects');
      ReadLn(Option);
      
      case Option of
      1: begin
          WriteLn('Enter the marks for the two subjects');
          ReadLn(Tamil, English);
          Tot := Tamil + English
        end;
      2: begin
          WriteLn('Enter the marks for the three subjects');
          ReadLn(Hindi, Malayalam, Telugu);
          Tot := Hindi + Malayalam + Telugu
        end
      else
        begin
          WriteLn('Invalid option');
          Exit
        end
      end
    end;

   WriteLn;
   WriteLn('Name: ', Student.Name, ', and total: ', Tot)
end.
