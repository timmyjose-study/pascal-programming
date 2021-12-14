program CompEnum(output);
type
  Brand = (Nexus, Dcm, Hcl, Siva);

var
  Computer: Brand;

begin
  Computer := Hcl;
  case Computer of
  Nexus: WriteLn('Well known for LAN');
  Dcm: WriteLn('Best in mini computers');
  Hcl: WriteLn('Famous for its Busybee systems');
  Siva: WriteLn('Dominating the PC field');
  else
    WriteLn('Invalid system')
  end
end.