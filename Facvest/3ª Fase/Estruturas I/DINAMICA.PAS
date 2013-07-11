{
PONTEIROS

Variaveis Estaticas >> ocupa espa‡o permanente enquanto o
   programa ou procedimento estiver ativo.

Variaveis Dinamicas >> caracterizados pelo tipo "Ponteiro"
   as quais alocam um espa‡o e qdo nÆo mais necessario desalocam
   este espa‡o

Declara‡Æo:
 p:^tipo {inteiro / real / string...

Inicializa‡Æo:
 Estatica:
  x: integer;
  x:=0;

 Dinamica:
  x:^integer;
  x:=nil;

==>> Construir um programa para criar uma lista dinamica encadeada
      para produtos de informatica:
}
program LDE;

uses crt, dos;

type
 p=^forma;
 forma=record
  prod:string[30];
  prox:p;
 end;

var
 lista:p;
 prim:p;
 aux:p;
procedure inicializar;
begin
 lista:=nil;
 prim:=nil;
 aux:=nil;
end;

procedure criar;
var
 op:char;
begin
 repeat
  clrscr;
  if lista = nil then
   begin
    new(lista);
    writeln('Entre com o Produto: ');
    readln(lista^.prod);
    lista^.prox:=nil;
    prim:=lista;
   end
   else
   begin
    aux:=lista;
    new(lista);
    aux^.prox:=lista;
    writeln('Entre com o Produto: ');
    readln(lista^.prod);
    lista^.prox:=nil;
   end;
  writeln('Deseja incluir mais produtos? <S/N> ');
  readln(op);
  op:=upcase(op);
 until(op='N');
end;

procedure listar;
begin
 lista:=prim;
 clrscr;
 repeat
  writeln('O Produto ‚: ', lista^.prod);
  lista:=lista^.prox;
 until(lista=nil);
 readkey;
end;

begin
 clrscr;
 inicializar;
 criar;
 listar;
end.