unit Kiryl;

interface
uses
    typesandconst,SysUtils;
procedure  fillArray(var dictionary:TDictionary);

implementation
procedure fillArray(var dictionary:TDictionary);
Const link = ('includes/library.txt');
var i,j,lenghtStr, leftbehind, N:Integer;
    inpStr:string;
    f:textfile;
begin
for i:=1 to maxSize do
  begin
  dictionary[1,i]:=IntToStr(0);
  end;
N:=0;
leftbehind:=84;
repeat
  assign(f,link);
  reset(f);
  readln(f,inpStr);

  lenghtStr:=length(inpStr);
  N:=StrToInt(dictionary[1,lenghtStr])+1;
  dictionary[N,lenghtStr]:=inpStr;
  dictionary[1,lenghtStr]:=IntToStr(N);


dec(leftbehind);
until leftbehind<1;
end;

function doItFilledOkay(var Arr:TPlayingField; fieldsize:integer):boolean;
var i,j:Integer;
    kek:Boolean;
begin
kek:=True;
for i:=1 to fieldsize do
  for j:=1 to fieldsize do
    if Arr[i,j] = ' ' then
      begin
      if (i<3) and (j<3) then
        if ((Arr[i+1,j] = ' ') and (Arr[i-1,j] = ' ')) or ((Arr[i,j+1] = ' ') and (Arr[i,j-1] = ' ')) or (Arr[i+2,j] = ' ') or (Arr[i,j+2] = ' ')
        then else kek:=false;
      if (i<fieldsize-2) and (i>3) and (j<3) then
        if ((Arr[i+1,j] = ' ') and (Arr[i-1,j] = ' ')) or ((Arr[i,j+1] = ' ') and (Arr[i,j-1] = ' ')) or (Arr[i+2,j] = ' ') or (Arr[i-2,j] = ' ') or (Arr[i,j+2] = ' ')
        then else kek:=false;
      if (i<fieldsize-2) and (i>3) and (j>3) and (j<fieldsize-2) then
        if ((Arr[i+1,j] = ' ') and (Arr[i-1,j] = ' ')) or ((Arr[i,j+1] = ' ') and (Arr[i,j-1] = ' ')) or (Arr[i+2,j] = ' ') or (Arr[i-2,j] = ' ') or (Arr[i,j+2] = ' ') or (Arr[i,j-2] = ' ')
        then else kek:=false;
      if (i>fieldsize-2) and (j>3) and (j<fieldsize-2) then
        if ((Arr[i+1,j] = ' ') and (Arr[i-1,j] = ' ')) or ((Arr[i,j+1] = ' ') and (Arr[i,j-1] = ' ')) or (Arr[i-2,j] = ' ') or (Arr[i,j+2] = ' ') or (Arr[i,j-2] = ' ')
        then else kek:=false;
      if (i<fieldsize-2) and (i>3) and (j>fieldsize-2) then
        if ((Arr[i+1,j] = ' ') and (Arr[i-1,j] = ' ')) or ((Arr[i,j+1] = ' ') and (Arr[i,j-1] = ' ')) or (Arr[i+2,j] = ' ') or (Arr[i-2,j] = ' ') or (Arr[i,j-2] = ' ')
        then else kek:=false;
      if (i>fieldsize-2) and (j>fieldsize-2) then
        if ((Arr[i+1,j] = ' ') and (Arr[i-1,j] = ' ')) or ((Arr[i,j+1] = ' ') and (Arr[i,j-1] = ' ')) or (Arr[i-2,j] = ' ') or (Arr[i,j-2] = ' ')
        then else kek:=false;
      end;
doItFilledOkay:=kek;
end;

end.
