{

Programa de Manipula‡Æo de Pilha e Fila

O programa dever  construir uma fila de espera de atendimento
onde o usu rio dever  construir uma fila, permitir que sejam
inseridos novos elementos
Dever  ser pedido ao usu rio para liberar da fila "x" elementos
estes deverÆo ser empilhados e mostrados em forma de pilha de
atendimento
O programa dever  controlar os limites da fila, quando requisitado

GERAR FILA
INSERIR NA FILA
LIBERAR ATENDIMENTO
MOSTRAR PILHA ATENDIMENTO
SAIR

Aprontar para dia 25/11

}

program manipulacao_de_pilha_e_fila;
uses dos, crt;

fila = ^fila;
fila = record
 numero: integer;
 prox: fila;
end;

pilha = ^pilha;
pilha = record
 numero: integer;
 prox: pilha;
 ant: pilha;
end;

var
 primf, auxf: fila;
 primp, auxp: pilha;

procedure gerar;
begin
 primf := nil;
 auxf := nil;
 primp := nil;
 auxp := nil;
end;

procedure inserir;
var
 op: char;
begin
 clrscr;
{verificar se a fila esta vazia}
 if(fila^.)
{setar no final da fila}
 fila := primf;

 repeat

 until
 menu;
end;

procedure listar_processos;
var
 i, cm, lm: byte;
begin
 cm := 1; lm := 1;
 for i:=1 to cp.n_processo do
  begin
   clrscr;
   tela_processo(cm);
   gotoxy(15,5); writeln(cp.n_processo);
   inc(cm); inc(lm);
   readkey;
  end;
end;

procedure menu;
var
 op: byte;
begin
 getdate(ano, mes, dia, diasem);
 clrscr;
 tela;
 center('sistema de controle',2);
 gotoxy(3,23); writeln(dia, '/', mes, '/', ano);
 time(74,23);
 gotoxy(30,10); writeln('1 - criar processo');
 gotoxy(30,11); writeln('2 - listar');
 gotoxy(30,12); writeln('3 - sair');
 center('selecione a opcao desejada',23);
 gotoxy(33,21); write('--- > ');
 gotoxy(42,21); write(' < ---');
 gotoxy(40,21); readln(op);
 case op of
  1: cadastra_processo;
  2: listar_processos;
  end;
 end;

begin
 menu;
end.