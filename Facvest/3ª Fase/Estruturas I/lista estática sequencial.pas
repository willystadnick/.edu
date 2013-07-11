{ta com alguns bugs e erro mas a ideia e essa...}

program lista_estatica_sequencial_09_set_03;

uses crt;

const
 max = 15;

type
  forma = record
            produto: string[20];
            lig: integer;
          end;
var
  lp: array[1..max] of forma; {lista de produtos}
  prim: integer;
  dispo: array[1..max] of integer;
  opcao: integer;

procedure menu; forward;

{procedure aglutinada aqui com permiss∆o do colega Juliano Prestes}
PROCEDURE CENTER(TEXTO:STRING;Y:INTEGER);

BEGIN
   GOTOXY(40-(LENGTH(TEXTO) DIV 2),Y);
   WRITE(TEXTO);
END;
{fim do ripp}

procedure linha(x: byte);
var
  i: byte;
begin
  gotoxy(1, x);
  for i:= 1 to 80 do
    write(#205);
end;

procedure criar;
var
  i: integer;
  resp : char;
begin
  clrscr;
  linha(1);
  center('CRIAR', 2);
  linha(3);
  if (prim = 0) then
    begin
      repeat {for i:= 1 to max do}
          gotoxy(3, i+6); write('Digite o nome do produto: ');
          readln(lp[i].produto);
          lp[i].lig:= i+1;
          dispo[i]:= 0;
          center('Deseja inserir novo produto? <S/N> ', 22);
          readln(resp);
          resp := upcase(resp);
      until(resp = 'N');
        prim:= 1;
        lp[max].lig:= 0;
    end;
    center('Criaá∆o Conclu°da com Sucesso', 24);
    delay(1000);
    menu;
end;

procedure ordenar;
var
  i,j,k:integer;
  auxlig:integer;
  auxproduto:integer;
begin
   i:=1;
   prim:=1;
   while (lp[i].lig<>0) do
     begin
       if (lp[i].produto > lp[i+1].produto) then
         begin
           if (prim = i) then
              prim := i+1;
           auxlig:=lp[i+1].lig;
           lp[i+1].lig:=i;
           lp[i].lig:=auxlig;
           for j:=1 to 10 do
             begin
               if (lp[j].lig = i) then
                 begin
                   lp[j].lig:=i+1;
                 end;
             end;
         end;
         i:=i+1;
         for k:=1 to max-1 do
           begin
             i:=prim;
             while (lp[i].lig<>0) do
               begin
                if (lp[i].produto > lp[lp[i].lig].produto) then
                  begin
                    if (prim = 1) then
                      prim := lp[i].lig;
                      auxlig:= lp[lp[i].lig].lig;
                      lp[lp[i].lig].lig:=auxlig;
                  end;
                  i:=lp[i].lig;
               end;
            end;
     end;
end;

procedure inserir;
var
  i, listado: integer;
  resp: char;
begin
  clrscr;
  linha(1);
  center('INSERIR', 2);
  linha(3);
  i:= prim;
  resp:= 's';
  for i:= 1 to max do
    begin
      if (dispo[i] <> 0) and (resp = 's') then
        begin
          gotoxy(3, i+5); write('Digite o nome do produto: ');
          readln(lp[i].produto);
          lp[i].lig:= i+1;
          dispo[i]:= 0;
          center('Deseja inserindo outro produto?', 24);
          readln(resp);
        end;
    end;
  if (dispo[i] = 0) then
    begin
      center('Sem espaáo para inserir novo produto !', 22);
      center('Pressione qualquer tecla para retornar ao menu principal', 24);
    end;
    center('Pressione qualquer tecla para retornar ao menu principal', 24);
    readkey;
    menu;
end;

procedure alterar;
var
  i, altera: integer;
  nome_altera, novo_nome: string[30];
begin
  clrscr;
  linha(1);
  center('ALTERAR', 2);
  linha(3);
  altera:= 0;
  write('Digite o nome do produto a ser alterado: ');
  readln(nome_altera);
  for i:= 1 to max do
    begin
      if (nome_altera = lp[i].produto) then
        begin
          write('Digite o nome do novo produto: ');
          readln(novo_nome);
          lp[i].produto := novo_nome;
          lp[i].lig:= i+1;
          altera:= 1;
        end;
    end;
  if (altera = 0) then
    begin
      center('Produto inexistente !', 22);
      center('Pressione qualquer tecla para retornar ao menu principal', 24);
    end;
    center('Pressione qualquer tecla para retornar ao menu principal', 24);
    readkey;
    menu;
end;

procedure consultar;
var
  i: integer;
begin
  clrscr;
  linha(1);
  center('CONSULTAR', 2);
  linha(3);
  for i:= 1 to max do
    begin
      if (dispo[i] = 0) then
        begin
          gotoxy(2, i+4); write('Produto: ',lp[i].produto);
          gotoxy(70, i+4); write('Lig:',lp[i].lig);
        end;
    end;
    center('Pressione qualquer tecla para voltar ao menu principal', 24);
    readkey;
    menu;
end;

procedure excluir;
var
  i, exclu: integer;
  nome_exclu: string[30];
begin
  clrscr;
  linha(1);
  center('EXCLUIR', 2);
  linha(3);
  exclu:= 0;
  write('Digite o nome do produto que deseja excluir: ');
  readln(nome_exclu);
  for i := 1 to max do
    begin
      if (nome_exclu = lp[i].produto) then
        begin
          dispo[i]:= i;
          lp[i-1].lig := i + 1;
          exclu:= 1;
        end;
    end;
  if (exclu = 0) then
    begin
      center('Produto inexistente !', 22);
      center('Pressione qualquer tecla para retornar ao menu principal', 24);
    end;
  center('Pressione qualquer tecla para retornar ao menu principal', 24);
  readkey;
  menu;
end;

procedure menu;
  begin
    clrscr;
    linha(1);
    linha(2);
    center('LISTA ESTµTICA SEQUENCIAL', 4);
    linha(6);
    linha(7);
    center('1 ......... Criar ......... 1', 9);
    center('2 ........ Inserir ........ 2', 11);
    center('3 ........ Alterar ........ 3', 13);
    center('4 ....... Consultar ....... 4', 15);
    center('5 ........ Excluir ........ 5', 17);
    center('6 ... Finaliza Programa ... 6', 19);
    linha(24);
    center('Digite sua Opá∆o: ', 22);

    readln(opcao);
    case (opcao) of
      1: criar;
      2: inserir;
      3: alterar;
      4: consultar;
      5: excluir;
      6: exit;
    end;
end;

begin {programa principal}
  menu;
end.