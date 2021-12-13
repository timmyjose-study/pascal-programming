{
 Untyped binary files can make use of BlockRead and BlockWrite, which have the following syntax:

   BlockRead(InHandle, Buffer, BufferSize, BytesRead);
   BlocWrite(OutHandle, Buffer, BytesRead, BytesWritten);
}

program CopyBinaryFileUntype(input, output);
const
  BufferSize = 8192;

var
  InfileName: String;
  Infile: File; { untyped, binary }
  OutfileName: String;
  Outfile: File;
  Buffer: array[1..BufferSize] of Byte;
  BytesRead: Integer = 0;
  BytesWritten: Integer = 0;

begin
  WriteLn('Enter input file');
  ReadLn(InfileName);
  Assign(Infile, InfileName);
  Reset(Infile, 1); { the second parameter is the record size }

  WriteLn('Enter output file');
  ReadLn(OutfileName);
  Assign(Outfile, OutfileName);
  Rewrite(Outfile, 1);

  repeat
    BlockRead(Infile, Buffer, BufferSize, BytesRead);
    BlockWrite(Outfile, Buffer, BytesRead, BytesWritten)
  until (BytesRead = 0) or (BytesRead <> BytesWritten);

  Close(Outfile);
  Close(Infile)
end.
