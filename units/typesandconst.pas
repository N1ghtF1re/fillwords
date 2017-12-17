unit typesandconst;

interface
uses SysUtils;
  const
    fieldN = 20;
    NumWords = 80;
    maxsize = 12;

  type
    TPlayingField = array[1..FieldN, 1..FieldN] of char;
    TDictionary = array[1..NumWords, 1..maxsize] of string[maxsize];
    TWordsList = array [1..2, 1..NumWords*maxsize] of string;

implementation

end.

