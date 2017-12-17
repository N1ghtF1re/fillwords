unit Sasha;

interface
  uses Kiryl,SysUtils,typesandconst, Nikita;
var
   f: text;
   k:string;
   name,level:string;
   query:string;
   substr:string;
   isVseNorm: Boolean;
const link = 'includes\config.txt';
const letters = ['A'..'Z', 'a'..'z'];
procedure getConfig(var name:string;var level:integer);
procedure game(const lvl:integer; Words:TDictionary;var field: TPlayingField);
procedure writeMatrix(var Field:TPlayingField; size:integer);

implementation
procedure getConfig(var name:string;var level:integer);
begin
  assign(f,link);
  Reset(f);
  read(f,k);
  Close(f);
  if (Copy(k,1,4) <> 'name') then
  begin
    Rewrite(f);
    Writeln('Enter your name');
    Readln(name);
    query:='name="' + name + '" level="1"';
    write(f,query);
    Close(f);
  end
  else
  begin
    Reset(f);
    read(f,k);
    Delete(k,1,6);
    name:=Copy(k,1,Pos('"', k)-1);
    Delete(k,1,Pos('"', k)+8);
    delete(k,Pos('"', k),1);
    level:=StrToInt(k);
    Close(f);
  end;
end;

procedure writeMatrix(var Field:TPlayingField; size:integer);
var i,j:byte;
begin
  for i:=1 to size do
  begin
    for j:=1 to size do
    begin
       write(field[i,j]:2);
    end;
    writeln;
  end;
end;

procedure game(const lvl:integer; Words:TDictionary;var field: TPlayingField);
var fieldsize,cellsnum:integer;
i,j:byte;
var ib,jb,ie,je, badi, badj, currlength, numofwords, Vasya,Petya, min,max: integer;
backup: TPlayingField;
rand:byte;
str:string;
begin
  fieldsize:= 5+lvl div 5;
  writeln(fieldsize);
  for i:=1 to fieldsize do
  begin
    for j:=1 to fieldsize do
    begin
      field[i,j]:=' ';
    end;
  end;
  cellsnum:=fieldsize*fieldsize;

  repeat
    isVseNorm:= doItFilledOkay(field, fieldsize, badi, badj);
    if ( not isVseNorm ) then
    begin
      field:=backup;
    end;
    PullCoordinates(FieldSize, Words,field, ib,jb,ie,je);

    if ( isVseNorm ) then
    begin
      backup:=field;
      if(ib <> ie) then
        currlength:= abs(ie-ib)+1
      else
        currlength:= abs(je-jb)+1;
      numofwords:= StrToInt(Words[1,currlength]);
      rand:=Random(Numofwords-1)+2;
      str:=words[rand,currlength];

      if(ib <> ie) then
      begin
        if (ib > ie) then
        begin
          min:=ie;
          max:=ib;
        end
        else
        begin
          min:=ib;
          max:=ie;
        end;
        Petya:=1;
        vasya:=min;
        //for Vasya:=min to max do
        while (vasya <= max) do
        begin
          field[Vasya, jb]:=str[Petya];
          Inc(Petya);
          inc(Vasya);
        end;

      end
      else
      begin
        if (jb > je) then
        begin
          min:=je;
          max:=jb;
        end
        else
        begin
          min:=jb;
          max:=je;
        end;
        Petya:=1;
        vasya:=min;
        //for Vasya:=min to max do
        while (vasya <= max) do
        begin
          field[ib, Vasya]:=str[Petya];
          Inc(Petya);
          inc(Vasya);
        end;
      end;
      dec(cellsnum, currlength);
      writeMatrix(field, fieldsize);
      Writeln('Enter to continue ', Cellsnum);
      readln;
    end;


  until(cellsnum <= 0);

end;

end.







