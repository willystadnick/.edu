procedure exclusao;
var
begin
 repeat
  flag:=0;
  clrscr;
  seek(func,0)
  writeln('Digite o nome a excluir...: ');
  readln(nomec);
  while not eof(func) do
   begin
    readn(func,auxf);
    if nomec=auxf.nome then
     begin
      writeln('O nome ‚: ',auxf.nome);
      writeln('O endere‡o ‚: ',auxf.endereco)
      writeln('O cargo ‚: ',auxf.cargo);
      writeln('O sal rio ‚: ',auxf.salario);
      flag:=1;
      pos:=filepos(func);
      seek(func,pos);
      tam:=filesize(func);
      quantidade:=tam-pos;
      for i:=1 to quantidade do
       begin
        read(func,auxf);
        pos:=filepos(func);
        seek(func,pos-2);
        write(func,auxf);
        pos:=filepos(func)+1;
       end;
      pos:= pos-1;
      seek(func,pos);
      truncate(func);
     end;
   end;
end;






procedure menu;
var
   op: integer;
begin
     repeat
           clrscr;
           writeln('MENU DE OP€åES');
           writeln;
           writeln('1_CADASTRAR');
           writeln('2_CONSULTAR');
           writeln('3_ALTERAR');
           writeln('4_EXCLUIR');
           writeln('5_SAIR...');
           writeln;
           writln('Digite a op‡Æo...');
           readln(op);
           case (op) of
                1: cadastrar;
                2: menu_consulta;
                3: alterar;
                4: excluir;
           end;
     until op=5;
     if op>5 then
        menu;
end;

procedure menu_consulta;
var
   op: integer;
begin
     repeat
           clrscr;
           writeln('MENU CONSULTA');
           writeln;
           writeln('1_LISTAR');
           writeln('2_PESQUISA POR NOME');
           writeln('3_MENU PRINCIPAL');
           writeln;
           writeln('Digite a op‡Æo...');
           readln(op);
           case (op) of
                1: listar;
                2: consultar;
                3: menu;
           end;
     until op>3;
     if op>3 then
        menu_consulta;
end;

Begin {PROGRAMA PRINCIPAL}
      clrscr;
      menu;
end.
