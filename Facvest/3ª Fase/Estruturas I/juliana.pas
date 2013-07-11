Program LDE;


Uses Crt, dos;

Type

     P = ^ forma;
     Forma=Record
           Produto:string[30];
           Prox:P;
end;

Var
Lista: P;
Prim : P;
aux  :p;
Procedure menu;forward;

Procedure sair;forward;

Procedure Inicializar;

Begin
  Lista:=nil;
  Prim:=nil;
end;


PROCEDURE TELA;

VAR
I  :INTEGER;
BEGIN

FOR I:=1 TO 78 DO
BEGIN
     GOTOXY(I+1,1);
     WRITELN('Í');
     GOTOXY(I+1,3);
     WRITELN('Í');
     GOTOXY(I+1,22);
     WRITELN('Í');
     GOTOXY(I+1,24);
     WRITELN('Í');
END;

FOR I:=1 TO 22 DO
BEGIN
   GOTOXY(1,I+1);
   WRITELN('º');
   GOTOXY(79,I+1);
   WRITELN('º');
END;

GOTOXY(1,1);
WRITELN('É');
GOTOXY(79,1);
WRITELN('»');
GOTOXY(1,24);
WRITELN('È');
GOTOXY(79,24);
WRITELN('¼');
GOTOXY(1,3);
WRITELN('Ì');
GOTOXY(79,3);
WRITELN('¹');
GOTOXY(1,22);
WRITELN('Ì');
GOTOXY(79,22);
WRITELN('¹');

END;

PROCEDURE CENTER(TEXTO:STRING;Y:INTEGER);

BEGIN
   GOTOXY(40-(LENGTH(TEXTO) DIV 2),Y);
   WRITELN(TEXTO);
END;


Procedure Criar_lista;

Var
op:char;


Begin
  Repeat
    clrscr;
    If (prim = nil) then
       begin
           new(lista);
           tela;
           center('Cadastro de Produtos - LED',2);
           gotoxy(15,10);
           Write('Entre com o produto -> ' );
           Readln(Lista^.Produto);
           Lista^.Prox:=Nil;
           Prim:=Lista;
       end
    else
        Begin
          clrscr;
          tela;
          center('Cadastro de Produtos - LED',2);
          aux:=lista;
          new(lista);
          aux^.prox:=lista;
          gotoxy(15,10);
          Write('Entre com o Produto -> ');
          Readln(lista^.Produto);
          Lista^.Prox:=nil;
        end;
    Gotoxy(15,12);
    Write('Deseja cadastrar mais um produto ? <s> <n> ' );
    Readln(op);
    op:=upcase(op);
    Until (op='N');
    menu;
end;


Procedure listar;
Var
y  :integer;

Begin
   if (lista=nil) and (prim=nil) then
      Begin
        clrscr;
        tela;
        center('LED Listagem de Produtos',2);
        center('Lista Vazia !',12);
        readkey;
        menu;
      end
   else
      begin
        clrscr;
        tela;
        center('Listagem de Produtos - LED',2);
        lista:=prim;
        y:=5;
        Repeat
           gotoxy(30,y);
           Writeln('Produto -> ' , lista^.Produto);
           Lista:=lista^.prox;
           inc(y);
        until (lista=nil);
        readkey;
        menu;
      end;
end;

Procedure Pesquisar;

Var

Prod_busca      :string;
achou           :boolean;

Begin
      clrscr;
      tela;
      lista:=prim;
      center('LED - Pesquisa de Produto',2);
      gotoxy(20,10);
      Write(' Entre com o Produto procurado -> ');
      Readln(prod_busca);
      achou := false;
      Repeat
         if (prod_busca = lista^.produto) then
           begin
             achou:=true;
             clrscr;
             tela;
             center('LED - Busca de Produtos',2);
             gotoxy(30,10);
             Write('Produto -> ' );
             Writeln(Lista^.Produto);
             Readkey;
           end
         else
              lista:=lista^.prox;
      Until(lista=nil) or (achou=true);
        if (achou = false) then
           begin
              clrscr;
              tela;
              center('LED - Busca de Produtos',2);
              center(' Produto nao Cadastrado',10);
              readkey;
           end;
      menu;
end;


Procedure alterar;

Var
achou            :boolean;
prod_busca       :string;
op               :char;

Begin
  clrscr;
  tela;
  lista:=prim;
  center(' LED - Alteracao de Dados',2);
  gotoxy(20,10);
  write('Produto a ser alterado -> ');
  readln(prod_busca);
  achou := false;
      Repeat
         if (prod_busca = lista^.produto) then
            begin
             achou:=true;
             clrscr;
             tela;
             center('LED - Alteracao de Dados',2);
             gotoxy(20,11);
             Write(