program vectores_uno
type vector = Array [1..40] of real;
proccedure leervectores(var v:vector,var pro,var val,con,x,y,var cont)  {agregar dos valores maximos}
 var
   i:integer;
   g:real;
 begin
 val:=0;
 if (con == 0)then begin
 for(i:=1 to 40)do begin
   read(v[i]);
   val:= val + v[i];
      end
 pro = val/40
   end else begin
     {en este proceso se necesita usar la dimension logica y fisica
      y en especial hay que tener en cuenta que se pasan dos valores y no dos indices}
  for(i:= 1 to 40) do begin
    val = read(v[i]);
     if(y<val and val< x) then begin
     cont:= cont + 1;
end
   End
{Main program}
var
  cont:integer
  con:integer;
  max1,max2:real;
  pro:integer;
  val:real;
  v:vector
  x,y:real; {this will help with the max and min set for the array}
begin
read("Ingrese 1 si desea setear un limite superior e inferior para
el vector o 0 si no lo utilizara",con);
cont:=0;
readln(x);
readln(y);
max1:= -1;
max2:= -2;
 leervectores(v,pro,val,con,x,y,cont);
 if(con == 1) then begin
 write('hay',cont,'elementos dentro del limite inferior:',y 'y el limite superior:',x);
 end else begin
  write('el promedio es:',pro);
  end
End
