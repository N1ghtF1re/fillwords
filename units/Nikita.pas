unit Nikita;
interface
uses typesandconst,SysUtils;
procedure PullCoordinates(const Fieldsize:integer; dictionary:TDictionary; var PlayingField:TplayingField; var ib,jb,ie,je:Integer);

implementation
procedure PullCoordinates(const Fieldsize:integer; dictionary:TDictionary; var PlayingField:TplayingField; var ib,jb,ie,je:Integer);
 var exiter:Boolean;
 var cells,direction,n:Integer;
 begin
 Randomize;
 exiter:=False;
  n:=fieldsize;
  repeat
    ib:=Random(n)+1;
    jb:=Random(n)+1;
  until  (playingField[ib,jb])=' ';
  repeat
    direction:=random(4)+1;             //1-Right 2-Bottom 3-Left 4-up
    case direction of
    1:
    if (jb<=3) and (playingField[ib,jb+1]=' ') and (playingField[ib,jb+2]=' ') then
      begin
      cells:=n-jb;
      je:=jb+random(cells-2)+3;
      ie:=ib;
      exiter:=True;
      end;
    2:
    if (ib<=3) and (playingField[ib+1,jb]=' ') and (playingField[ib+2,jb]=' ') then
      begin
      cells:=Abs(ib-n);
      ie:=ib+random(cells-2)+3;
      je:=jb;
      exiter:=True;                                                                              //1-Right 2-Bottom 3-Left 4-up
      end;
    3:
    if (jb>=3) and (playingField[ib,jb-1]=' ') and (playingField[ib,jb-2]=' ') then  //Left
      begin
      cells:= Abs(jb-n);
      je:=jb-random(cells-2)+3;
      ie:=ib;
      exiter:=True;
      end;
    4:
    if ((ib)>=3) and (playingField[ib-1,jb]=' ') and (playingField[ib-2,jb]=' ') then
      begin
      cells:=n-ib;
      ie:=ib+random(cells-2)+3;
      je:=jb;
      exiter:=True;
      end;
    end;

  until exiter;
end;



end.

