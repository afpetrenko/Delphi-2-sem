Program lab11;
type
  ssilka = ^ integer;
  vector = array[1..100] of ssilka;

var
 x : vector;
 i : byte;
 q : pointer;



  Procedure input();
var
 i : byte;

begin
   for I := 1 to 100 do
     begin
       new(x[i]);
       x[i]^ :=  random(200)-100;
     end;
end;

  Function count(vec: vector): byte;
  var
    i: byte;
  begin
    count := 0;
    for I := 1 to 100 do
      begin
        if vec[i]^ = 0 then
          inc(result);
      end;
  end;



  begin

input();
for I := 1 to 100 do
  begin
    writeln(x[i]^);
  end;
writeln;
writeln('Result');
writeln(count(x));
readln;
end.

