program EnumeratedTypes;
{$APPTYPE CONSOLE}
uses
  SysUtils;
type
    TGreatLakes = (Erie, Ontario, Huron, Michigan, Superior);
    TSGreatLakes = Erie .. Ontario;
    TLGreatLakes = Huron .. Superior;    
      
const
    LakeNames : array [TGreatLakes] of string =
        ('Erie', 'Ontario', 'Huron', 'Michigan', 'Superior');
    area : array [TGreatLakes] of integer = 
        (9910, 7340, 23000, 22300, 31700);
    elevation : array [Erie .. Superior] of real =
        (570.38, 244.77, 578.68, 578.68, 600.38);
var
    GreatLakes: TGreatLakes;
    SGreatLakes: TSGreatLakes;
    LGreatLakes: TLGreatLakes;


  
  
begin
 //GreatLakes
  writeln('The GreatLakes.');
  for GreatLakes := Erie to Superior do
    begin
      writeln(LakeNames[GreatLakes] :9, ': ' ,area[GreatLakes]);
    end;
  writeln;
  
end.