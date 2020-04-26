program vectores5b;
vectora = Array [1..dimF] of integer;
vectorb = Array [] of integer;
Type Indice = 0.. DimF;
Function diml ( vb:vectorb; var diml: Indice): Indice; var diml : Indice;
var
i: integer;
begin
i:= 1;
while (v[i] <> null) do 
diml:=v[i];
i++;
end; {conseguimos las dimensiones del segundo vector}
 
 Procedure Insertar (var va:vectora;var vectorb:vectorb; var diml:Indice; i:integer); 
var j: integer;
var w:integer;
var c:integer;
begin
c:=1;
j:=i;
w:=i+1;{va a pasar a valer i+ dimb}
{cargo todo el vector b desde va[i] hasta va[i+1]}
while(vb[j]<>vb[dimb])do {mientras que el valor de la posicion de b no sea la de la ultima psoicion}
{movemos uno el valor antes de cargar el nuevo valor}
va[j+1]:= vb[c];
va[j+1]:=va[j+2]; 
j++;
c++; 
{ 
for j:= diml downto pos do v [ j +1 ] := v [ j ] ; v [ pos ] := elem;
dimL := diml + 1;
}
End;
{Main program} 
 var 
 pos: indice;dimf:integer;dimb:integer;
 va:vectora;vb:vectorb;vi:integer;
 i:integer;z:integer;exito: boolean;operacion: char;
 j:integer;
begin
dimf:= 80;
j:=1;
read('no ingrese nada si quiere seguir cargando',operacion);
while(operacion == null)do
 read('ingrese un numero para el vector a',vi);
 va[j]:=vi;
 j++;
read('ingrese una letra para dejar de cargar'operacion);
{cargamos el vector a}
read('ingrese el maximo indice del vector b',dimb);
read('ingrese el numero que representa la posicion para el vector b',i);
if(i<dimf+1)then begin 
diml(vb,diml);
{cargamos el vector b}
for j:=1 to dimb do
read('ingrese un valor para el vectorb',vi);
vb[i]:=vi;{cargamos ese valor ingresado hasta terminar el vector}
if (diml < dimF) then begin
Insertar (va, vb, diml, i, exito);
exito := true
end
end
END;
