program EnumeratedTypes;
{$APPTYPE CONSOLE}
uses
  SysUtils;
type
  TMonth =(January, February, March, April, May, June, July, August,
         September, October, November, December);
  TMonthQuarter1 = January .. March;
  TSpringMonth = March .. May;
const
  AverageLondonRainfall : array [January .. December] of integer =
                          (61, 36, 50, 42, 45, 46, 46, 44, 43, 73, 45, 59);
  MonthNames : array [January .. December] of string =
     ('January', 'February', 'March', 'April', 'May', 'June',
      'July', 'August', 'September', 'October', 'November', 'December');
var
  Month: TMonth;
  MonthQuarter1 : TMonthQuarter1;
  SpringMonth : TSpringMonth;
  SpringTotal, SummerTotal, AutumnTotal, WinterTotal, MonthNum : integer;
begin
  //Monthly
  writeln('The average monthly rainfall (mm) in London is as follows.');
  for Month := January to December do
    begin
      writeln(MonthNames[Month] :9, ': ' ,AverageLondonRainfall[Month]);
    end;
  writeln;
  //Spring
  SpringTotal := 0;
  for SpringMonth := low(TSpringMonth) to high(TSpringMonth) do
    begin
       SpringTotal := SpringTotal + AverageLondonRainfall[SpringMonth];
    end;
  writeln('Total average rainfall (mm) for Spring: ', Springtotal);
  //Summer
  SummerTotal := 0;
  for Month := June to August do
    begin
       SummerTotal := SummerTotal + AverageLondonRainfall[Month];
    end;
  writeln('Total average rainfall (mm) for Summer: ',SummerTotal);
  //Autumn
  AutumnTotal := 0;
  Month := August;
  repeat
     Month := succ(Month);
     AutumnTotal := AutumnTotal + AverageLondonRainfall[Month];
  until Month = November;
  writeln('Total average rainfall (mm) for Autumn: ', AutumnTotal);
   //Winter
  WinterTotal := AverageLondonRainfall[December] + AverageLondonRainfall[January] +
                 AverageLondonRainfall[February];
  writeln('Total average rainfall (mm) for Winter: ',WinterTotal);
  writeln;
  //Selected month
  write('Which month in the first quarter? Type 1 for Jan, 2 for Feb, 3 for Mar. ' );
  readln(MonthNum);
  writeln;
  case MonthNum of
    1: MonthQuarter1 := January;
    2: MonthQuarter1 := February;
    3: MonthQuarter1 := March;
  end;
   writeln('Average rainfall (mm) in London for ',MonthNames[MonthQuarter1],
                ':  ',AverageLondonRainfall[MonthQuarter1]);
  readln;
end.