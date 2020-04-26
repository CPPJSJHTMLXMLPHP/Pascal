program vecmtr2b;
{
 El módulo debe devolver el vector A del cual se suprimen las componentes 
que se encuentran entre las posiciones I y J 
(inclusive las componentes de dichas posiciones).    
}
type
diml = 1..1000;
vectorA = Array [diml] of integer;
vectorres = Array [] of integer; 
proccedure sup;(var v;i;j);
const diml:integer;
const diml:= 1000;
var 
y:integer;
c:integer;
begin
if(i >= 1 and j <= diml)then begin {cargo un nuevo vector que tiene la psociones que quiero sacar}
  for c:=i to j do
  vr[y]:=vr[c];
  y++;  
  end;
  v:= v - vr ;
end;
proccedure re(v);
var
begin
readln(v);
 end;
var
vr:vectorres;
v:vectorA;
i:integer;
j:integer;
Begin
re(v);
readln(i);
readln(j);
sup(v,i,j);
write('El vector resultante es:',v);
End;    