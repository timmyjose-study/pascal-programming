program BinCopy(input, output);
const
  BufferSize = 8192;

var
  Infile: File;
  Outfile: File;
  Buffer: array[1..BufferSize] of Byte;
  BytesRead: Integer = 0;
  BytesWritten: Integer = 0;

begin
  if ParamCount() <> 2 then
    begin
      WriteLn('Usage: bincopy src-file target-file');
      Exit
    end;

  Assign(Infile, ParamStr(1));
  Reset(Infile, 1);
  Assign(Outfile, ParamStr(2));
  Rewrite(Outfile, 1);

  repeat
    BlockRead(Infile, Buffer, BufferSize, BytesRead);
    BlockWrite(Outfile, Buffer, BytesRead, BytesWritten)
  until (BytesRead = 0) or (BytesRead <> BytesWritten);

  Close(Outfile);
  Close(Infile)
end.
