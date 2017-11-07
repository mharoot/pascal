program EnumeratedTypes;

uses
  SysUtils;
  

type GreatLakes = (Erie, Ontario, Huron, Michigan, Superior);
type LakeProperties = (area, elevation);


var
GL: GreatLakes;
LP: LakeProperties;

const
LakeNames : array [GreatLakes] of string =
        ('Erie', 'Ontario', 'Huron', 'Michigan', 'Superior');
Lakes:  array [GreatLakes, LakeProperties] of real = 
( 
(9910,570.38), (7340, 244.77), (23000, 578.68 ), (22300, 578.68), (31700, 600.38)
);
  
begin
//  writeln(Lakes [Erie, area]:20:2);
 // writeln(Lakes [Ontario, area]:20:2);
 // writeln;
  
  writeln('Lake' :9, 'Area' :9, '':15,'Elevation');
  for GL := Erie to Superior do
    begin
        writeln(LakeNames[GL] :9, ': ');// ,Lakes [GL, area]:20:2);
        for LP := area to elevation do
        begin
            write(' ',Lakes [GL, LP] :20:2)
        end;
        writeln;
      
    end;
  
end.

