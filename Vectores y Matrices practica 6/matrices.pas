program matriz5;
matriz = Array[Dimf,Dimc] of real;
var
Dimf:integer;
Dimc:integer;{esto puede que no sirva y haya que hacerlo con un entero fijo}
{
Dadaunamatrizdenúmerosenterosde50x50,realizarunprogramapara: 
}
{separamos en varios procedimientos  para adaptar a las dimensiones que se tengan}
Procedure Cargar (var M:matriz; Dimf:integer; Dimc:integer;);
var
i:integer;
j:integer;
begin
for j:=1 to Dimc do
 for i:=1 to Dimf do
readln('ingrese numero para la fila y luego para la columna',M[i,j]);
end;
Procedure filaspares(M:matriz; Dimf:integer; Dimc:integer;);
var
i: integer;
j:integer;
begin
for i:= 2 to Dimf i+2 do {Check}
 for j:= 1 to Dimc do
  writeln(M[i,j]);
{Columnas Impares}
for i:=1 to Dimc i+2 do
 for j:= 1 to  Dimf do
  writeln(M[i,j]); 
end;
Procedure diagonalprincipal (var M:matriz; Dimf:integer; Dimc:integer;);
{desde Dimc hasta columna 1 Dimfila}
var
i: integer; {Filas}
j: integer; {Columnas}
begin
i:= 1;
j:Dimc;
while(i <> Dimf) do {la ultima la imprimo aparte}
begin
 writeln(M[i,j]);
 i++;
 j:= j-1;
 end;
if(M[i,j] == M[Dimf,1])then begin
 writeln(M[i,j]);
end; 
end;

{++++++++++++++++++++++++++}
{Main Program}
var
M:matriz;
Dimc:integer;
Dimf:integer;
Begin
readln('ingrese dimension de fila',Dimf);
readln('ingrese dimension columna',Dimc);
Cargar(M, Dimf, Dimc); 
filaspares(M, Dimf, Dimc);   
End;
