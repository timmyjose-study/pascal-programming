program SetOfChars(output);
type
  LowCase = 'a' .. 'z';
  SetOfChar = set of LowCase;

var
  SetA, SetB, SetC, SetD: SetOfChar;

procedure WriteSet(CharSet: SetOfChar);
var
  CharIdx: Char;
begin
  for CharIdx := 'a' to 'z' do
    if CharIdx in CharSet then
      Write(CharIdx:3);
  WriteLn
end;

begin
  SetA := ['a' .. 'e'];
  SetB := ['b' .. 'g'];
  SetC := ['a' .. 'c'];
  SetD := ['b' .. 'f'];

  WriteLn('Set A is..');
  WriteSet(SetA);

  WriteLn('Set B is..');
  WriteSet(SetB);

  WriteLn('Set C is..');
  WriteSet(SetC);

  WriteLn('Set D is..');
  WriteSet(SetD);

  WriteLn('SetA union SetB');
  WriteSet(SetA + SetB);

  WriteLn('SetA difference SetB');
  WriteSet(SetA - SetB);

  WriteLn('SetC intersection SetD');
  Writeset(Setc * SetD)
end.

