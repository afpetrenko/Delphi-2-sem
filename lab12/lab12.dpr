Program lab12;

type
  link = ^S;
  S = record
      data : integer;
      Next : link;
  end;

  var
u, x : link;
d : integer;



  Procedure input();
var
  i : byte;
  x: link;

  Begin
Randomize;
New(u);
u^.Next := nil;
u^.data := random(20)-10;
write(u^.data, ' ');

New(x);
x^.Next := nil;
x^.data := random(20)-10;
write(x^.data, ' ');
u^.Next := x;

for i := 1 to 8 do
  begin
    randomize;
    new(x^.Next);
    x.data := random(20)-10;
    write(x^.data, ' ');
  end;
x^.Next := nil;
End;



  Procedure finder(var e : integer);
var
  c : byte;
  x : link;

  begin
x := u;
c := 0;
repeat
     if x^.data = e then
                  inc(c);
     x := x^.Next;
until x^.Next = nil;
writeln('rere', c);
  end;






Begin
input();
writeln;
x := u;
repeat
     writeln(x^.data);
     x := x^.Next;
until x^.Next = nil;
writeln('Введите значение Е');
readln(d);
finder(d);
readln;
end.
