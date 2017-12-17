program fillwords;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  typesandconst in 'units\typesandconst.pas',
  Kiryl in 'units\Kiryl.pas',
  Nikita in 'units\Nikita.pas',
  Sasha in 'units\Sasha.pas';

var name:string;
    level:integer;
    Words:TDictionary;
    PlayingField: TPlayingField;


begin
  getConfig(name,level);
  Writeln('Welcome, ', name);
  fillArray(Words);
  readln;
  game(level,Words, PlayingField);
end.
