unit Sasha;

interface
  uses SysUtils, typesandconst;
var
   f: text;
   k:string;
   name,level:string;
   query:string;
   substr:string;
const link = 'includes\config.txt';
procedure getConfig(var name:string;var level:integer);
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
    level:=StrToInt(Copy(k,1,Pos('"', k)-1));
    Close(f);
  end;
end;

end.


