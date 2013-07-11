program lista_dinamica_duplamente_encadeada;

uses
 crt, dos;

type
 p = ^forma;
 forma = record
  prod : string[30];
  prox : p;
  ant : p;
 end;

var
 ld, prim, aux : p;
 op : byte;

procedure ordenar;
var
 trocou: byte;
 produto: string[30];
begin
 trocou:=0;
 clrscr;
 ld:=prim;
 if ld = nil then
  begin
   write('Lista Vazia');
   readkey;
  end
 else
  begin
   repeat
    aux:=prim;
    ld:=prim;
    ld:=ld^.prox;
    trocou:=0;
    while aux^.prox<>nil do
     begin
      if aux^.prod>ld^.prod then
       begin
        trocou:=1;
        produto:=aux^.prod;
        aux^.prod:=ld^.prod;
        ld^.prod:=produto;
        aux:=ld;
        ld:=ld^.prox;
       end
      else
       begin
        aux:=ld;
        ld:=ld^.prox;
       end;
     end;
   until (trocou=0);
  end;
end;

procedure inicializar;
begin
 ld := nil;
 prim := nil;
 aux := nil;
end;

procedure criar;
var
 op : char;
begin
 repeat
  clrscr;
  if(prim = nil) then
   begin
    new(ld);
    writeln('Produto: '); readln(ld^.prod);
    ld^.prox := nil;
    ld^.ant := nil;
    prim := ld;
    aux := ld;
   end
  else
   begin
    new(ld);
    writeln('Produto: '); readln(ld^.prod);
    ld^.ant := aux;
    aux^.prox := ld;
    ld^.prox := nil;
    aux := ld;
   end;
  writeln('Novamente? '); readln(op);
  op := upcase(op);
 until(op = 'N');
 writeln('Deseja Ordenar a Lista? '); readln(op);
 op := upcase(op);
 if op = 'S' then ordenar;
end;

procedure listar;
var
 op : byte;
begin
 clrscr;
 ld := prim;
 if(ld = nil) then
  begin
   writeln('Lista Vazia'); readkey;
  end
 else
  begin
   writeln('1 - Ordem Normal');
   writeln('2 - Ordem Inversa');
   writeln('3 - Voltar');
   readln(op);
   case op of
   1:
    begin
     while(ld <> nil) do
      begin
       writeln('Produto: ', ld^.prod);
       ld := ld^.prox;
       delay(500);
      end;
     readkey;
    end;
   2:
    begin
     while(ld^.prox <> nil) do
      begin
       ld := ld^.prox;
      end;
     while(ld <> nil) do
      begin
       writeln('Produto: ', ld^.prod);
       ld := ld^.ant;
       delay(500);
      end;
     readkey;
    end;
  end;
 end;
end;

procedure mostrar;
var
 op : byte;
 cont : integer;
begin
 clrscr;
 ld := prim;
 cont := 0;
 if(ld = nil) then
  begin
   writeln('Lista Vazia'); readkey;
  end
 else
  begin
   writeln('1 - N£mero de Elementos');
   writeln('2 - Primeiro Elemento');
   writeln('3 - Ultimo Elemento');
   writeln('4 - Elemento do Meio');
   writeln('5 - Voltar');
   readln(op);
   case op of
   1:
    begin
     while(ld <> nil) do
      begin
       ld := ld^.prox;
       inc(cont);
      end;
     writeln('N£mero de Elementos: ', cont);
     readkey;
    end;
   2:
    begin
     writeln('Primeiro Elemento: ', ld^.prod);
     readkey;
    end;
   3:
    begin
     while(ld^.prox <> nil) do
      begin
       ld := ld^.prox;
      end;
     writeln('Ultimo Elemento: ', ld^.prod);
     readkey;
    end;
   4:
    begin
     while(ld^.prox <> nil) do
      begin
       ld := ld^.prox;
       inc(cont);
      end;
     ld := prim;
     repeat
      ld := ld^.prox;
      cont := cont -1;
     until(cont = 1);
     writeln('Elemento do Meio: ', ld^.prod);
     readkey;
    end;
   end;
  end;
end;

procedure excluir;
var
 prod : string[30];
 op : char;
 flag : byte;
begin
 repeat
  clrscr;
  ld := prim;
  aux := prim;
  flag := 0;
  if(ld = nil) then
   begin
    writeln('Lista Vazia'); readkey;
    op:='N';
   end
  else
   begin
    flag := 0;
    op := 'S';
    ld := prim;
    writeln('Produto a Excluir: '); readln(prod);
    while( (ld <> nil) and (flag = 0) ) do
     begin
       if(prod = ld^.prod) then
       begin
        flag:=1;
        if(ld^.ant = nil) then
         if(ld^.prox = nil) then
          begin
          dispose(ld);
          inicializar;
          end
         else
          begin
           ld^.prox^.ant := nil;
           prim := ld^.prox;
           aux := ld^.prox;
           dispose(ld);
           ld := prim;
          end
        else
        if(ld^.prox = nil) then
         begin
          aux^.prox := ld^.prox;
          dispose(ld);
          ld := aux;
         end
        else
         begin
          aux^.prox := ld^.prox;
          ld^.prox^.ant := aux;
          dispose(ld);
          ld := aux^.prox;
         end;
       end
      else
       begin
        aux := ld;
        ld := ld^.prox;
       end;
     end;
    if flag=0 then
      writeln('Produto Inexistente');
    writeln('Novamente? <S/N> '); readln(op);
    op := upcase(op);
   end;
 until(op = 'N');
end;

begin
 op := 0;
 repeat
  clrscr;
  writeln('1 - Inicializar');
  writeln('2 - Criar');
  writeln('3 - Listar');
  writeln('4 - Mostrar');
  writeln('5 - Excluir');
  writeln('6 - Sair');
  readln(op);
  case op of
   1 : inicializar;
   2 : criar;
   3 : listar;
   4 : mostrar;
   5 : excluir;
  end;
 until(op = 6);
end.