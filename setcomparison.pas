program SetComparison(output);
type
  LowCase = 'a' .. 'z';
  CharSet = set of LowCase;

procedure WriteSet(CS: CharSet);
var
  Idx: Char;
begin
  for Idx := 'a' to 'z' do
    if Idx in CS then
      Write(Idx:3);
  WriteLn
end;

var
  SetA, SetB, SetC, SetD: CharSet;

begin
  SetA := ['a' .. 'e'];
  WriteLn('SetA is');
  WriteSet(SetA);

  SetB := ['b' .. 'g'];
  WriteLn('SetB is');
  WriteSet(SetB);

  SetC := ['a' .. 'c'];
  WriteLn('SetC is');
  WriteSet(SetC);

  SetD := ['b' .. 'f'];
  WriteLn('SetD is');
  WriteSet(SetD);
  WriteLn;

  WriteLn('SetA = SetB?');
  WriteLn(SetA = SetB);

  WriteLn('SetA <> SetB?');
  WriteLn(SetA <> SetB);

  WriteLn('SetD >= SetB?');
  WriteLn(SetD >= SetB);

  WriteLn('SetB <= SetD?');
  WriteLn(SetB <= SetD)
end.
