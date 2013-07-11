program lista;
uses crt;
type
  forma = record
            produto: string[20];
            lig: integer;
          end;
var
  lp: array[1..10] of forma;{lista de produtos}
  prim: integer;
  dispo: array[1..10] of integer;
  opcao: integer;aux:string[20];
  indmaior,indmenor,indice:byte;
  procedure menu; forward;
  procedure ordena_lista;forward;
  procedure listar;forward;

procedure linha;
var
  i: byte;
begin
  for i:= 1 to 80 do
    write(#205);
end;
procedure pintaxy(xi,xf,yi,yf,cor:byte);
var i,y:byte;
begin
    textbackground(cor);
    for i:=xi to xf do
    begin
        for y:=yi to yf do
        begin
            gotoxy(i,y);
            writeln(' ');
        end;
    end;
end;
procedure escrevex_y (c, l: byte; mensagem: string);
begin
  gotoxy (c,l);
  writeln (mensagem);
end;

procedure moldura (ci, li, cf, lf: byte);
var
  j,i: byte;
begin
  {clrscr;
  textbackground(black);
  clrscr;
  textcolor(green);
  clrscr;}
  escrevex_y (ci, li, '…');
  escrevex_y (ci, lf, '»');
  escrevex_y (cf, li, 'ª');
  escrevex_y (cf, lf, 'º');
  for i:= ci+1 to cf-1 do
    begin
      escrevex_y (i, li, 'Õ');
      escrevex_y (i, lf, 'Õ');
    end;
  for j:= li+1 to lf-1 do
    begin
      escrevex_y (ci, j, '∫');
      escrevex_y (cf, j, '∫');
    end;
end;
procedure celula(linha,coluna:byte);
var x,i:byte;
begin
    indice:=indice+1;
    if lp[indice].lig=0 then
    begin
         textcolor(white);
         gotoxy(coluna+2,linha+2);write('ulti= ');
    end;
    if prim=indice then
    begin
        textcolor(white);
        gotoxy(coluna+2,linha+2);write('prim= ');
    end; textcolor(4);
         gotoxy(coluna+1,linha);write(lp[indice].produto);
         textcolor(blue);
         gotoxy(coluna+11,linha);write(lp[indice].lig);
         textcolor(blue);
    gotoxy(coluna+7,linha+2);write(indice);

    moldura(coluna,linha-1,coluna+13,linha+1);
    gotoxy(coluna+10,linha-1);write('À');
      gotoxy(coluna+10,linha);write('∫');
    gotoxy(coluna+10,linha+1);write(' ');

end;
procedure cria_lista;
var
  i: integer;
begin
  textbackground(white);textcolor(black);
  clrscr;
  textbackground(white);
  gotoxy(34,1);writeln ('criando lista...');
  {if (prim = 0) then
    begin}
      pintaxy(15,65,6,20,1);
      for i:= 1 to 10 do
      begin
         pintaxy(15,65,6,20,1);textcolor(yellow);
         gotoxy(26,13); write ('digite o ',i,'¶ string ou inteiro: ');
          readln (lp[i].produto);
          lp[i].lig:= i+1;
          dispo[i]:= 0;
        end;
        pintaxy(15,65,6,20,1);gotoxy(34,13); write ('lista criada');
        textbackground(white);textcolor(black);
        prim:= 1;
        lp[10].lig:= 0;

   { else
    begin
        clrscr;
        gotoxy(27,13);
        write(' L I S T A  J µ  C R I A D A ');
    end;}
    readkey;

    menu;
end;
procedure acha_maior;
var i:byte;
     maior:string;
begin
    maior:='zzz';
    for i:=1 to 10 do
    begin
        if lp[i].lig=0 then
        begin
            if lp[i].produto<maior then
            begin
                 maior:=lp[i].produto;
                 indmaior:=i;
            end;
        end;
    end;
end;

procedure acha_menor;
var i:byte;
     menor:string;
begin
    menor:='zzz';
    for i:=1 to 10 do
    begin
        if lp[i].lig=0 then
        begin
            if lp[i].produto<menor then
            begin
                 menor:=lp[i].produto;
                 indmenor:=i;
            end;
        end;
    end;
end;
procedure ordena_lista;
var
  i,ligado:integer;
  aux:string;
begin
    for i:=1 to 10 do
      lp[i].lig:=0;
      ligado:=10;
    for i:=1 to 10 do
    begin
        acha_menor;
        lp[indmenor].lig:=ligado;
        acha_maior;
        lp[indmenor].lig:=indmaior;
        indmaior:=0;
        indmenor:=0;
    end;
    aux:='zzz';
    for i:=1 to 10 do
    begin
        if lp[i].produto<aux then
        begin
            prim:=i;
            aux:=lp[i].produto;
        end;
    end;
end;
procedure insere_lista;
var
  i, listado: integer;
  resp: char;
begin
  clrscr;
  writeln ('INSERIR LISTA');
  i:= prim;
  resp:= 's';
  for i:= 1 to 10 do
    begin
      if (dispo[i] <> 0) and (resp = 's') then
        begin
          writeln ('entre com o produto na lista: ');
          readln (lp[i].produto);
          lp[i].lig:= i+1;
          dispo[i]:= 0;
          writeln ('deseja continuar inserindo?');
          readln (resp);
        end;
    end;
  if (dispo[i] = 0) then
    begin
      writeln ('n∆o h† espaáo para inserir registro');
      writeln ('tecle algo para retornar ao menu principal');
    end;
    readkey;
    ordena_lista;
    menu;
end;

procedure alterar_lista;
var
  i, altera: integer;
  nome_altera, novo_nome: string[30];
begin
  textbackground(white);textcolor(black);
  clrscr;
  gotoxy(34,1);writeln('altera lista...');
  pintaxy(15,65,6,20,1);
  altera:= 0;textcolor(yellow);
  gotoxy(22,12);write ('digite o nome para procura: ');
  readln (nome_altera);
  for i:= 1 to 10 do
    begin
      if (nome_altera = lp[i].produto) then
        begin
          pintaxy(15,65,6,20,1);
          gotoxy(29,8);write ('  nome: ',nome_altera);
          gotoxy(22,12);write ('entre com o novo produto: ');
          readln (novo_nome);
          pintaxy(15,65,6,20,1);
          gotoxy(29,13);write('valor alterado para: ',novo_nome);
          lp[i].produto := novo_nome;
          lp[i].lig:= i+1;
          altera:= 1;
        end;
    end;
  if (altera = 0) then
    begin
     gotoxy(25,18);write('produto n∆o existente na lista');
    end;
    readkey;
    textbackground(white);textcolor(black);
    ordena_lista;
    menu;
end;
procedure listar;
var lig:integer;
begin
    clrscr;
    lig:=prim;
    while lig<>0 do
    begin
        writeln('produto: ',lp[lig].produto);{procedimento p/ listar}
        lig:=lp[lig].lig;
    end;
    readkey;
    menu;
end;
procedure consulta_lista;
var
  i,lig,x,y,k,lis: integer;
begin
    textbackground(white);
    clrscr;
    textcolor(yellow);gotoxy(38,11);write('VETOR');
    textcolor(black);gotoxy(8,13);write('-----------------------------------------------------------------');
    gotoxy(9,12);write('lista original');
    i:=1;
    lis:=15;
    while i<>0 do
    begin
        gotoxy(10,lis);write(i);textcolor(red);
        gotoxy(20,lis);write(lp[i].produto);textcolor(blue);       {procedimento p/ listar}
        gotoxy(35,lis);write(lp[i].lig);inc(lis);textcolor(black);
        i:=lp[i].lig;
    end;
    ordena_lista;
    gotoxy(58,12);write('lista ordenada');
    gotoxy(10,14);write('pos        valor        lig');
    lis:=15;
    i:=prim;
    while i<>0 do
    begin
        gotoxy(43,lis);write(i);textcolor(red);
        gotoxy(53,lis);write(lp[i].produto);textcolor(blue);       {procedimento p/ listar}
        gotoxy(68,lis);write(lp[i].lig);inc(lis);textcolor(black);
        i:=lp[i].lig;
    end;
    for k:=14 to 24 do
    begin
        gotoxy(40,k);write('|');
    end;
    gotoxy(43,14);write('pos        valor        lig');
    ordena_lista;
    x:=2;
    indice:=0;
    celula(x,4);celula(x,19);celula(x,34);celula(x,49);celula(x,64);x:=x+5;
    celula(x,4);celula(x,19);celula(x,34);celula(x,49);celula(x,64);
    ordena_lista;
  {for i:= 1 to 10 do
    begin
      if (dispo[i] = 0) then
        begin
          writeln ('nome produto: ',lp[i].produto);
          writeln ('lig:',lp[i].lig);
        end;
    end; }
    {listar;}
    readkey;
end;



procedure excluir_list;
var
  i, exclu: integer;
  nome_exclu: string[30];
begin
  textbackground(white);
  clrscr;
  pintaxy(15,65,6,20,1);textbackground(white);textcolor(black);
  gotoxy(32,1);writeln('excluindo da lista...');
  exclu:= 0;textbackground(blue);textcolor(yellow);
  gotoxy(32,12);write ('excluir: ');
  read (nome_exclu);
  for i := 1 to 10 do
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
        gotoxy(25,18);write('produto n∆o existente na lista');
    end;
    textbackground(white);textcolor(black);
    readkey;
  menu;
end;

procedure menu;
  begin
    clrscr;
    textbackground(white);textcolor(black);
    gotoxy(38,1); write ('menu');
    pintaxy(15,65,6,22,1);textcolor(yellow);
    gotoxy(28,7); write ('1Ø criar lista');
    gotoxy(28,9); write ('2Ø inserir na lista');
    gotoxy(28,11); write ('3Ø alterar lista');
    gotoxy(28,13); write ('4Ø consultar lista');
    gotoxy(28,15); write ('5Ø excluir na lista');
    gotoxy(28,17); write ('6Ø sair');
    gotoxy(32,21); write ('escolha uma opá∆o: ');
    readln (opcao);
    case (opcao) of
      1: cria_lista;
      2: insere_lista;
      3: alterar_lista;
      4: consulta_lista;
      5: excluir_list;
      6: exit;
    end;
    textbackground(white)
end;

begin {programa principal}
  clrscr;
  textbackground(white+black);
  clrscr;
  textcolor(black);
  repeat
       menu;
  until (opcao=6);
end.