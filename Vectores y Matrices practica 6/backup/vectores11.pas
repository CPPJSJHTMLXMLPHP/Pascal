program vectores11
type
vectorreales = Array[] of real;
{
Construir un programa que lee desde teclado una secuencia de números reales hasta que se
introduzca el 50. Informar los 7 números mayores de la secuencia.
Nota: Implemente la solución sin almacenar TODOS los números leídos.    
}
proccedure insertar(var r:vectorreales;var diml:integer,pos:integer{1 a 7};elem:integer);
var
i:integer;
begin
for i := dimL to pos do r[i+1]:= r[j];
r[pos]:= elem;
dimL:=dimL+1;
end;
var 
{preguntar por cada uno si es mayor que su anterior y asi siete condicionales}
{e insertar en la posicion que le corresponde}
r:vectorreales;
diml:integer;
max1:real;
max2:real;
i:integer;
elem:real;
begin
elem:=0;
diml:=0;
max1:= 10;
max2:= -1;
r:=0;
i:=0;
pos:integer;
read('ingrese el numero real',r)
{aca estamos determinando bien los (7) 
maximos pero hay que insertarlos}
while(r <> 50)do begin
if(r[i+1]== 0)then begin
 if(r[i] > max2)then begin
 max2:=r[i]; {enves de esto insertarlo en la posicion uno}
 elem:=r[i];
 end; 
end; 
else if(r[i]>r[1])then begin {insertar en la posicion uno}
elem:=r[i];
pos:=1;
 Insertar (v, dimL, pos, elem);
 exito := true
 end
 else exito := false; 
end; else if(r[i]>r[2])then begin{insertar en la posicion dos}
elem:=r[i];
pos:=2;
 Insertar (v, dimL, pos, elem);
 exito := true
 end
 else exito := false; 
end; else if(r[i]>r[3])then begin{insertar en la posicion tres}
elem:=r[i];
pos:=3;
 Insertar (v, dimL, pos, elem);
 exito := true
 end
 else exito := false; 
end;else if(r[i]>r[4])then begin{insertar en la posicion cuatro}
elem:=r[i];
pos:=4;
 Insertar (v, dimL, pos, elem);
 exito := true
 end
 else exito := false; 
end;else if(r[i]>r[5])then begin{insertar en la posicion cinco}
elem:=r[i];
pos:=5;
 Insertar (v, dimL, pos, elem);
 exito := true
 end
 else exito := false; 
end;else if(r[i]>r[6])then begin{insertar en la posicion seis}
elem:=r[i];
pos:=6;
 Insertar (v, dimL, pos, elem);
 exito := true
 end
 else exito := false; 
end;else if(r[i]>r[7])then begin{insertar en la posicion siete}
elem:=r[i];
pos:=7;
 Insertar (v, dimL, pos, elem);
 exito := true
 end
 else exito := false; 
end;
read('ingrese el numero real siguiente',r)
i++;
end;    
end;