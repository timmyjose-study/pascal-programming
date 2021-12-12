program CopyString(output);
var
  SrcString, DstString: String;
begin
  SrcString := 'Cray XMP-14';
  DstString := Copy(SrcString, 6, 6);
  WriteLn(DstString)
end.
