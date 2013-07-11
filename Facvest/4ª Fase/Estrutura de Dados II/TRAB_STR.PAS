program trabalho1_estruturasII;
uses
    CRT, DOS;

type
    pont = ^ponteiro;
    ponteiro = record
               cont: integer;
               esq:  pont;
               dir:  pont;
end;

const
     valor_raiz = 10;

var
   raiz, aux: pont;
   opc:       byte;
   nro:       integer;

procedure inicializar;
begin
     new(raiz);
     raiz^.cont := valor_raiz;
     raiz^.esq  := nil;
     raiz^.dir  := nil;
end;

procedure inserir(num: integer; var base: pont);
begin
     if num > base^.cont then
        if base^.dir = nil then
           begin
                new(aux);
                aux^.cont := num;
                aux^.dir  := nil;
                aux^.esq  := nil;
                base^.dir := aux;
           end
        else
            inserir(num, base^.dir)
     else
         if base^.esq = nil then
            begin
                new(aux);
                aux^.cont := num;
                aux^.dir  := nil;
                aux^.esq  := nil;
                base^.dir := aux;
            end
         else
             inserir(num, base^.esq);
end;

procedure insere;
begin
     clrscr;
     writeln('Digite o numero que deseja inserir na arvore: ');
     readln(nro);
     inserir(nro,raiz)
end;

procedure preordem(base : pont);
begin
     if base <> nil then
        begin
             write(base^.cont,', ');
             preordem(base^.dir);
             preordem(base^.esq);
        end;
end;

procedure emordem(base : pont);
begin
     if base <> nil then
        begin
             emordem(base^.dir);
             write(base^.cont,', ');
             emordem(base^.esq);
        end;
end;

procedure posordem(base : pont);
begin
     if base <> nil then
        begin
             posordem(base^.dir);
             posordem(base^.esq);
             write(base^.cont,', ');
        end;
end;

begin
     clrscr;
     inicializar;
     repeat
           clrscr;
           writeln('..::ARVORES BINARIAS::..');
           writeln;
           writeln('1. Inserir');
           writeln('2. Percorrer Pre-Ordem');
           writeln('3. Percorrer Em-Ordem');
           writeln('4. Percorrer Pos-Ordem');
           writeln('5. Sair');
           writeln;
           writeln('Digite a opcao: ');
           readln(opc);
           case opc of
                    1: insere;
                    2: begin writeln; writeln('Sequencia em Pre-Ordem'); preordem(raiz); readkey; end;
                    3: begin writeln; writeln('Sequencia em Em-Ordem'); emordem(raiz); readkey; end;
                    4: begin writeln; writeln('Sequencia em Pos-Ordem'); posordem(raiz); readkey; end;
           end;
     until(opc = 5);
end.