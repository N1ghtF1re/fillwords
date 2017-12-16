program fillwords;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  typesandconst in 'units\typesandconst.pas',
  Sasha in 'units\Sasha.pas';
var name:string;
    level:integer;
begin
  getConfig(name,level);
  Writeln('Welcome, ', name);
  Readln;
end.
