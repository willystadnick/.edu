program arq_fun;

uses crt, dos;

type
 reg = record
  nome : string[30];
  endereco : string[30];
  cargo : string[20];
  salario : real;
 end;

procedure menu; forward;

var
 func : file of reg;
 auxf : reg;
 op, resp : char;
 pos, tam, quantidade, i : integer;

procedure criar_arquivo;
begin
 assign(func, 'funcionario.dat');
 {$I-}
  reset(func);
 {$I+}
 if ioresult <> 0 then
  rewrite(func);
end;

procedure cadastrar;
var
 tam : integer;
 op : char;
begin
 criar_arquivo;
 tam := filesize(func);
 seek(func, tam);
 repeat
  clrscr;
  write('Entre com o nome: ');
  readln(auxf.nome);
  write('Entre com o endereco: ');
  readln(auxf.endereco);
  write('Entre com o cargo: ');
  readln(auxf.cargo);
  write('Entre com o salario: ');
  readln(auxf.salario);
  write(func, auxf);
  writeln('Deseja continuar? <S/N> ');
  readln(op);
  op := upcase(op);
 until op = 'N';
end;

procedure consultar;
var
 nomec : string[30];
 flag : integer;
 op : char;
begin
 criar_arquivo;
 repeat
  flag := 0;
  clrscr;
  seek(func, 0);
  writeln('Digite o nome para consulta: ');
  readln(nomec);
  while not eof(func) do
   begin
    read(func, auxf);
    if nomec = auxf.nome then
     begin
      writeln('O nome eh: ', auxf.nome);
      writeln('O endereco eh: ', auxf.endereco);
      writeln('O cargo eh: ', auxf.cargo);
      writeln('O salario eh: ', auxf.salario);
      flag := 1;
     end;
   end;
   if flag = 0 then
    writeln('Funcionario nao cadastrado !');
   writeln('Deseja continuar? <S/N> ');
   readln(op);
   op := upcase(op);
 until op = 'N';
end;

procedure alterar;
var
 nomec : string[30];
 flag : integer;
begin
 criar_arquivo;
 repeat
  flag := 0;
  clrscr;
  seek(func, 0);
  writeln('Digite o nome para alterar: ');
  readln(nomec);
  while not eof(func) do
   begin
    read(func, auxf);
    if nomec = auxf.nome then
     begin
      writeln('Digite o novo nome: ');
      readln(auxf.nome);
      writeln('Digite o novo endereco: ');
      readln(auxf.endereco);
      writeln('Digite o novo cargo: ');
      readln(auxf.cargo);
      writeln('Digite o novo salario: ');
      flag := 1;
      seek(func, filepos(func)-1);
      write(func, auxf);
     end;
   end;
   if flag = 0 then
    writeln('Funcionario nao cadastrado !');
   writeln('Deseja continuar? <S/N> ');
   readln(op);
   op := upcase(op);
 until op = 'N';
end;

procedure exclusao;
var
 nomec : string[30];
 flag : integer;
begin
 criar_arquivo;
 repeat
  flag:=0;
  clrscr;
  seek(func,0);
  writeln('Digite o nome a excluir...: ');
  readln(nomec);
  while not eof(func) do
   begin
    read(func, auxf);
    if nomec=auxf.nome then
     begin
      writeln('O nome ‚: ',auxf.nome);
      writeln('O endere‡o ‚: ',auxf.endereco);
      writeln('O cargo ‚: ', auxf.cargo);
      writeln('O sal rio ‚: ',auxf.salario);
      flag:=1;
      pos:=filepos(func);
      seek(func,pos);
      tam:=filesize(func);
      quantidade:=tam-pos;
      writeln('Esta certo disso? <S/N> ');
      readln(resp);
      resp := upcase(resp);
      if resp = 'S' then
       begin
        for i:=1 to quantidade do
         begin
          read(func,auxf);
          pos:=filepos(func);
          seek(func,pos-2);
          write(func,auxf);
          pos:=filepos(func)+1;
          pos:= pos-1;
          seek(func,pos);
          truncate(func);
         end;
       end
       else
        begin
         writeln('Deseja excluir outro? <S/N> ');
         readln(op);
         op := upcase(op);
        end;
     end;
   end;
 until op = 'N';
end;

procedure listar;
var
 flag : integer;
begin
 criar_arquivo;
 flag := 0;
 clrscr;
 seek(func, 0);
 tam := filesize(func);
 for i := 0 to tam-1 do
  begin
   read(func,auxf);
   writeln(auxf.nome);
   writeln(auxf.endereco);
   writeln(auxf.cargo);
   writeln(auxf.salario);
   readkey;
  end;
 menu;
end;

procedure menu_consultar;
var
 op : integer;
begin
 repeat
  clrscr;
  writeln('Menu Consulta');
  writeln('1 - Listar');
  writeln('2 - Pesquisa por Nome');
  writeln('3 - Voltar');
  writeln('Digite a opcao');
  readln(op);
  case op of
   1 : listar;
   2 : consultar;
   3 : menu;
  end;
 until op = 3;
end;

procedure menu;
var
 op : integer;
begin
 repeat
  clrscr;
  writeln('Menu Opcoes');
  writeln('1 - Cadastrar');
  writeln('2 - Consultar');
  writeln('3 - Alterar');
  writeln('4 - Excluir');
  writeln('5 - Sair');
  readln(op);
  case op of
   1 : cadastrar;
   2 : menu_consultar;
   3 : alterar;
   4 : exclusao;
   end;
 until op = 5;
end;

{Programa Principal}
begin
 clrscr;
 menu;
end.