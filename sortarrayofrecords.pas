{ input file: employees.in}

program SortArrayOfRecords(input, output);
type
  Emp = record
          Name: String;
          Bp, Da, Allo, Dedn: Integer;
        end;

  EmpArr = array[1..100] of Emp;
  TotArr = array[1..100] of Integer;

var
  Employees: EmpArr;
  TotalPays: TotArr;
  N, I: Integer;

procedure ReadEmployee(var E: Emp; var T: Integer);
begin
  with E do
    begin
      WriteLn('Enter employee name');
      ReadLn(Name);
      WriteLn('Enter Bp, Da, Allo, and Dedn');
      ReadLn(Bp, Da, Allo, Dedn);
      T := Bp + Da + Allo - Dedn
    end
end;

procedure DisplayEmployees(Emps: EmpArr; Tots: TotArr; N: Integer);
var 
  I: Integer;
begin
  for I := 1 to N do
    WriteLn(Emps[I].Name, ' with total pay ', Tots[I])
end;

procedure SortEmployees(var Emps: EmpArr; var Tots: TotArr; N: Integer);
var
  I, J: Integer;

procedure SwapEmployee(var E1, E2: Emp);
var
  T: Emp;
begin
  T := E1;
  E1 := E2;
  E2 := T
end;

procedure SwapTot(var T1, T2: Integer);
var
  T: Integer;
begin
  T := T1;
  T1 := T2;
  T2 := T
end;

begin
  for I := 1 to N do
    for J := 1 to N-1 do
      if Tots[J] > Tots[J+1] then
        begin
          SwapEmployee(Emps[J], Emps[J+1]);
          SwapTot(Tots[J], Tots[J+1])
        end
end;

begin
  ReadLn(N);
  for I := 1 to N do
    ReadEmployee(Employees[I], TotalPays[I]);
  WriteLn;

  WriteLn('Before sorting...');
  DisplayEmployees(Employees, TotalPays, N);
  WriteLn;

  SortEmployees(Employees, TotalPays, N);
  WriteLn('After sorting...');
  DisplayEmployees(Employees, TotalPays, N)
end.
