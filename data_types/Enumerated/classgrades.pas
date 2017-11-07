program EnumeratedTypes;

uses
  SysUtils;
  
type metrics = (Mean, Median, Max);
type sections = (MW8, MW11);
type assignment = (HW, Q, MT1, MT2, Final);

var
M: metrics;
S: sections;
A: assignment;
Grades: array [sections, metrics, assignment] of integer;
  
begin
  Grades [MW8, Mean, HW] :=67;
  writeln(Grades [MW8, Mean, HW]);
end.