program PosDemo(output);
var
  SrcStr: String = 'Be Perfect and Sincere';
  PatStr1: String = 'Perfect';
  PatStr2: String = 'Prospect';
begin
  WriteLn(Pos(PatStr1, SrcStr));
  WriteLn(Pos(PatStr2, SrcStr))
end.
