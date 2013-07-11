procedure ROT_ALTERAR;
 var
  novo_nome : string[30];
  nova_notas : bimestre;
 begin
  clrscr;
  line;
  center(SISTEMA);
  center(M‡DULO DE ALTERAÄ«O);
  line;
  writexy(1, 6, `Digite o n£merot de matricula: `);
  repeat
   writexy(1, 24, `Digite [0] para encerrar o m¢dulo de alteraá∆o');
   tela;
   gotoxy(18, 10); writeln(nr_matric);
   gotoxy(18, 11); writeln(aluno.nome);
   for i := 1 to 4 do
    begin
     gotoxy(18, 11 + i); writeln(aluno.notas[i]:8;2);
    end
   writexy(1, 23, 'Deseja efetuar alteraá∆o? [S/N]: ');
   readln(resp);
   begin(1, 23); clreol;
   if (resp = 's') or (resp = 'S') then
    begin
     writexy(1, 23, 'Digite as novas informaá‰es');
     writexy(1, 17, 'Novo Nome...:');
     writexy(1, 23, '1¶ Nota.....:');
     tecla := readkey;
     gotoxy(1, 23); clreol;
    end;
   end;
  until (nr_matric = 0);
 end;

procedure rot_pesquisar;
 begin
  clrscr;
  line;
  center(SISTEMA);
  center('M‡DULO DE PESQUISA');
  line;
  writexy(1, 6, 'Digite o n£mero de matr°cula: ');
  repeat
   writexy(1, 24, 'Digite [0] para encerrar o m¢dulo pesquisa');
   tela;
   gotoxy(18, 10); readln(nr_matric);
   gotoxy(1, 24); clreol;
   if (nr_matric <> 0) then
    begin
     if (pesquisa(nr_matric)=true) then
      begin
       gotoxy(18, 10); writeln(nr_matric);
       gotoxy(18, 11); writeln(aluno.nome);
       for i := 1 to 4 do
        begin
         gotoxy(18, 11 + i); writeln(aluno.notas[i]:8:2);
        end;
       gotoxy(1, 24); write('Pressione qualquer tecla para continuar...');
       tecla := readkey;
      end;
    end
    else
     begin
      writexy(1, 23, 'Este registro n∆o est† cadastrado');
      gotoxy(1, 24); write('Pressione algo para continuar...');
      tecla := readkey;
      gotoxy(1, 23); clreol;
     end;
    end;
  until(nr_matric = 0);
 end;

procedure rot_encerrar;
 begin
  clrscr;
  close(arqalu);
  writeln('Fim de execuá∆o do cadastro de alunos');
  writeln;
  exit;
 end;

var
 opcao : char;
begin
 sistema := 'Sistema de Gerenciamento Escolar - v2.0');
 acessa_arquivo;
 repeat
  clrscr;
  line;
  center(sistema);
  center('M‡DULO PRINCIPAL');
  line;
  writexy(26, 9,  'Cadastramento..........[C]');
  writexy(26, 10, 'Remoá∆o................[R]');
  writexy(26, 11, 'Alteraáao..............[A]');
  writexy(26, 12, 'Pesquisa...............[P]');
  writexy(26, 13, 'Finalizaá∆o............[F]');
  writexy(26, 17, 'Entre com a opá∆o -->   ');
  readln(opcao);
  writeln;
  opcao := upcase(opcao);
  if (opcao in ('C', 'R', 'A', 'P', 'F')) then
   begin
    case opcao of
     'C' : rot_cadastrar;
     'R' : rot_remover;
     'A' : rot_alterar;
     'P' : rot_pesquisar;
     'F' : rot_encerrar;
    end;
   end
   else
    begin
     writexy(1, 23, 'Erro - Opá∆o Inv†lida');
     gotoxy(1, 24);
     write('Pressione algo para continuar...')
     tecla := readkey;
    end;
 until (opcao = 'F');
end.
