program vectores10
{hay que ver si el vector es esta cargado con nombres ordenados o al azar y hay que ordenarlos}
type
limite: 1..2000 ;
nombre = Array[] of string;
vectornombres = Array[limite] of nombre;
proccedure order(var vn ; a);{se agrega el orden y luego se agrega al vector de nombres}
var
i:integer;
nom:string;
diml:integer;
begin {intentamos usar las posiciones del vector para ir ordenando}
const diml:=2000;
i:=1;{hay que correr una para guardar nom sin que tire nulo}
if(vn[i-1] <> null)then begin
while(a[i] <> '')do begin 
if(a[i] < nom[i] )then begin {asignar a la posicion}
nom[]:=vn[i+1];
a[]:=vn[i];
end;
if(a[i] == nom[i])then begin {si son iguales comparar i+1}
if(a[i+1] < nom[i+1])then begin {asigno igual}
nom[]:=vn[i+1];
a[]:=vn[i];
end; {sino lo asigno al siguiente} else begin
 a[] = vn[i+1];{y desplazar todos los siguientes}
 for i:= 1 to diml do
 vn[i]:= vn[i+1];
 end;
end;
i++;
nom:=vn[i];{asignamos el valor actual al final pero al prinvipio del while este es el anterior}
 end;
end;
else nom:=vn[i]; {saves the data of this element to be compare in the next loop}
end;
proccedure buscarelem();{esto es para conseguir la posicion de un usuario en el vector por nombre}
var
begin
end;
proccedure leer(a);
begin
read(a);
end;
proccedure insert(vn;a);
var
begin
end;
proccedure delete(vn;a);
var
begin
end;

var
a:nombre;
vn:vectornombres;
i:integer;
op:string;
Begin
read('ingrese la operacion',op);    
while(op <> 'exit')do begin        
read('ingrese los nombres',a);
order(a);
read('ingrese la operacion',op);
end;
leer(a);    
End;