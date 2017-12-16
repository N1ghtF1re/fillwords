program fillwords;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  typesandconst in 'units\typesandconst.pas',
  Kiryl in 'units\Kiryl.pas',
  Sasha in 'units\Sasha.pas';

var name:string;
    level:integer;
    Words:TDictionary;
begin
  getConfig(name,level);
  Writeln('Welcome, ', name);
  fillArray(Words);
  Readln;
end.
