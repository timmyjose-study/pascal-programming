program RecordPointer;
type
  EmpRec = record
            Id: Integer;
            Wage: Real;
          end;

  EmpRecPtr = ^EmpRec;

procedure ShowPointerValue(var Ptr: EmpRecPtr);
begin
  with Ptr^ do
    begin
      WriteLn('Id = ', Id, ', wage = ', Wage:0:3)
    end
end;

var
  Emp1Ptr, Emp2Ptr: EmpRecPtr;

begin
  New(Emp1Ptr);
  New(Emp2Ptr);

  with Emp1Ptr^ do
    begin
      Write('Enter id: ');
      ReadLn(Id);
      Write('Enter wage: ');
      ReadLn(Wage)
    end;

  with Emp2Ptr^ do
    begin
      Write('Enter id: ');
      ReadLn(Id);
      Write('Enter wage: ');
      ReadLn(Wage)
    end;

  WriteLn('Before pointer aliasing...');
  ShowPointerValue(Emp1Ptr);
  ShowPointerValue(Emp2Ptr);

  Dispose(Emp1Ptr);
  Emp1Ptr := Emp2Ptr;

  WriteLn('After pointer aliasing...');
  ShowPointerValue(Emp1Ptr);
  ShowPointerValue(Emp2Ptr);
  
 Dispose(Emp2Ptr)
end.
