unit Kiryl;

interface
uses
    typeandconst,SysUtils;
procedure  fillArray(var dictionary:TDictionary);

implementation

procedure fillArray(var dictionary:TDictionary);
Const link = ('includes/library.txt');
var i,j,lenghtStr, leftbehind, N:Integer;
    inpStr:string;
    f:textfile;
begin
for i:=1 to 12 do
  begin
  dictionary[1,i]:=IntToStr(0);
  end;
N:=0;
leftbehind:=84;
repeat
  assign(f,link);
  reset(f);
  readln(f,inpStr);

  lenghtStr:=lenght(inpStr);
  N:=StrToInc(dictionary[1,lenghtStr])+1;
  dictionary[N,lenghtStr]:=inpStr;
  dictionary[1,lenghtStr]:=IncToStr(N);


dec(leftbehind);
until leftbehind<1;
end;

end.
