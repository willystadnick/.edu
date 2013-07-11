program trabalho1_estruturasII;

uses crt,dos;

type
 pont= ^ponteiro;
 ponteiro= record
  cont: integer;
  esq: pont;
  dir: pont;
 end;

const
 valor_raiz = 10;

var
 raiz: pont;
 opc: byte;
 nro: integer;

procedure inicializar;
begin
 raiz^.cont:= valor_raiz;
 raiz^.esq:= nil;
 raiz^.dir:= nil;
end;

procedure inserir(num: integer; base: pont);
begin
 if num > base^.cont then
  if base^.dir = nil then
   begin
    new(pont);
    pont^.cont:= num;
    pont^.dir:= nil;
    pont^.esq:= nil;
    base^.dir:= pont;
   end
   else
    inserir(num, base^.dir)
  else
   if base^.esq = nil then
    begin
    new(pont);
    pont^.cont:= num;
    pont^.dir:= nil;
    pont^.esq:= nil;
    base^.esq:= pont;
    end
    else
     inserir(num, base^.esq);
end;

procedure insere;
begin
 clrscr;
 writeln('Digite o n£mero que deseja inserir na  rvore: ');
 readln(nro);
 inserir(nro, raiz)
end;

procedure preordem(base: pont);
begin
 if base <> nil then
  begin
   write(base^.cont, ', ');
   preordem(base^.dir);
   preordem(base^.esq);
  end;
 readkey;
end;

procedure emordem(base: pont);
begin
 if base <> nil then
  begin
   preordem(base^.esq);
   write(base^.cont, ', ');
   preordem(base^.dir);
  end;
 readkey;
end;

procedure posordem(base: pont);
begin
 if base <> nil then
  begin
   preordem(base^.esq);
   preordem(base^.dir);
   write(base^.cont, ', ');
  end;
 readkey;
end;

begin
 clrscr;
 inicializar;
 repeat
  clrscr;
  writeln('-=- µrvores Bin rias -=-');
  writeln('1 - Inserir');
  writeln('2 - Percorrer Pr‚-Ordem');
  writeln('3 - Percorrer Em-Ordem');
  writeln('4 - Percorrer P¢s-Ordem');
  writeln('5 - Sair');
  writeln('Opcao: ');
  readln(opc);
  case opc of
   1 : insere;
   2 : preordem(raiz);
   3 : emordem(raiz);
   4 : posordem(raiz);
  end;
 until(opc = 5);
end.