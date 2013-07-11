Program Cadastro_Prod;
Uses Crt;
Type
  Cad_Prod=Record
    descr:string[40];
    cod,
    QuantEst,
    QuantVend:word;
    Preco_custo,
    Preco_venda,
    desconto:real;
  end;
Var
  Produto:array[1..250] of Cad_Prod;
  n:byte;
{====================Procedure Bordas===============================}
Procedure Bordas;
Var
  i:byte;
Begin
  Textbackground(blue);
  Clrscr;
  Textcolor(yellow);
  Gotoxy(3,2);
  Write('Ú'); {#218}
  For i:=4 to 76 do
  Begin
    Gotoxy(i,2);
    Write('Ä'); {#196}
  end;
  Gotoxy(77,2);
  Write('¿'); {#191}
  For i:=3 to 24 do
  Begin
    Gotoxy(77,i);
    Write('³'); {#179}
  end;
  Gotoxy(77,25);
  Write('Ù'); {#217}
  Gotoxy(3,25);
  Write('À'); {#192}
  For i:=4 to 76 do
  Begin
    Gotoxy(i,25);
    Write('Ä'); {#196}
  end;
  Gotoxy(3,2);
  For i:=3 to 24 do
  Begin
    Gotoxy(3,i);
    Write('³'); {#179}
  end;
end;
{==================Fim Procedure Bordas=============================}
{==================Procedure Bordas Internas========================}
Procedure Bordas_Int;
Var
  i:byte;
Begin
  Textcolor(lightblue);
  Gotoxy(4,8);
  Write('É'); {#201}
  Gotoxy(16,8);
  Write('»'); {#187}
  Gotoxy(4,8);
  For i:=5 to 15 do
  Begin
    Gotoxy(i,8);
    Write('Í'); {#205}
    Gotoxy(i,10);
    Write('Í'); {#205}
    Gotoxy(i,12);
    Write('Í'); {#205}
    Gotoxy(i,14);
    Write('Í'); {#205}
    Gotoxy(i,16);
    Write('Í'); {#205}
  end;
  Gotoxy(4,9);
  Write('º'); {#186}
  Gotoxy(4,10);
  Write('Ì'); {#204}
  Gotoxy(4,11);
  Write('º'); {#186}
  Gotoxy(4,12);
  Write('Ì'); {#204}
  Gotoxy(4,13);
  Write('º'); {#186}
  Gotoxy(4,14);
  Write('Ì'); {#204}
  Gotoxy(4,15);
  Write('º'); {#186}
  Gotoxy(4,16);
  Write('È'); {#200}
  Gotoxy(16,9);
  Write('º'); {#186}
  Gotoxy(16,10);
  Write('¹'); {#185}
  Gotoxy(16,11);
  Write('º'); {#186}
  Gotoxy(16,12);
  Write('¹'); {#185}
  Gotoxy(16,13);
  Write('º'); {#186}
  Gotoxy(16,14);
  Write('¹'); {#185}
  Gotoxy(16,15);
  Write('º'); {#186}
  Gotoxy(16,16);
  Write('¼'); {#188}
  Gotoxy(18,8);
  Write('É'); {#201}
  Gotoxy(50,8);
  Write('»'); {#187}
  Gotoxy(18,8);
  For i:=19 to 49 do
  Begin
    Gotoxy(i,8);
    Write('Í'); {#205}
    Gotoxy(i,10);
    Write('Í'); {#205}
    Gotoxy(i,12);
    Write('Í'); {#205}
    Gotoxy(i,14);
    Write('Í'); {#205}
    Gotoxy(i,16);
    Write('Í'); {#205}
  end;
  Gotoxy(18,9);
  Write('º'); {#186}
  Gotoxy(18,10);
  Write('Ì'); {#204}
  Gotoxy(18,11);
  Write('º'); {#186}
  Gotoxy(18,12);
  Write('Ì'); {#204}
  Gotoxy(18,13);
  Write('º'); {#186}
  Gotoxy(18,14);
  Write('Ì'); {#204}
  Gotoxy(18,15);
  Write('º'); {#186}
  Gotoxy(18,16);
  Write('È'); {#200}
  Gotoxy(50,9);
  Write('º'); {#186}
  Gotoxy(50,10);
  Write('¹'); {#185}
  Gotoxy(50,11);
  Write('º'); {#186}
  Gotoxy(50,12);
  Write('¹'); {#185}
  Gotoxy(50,13);
  Write('º'); {#186}
  Gotoxy(50,14);
  Write('¹'); {#185}
  Gotoxy(50,15);
  Write('º'); {#186}
  Gotoxy(50,16);
  Write('¼'); {#188}
end;
{=================Fim Procedure Bordas Internas=====================}
{=================Procedure Cadastro================================}
Procedure cadastro;
Var
  i:byte;
Begin
  Textbackground(black);
  clrscr;
  Textcolor(white);
  Gotoxy(16,10);
  Write('Digite o n£mero de Produtos que deseja cadastrar:');
  Readln(n);
  For i:=1 to n do
  Begin
    Clrscr;
    Bordas;
    Gotoxy(25,4);
    Textcolor(green);
    Write('....:CADASTRO DE PRODUTOS:....');
    Textcolor(white);
    Gotoxy(17,7);
    Write('Informe o c¢digo do ',i,'§ produto:');
    Readln(Produto[i].cod);
    Gotoxy(17,9);
    Write('Informe a descri‡ao do ',i,'§ produto:');
    Readln(Produto[i].descr);
    Gotoxy(17,11);
    Write('Informe a quantidade do ',i,'§ produto:');
    Readln(Produto[i].QuantEst);
    Repeat
      Gotoxy(17,13);
      Write('Informe a Quantidade vendida do ',i,'§ produto:');
      Readln(Produto[i].QuantVend);
    Until Produto[i].QuantVend<=Produto[i].QuantEst;
    Gotoxy(17,15);
    Write('Informe o pre‡o de custo do ',i,'§ produto:');
    Readln(Produto[i].preco_custo);
    Gotoxy(17,17);
    Write('Informe o Desconto para este produto:');
    Readln(Produto[i].desconto);
    Produto[i].Preco_venda:=Produto[i].Preco_custo+(Produto[i].preco_custo*(30/100));
    Produto[i].Preco_venda:=Produto[i].Preco_venda-(Produto[i].preco_venda*(Produto[i].desconto/100));
    Gotoxy(17,20);
    Write('Valor para venda(j  com desconto:)');
    Gotoxy(52,20);
    Write('R$',Produto[i].Preco_venda:8:2);
    Readkey;
  end;
  Clrscr;
end;

{========================Fim Procedure Cadastro=====================}
{=======================Procedure Listar============================}
Procedure Listar;
Var
  i:byte;
Begin
  For i:=1 to n do
  Begin
    Bordas;
    Bordas_Int;
    Gotoxy(27,4);
    Textcolor(green);
    Write('....:LISTAR PRODUTOS:....');
    Gotoxy(5,9);
    Write('C¢digo');
    Gotoxy(5,11);
    Write('Descri‡ao');
    Gotoxy(5,13);
    Write('Quantidade');
    Gotoxy(5,15);
    Write('Pre‡o');
    Textcolor(white);
    Gotoxy(20,9);
    Write(Produto[i].cod);
    Gotoxy(20,11);
    Write(Produto[i].descr);
    Gotoxy(20,13);
    Write(Produto[i].QuantEst);
    Gotoxy(20,15);
    Write('R$ ',Produto[i].Preco_venda:10:2);
    Gotoxy(20,23);
    Write('Tecle Enter para listar o pr¢ximo produto');
    Readkey;
  end;
end;
{====================Fim Procedure Listar===========================}
{=======================Procedure Pesquisa==========================}
Procedure Pesquisa;
Var
  i,
  j:byte;
  codi:word;
  achou:boolean;
  Resp:char;
Begin
  Repeat
    Textbackground(black);
    clrscr;
    Textcolor(white);
    Gotoxy(16,10);
    Write('Digite o c¢digo do Produto a ser Pesquisado:');
    Readln(codi);
    achou:=false;
    Bordas;
    For i:=1 to n do
    Begin
      if Produto[i].cod=codi then
      Begin
        Textcolor(green);
        Gotoxy(25,4);
        Write('....:PESQUISA DE PRODUTOS:....');
        achou:=true;
        Textcolor(lightblue);
        Gotoxy(4,10);
        Write('É'); {#201}
        Gotoxy(76,10);
        Write('»'); {#187}
        Gotoxy(4,10);
        For j:=5 to 75 do
        Begin
          Gotoxy(j,10);
          Write('Í'); {#205}
          Gotoxy(j,12);
          Write('Í'); {#205}
          Gotoxy(j,14);
          Write('Í'); {#205}
        end;
        Gotoxy(28,10);
        Write('Ë'); {#203}
        For j:=11 to 13 do
        Begin
          Gotoxy(28,j);
          Write('º'); {#186}
          Gotoxy(51,j);
          Write('º'); {#186}
        end;
        Gotoxy(28,14);
        Write('Ê'); {#202}
        Gotoxy(51,14);
        Write('Ê'); {#202}
        Gotoxy(51,10);
        Write('Ë'); {#203}
        Gotoxy(28,12);
        Write('Î'); {#206}
        Gotoxy(51,12);
        Write('Î'); {#206}
        Gotoxy(4,11);
        Write('º'); {#186}
        Gotoxy(4,12);
        Write('Ì'); {#204}
        Gotoxy(4,13);
        Write('º'); {#186}
        Gotoxy(4,14);
        Write('È'); {#200}
        Gotoxy(76,11);
        Write('º'); {#186}
        Gotoxy(76,12);
        Write('¹'); {#185}
        Gotoxy(76,13);
        Write('º'); {#186}
        Gotoxy(76,14);
        Write('¼'); {#188}
        Textcolor(green);
        Gotoxy(13,11);
        Write('C¢digo');
        Gotoxy(38,11);
        Write('Nome');
        Gotoxy(57,11);
        Write('Pre‡o de Custo');
        Textcolor(white);
        Gotoxy(5,13);
        Write(Produto[i].cod);
        Gotoxy(30,13);
        Write(Produto[i].descr);
        Gotoxy(52,13);
        Write('R$',Produto[i].Preco_venda:8:2);
      end;
    end;
    if not(achou) then
    Begin
      Clrscr;
      Gotoxy(28,11);
      Textcolor(red);
      Write('C¢digo inexistente');
    end;
    Repeat
      Textcolor(White);
      Gotoxy(23,23);
      Write('Deseja fazer outra pesquisa?(S/N)');
      Resp:=Upcase(Readkey);
      if (resp<>'S') and (resp<>'N') then
      Begin
        Gotoxy(56,23);
        Textcolor(red);
        Write('Resposta errada');
        Delay(2000);
        Textcolor(White);
        Gotoxy(23,23);
        Write('Deseja fazer outra pesquisa?(S/N)');
      end;
    Until (resp='S') or (resp='N');
  Until Resp='N'
end;
{================Fim Procedure Pesquisa=============================}
{==================Procedure Atualizar==============================}
Procedure Atualizar;
Var
  i,
  j:byte;
  codi:word;
  achou:boolean;
  Resp:char;
Begin
  Repeat
    Textbackground(black);
    clrscr;
    Textcolor(white);
    Gotoxy(16,10);
    Write('Digite o c¢digo do Produto a ser Atualizado:');
    Readln(codi);
    achou:=false;
    Bordas;
    For i:=1 to n do
    Begin
      if Produto[i].cod=codi then
      Begin
        Textcolor(green);
        Gotoxy(26,4);
        Write('....:ATUALIZAR PRODUTOS:....');
        achou:=true;
        Gotoxy(5,9);
        Write('Produto a ser Atualizado');
        Gotoxy(45,9);
        Write('Produto Atualizado');
        Textcolor(lightblue);
        Gotoxy(4,10);
        Write('É'); {#201}
        Gotoxy(36,10);
        Write('»'); {#187}
        Gotoxy(4,10);
        For j:=5 to 35 do
        Begin
          Gotoxy(j,10);
          Write('Í'); {#205}
          Gotoxy(j,12);
          Write('Í'); {#205}
          Gotoxy(j,14);
          Write('Í'); {#205}
          Gotoxy(j,16);
          Write('Í'); {#205}
          Gotoxy(j,18);
          Write('Í'); {#205}
          Gotoxy(j,20);
          Write('Í'); {#205}
        end;
        For j:=11 to 19 do
        Begin
          Gotoxy(4,j);
          Write('º'); {#186}
          Gotoxy(16,j);
          Write('º'); {#186}
          Gotoxy(36,j);
          Write('º'); {#186}
        end;
        Gotoxy(4,20);
        Write('È'); {#200}
        Gotoxy(36,20);
        Write('¼'); {#188}
        Gotoxy(4,12);
        Write('Ì'); {#204}
        Gotoxy(4,14);
        Write('Ì'); {#204}
        Gotoxy(4,16);
        Write('Ì'); {#204}
        Gotoxy(4,18);
        Write('Ì'); {#204}
        Gotoxy(16,10);
        Write('Ë'); {#203}
        Gotoxy(16,12);
        Write('Î'); {#206}
        Gotoxy(16,14);
        Write('Î'); {#206}
        Gotoxy(16,16);
        Write('Î'); {#206}
        Gotoxy(16,18);
        Write('Î'); {#206}
        Gotoxy(36,10);
        Write('»'); {#187}
        Gotoxy(36,12);
        Write('¹'); {#185}
        Gotoxy(36,14);
        Write('¹'); {#185}
        Gotoxy(36,16);
        Write('¹'); {#185}
        Gotoxy(36,18);
        Write('¹'); {#185}
        Gotoxy(16,20);
        Write('Ê'); {#202}
        Gotoxy(36,20);
        Write('¼'); {#188}
        Gotoxy(44,10);
        Write('É'); {#201}
        Gotoxy(76,10);
        Write('»'); {#187}
        Gotoxy(44,10);
        For j:=45 to 75 do
        Begin
          Gotoxy(j,10);
          Write('Í'); {#205}
          Gotoxy(j,12);
          Write('Í'); {#205}
          Gotoxy(j,14);
          Write('Í'); {#205}
          Gotoxy(j,16);
          Write('Í'); {#205}
          Gotoxy(j,18);
          Write('Í'); {#205}
          Gotoxy(j,20);
          Write('Í'); {#205}
        end;
        For j:=11 to 19 do
        Begin
          Gotoxy(44,j);
          Write('º'); {#186}
          Gotoxy(56,j);
          Write('º'); {#186}
          Gotoxy(76,j);
          Write('º'); {#186}
        end;
        Gotoxy(44,20);
        Write('È'); {#200}
        Gotoxy(76,20);
        Write('¼'); {#188}
        Gotoxy(44,12);
        Write('Ì'); {#204}
        Gotoxy(44,14);
        Write('Ì'); {#204}
        Gotoxy(44,16);
        Write('Ì'); {#204}
        Gotoxy(44,18);
        Write('Ì'); {#204}
        Gotoxy(56,10);
        Write('Ë'); {#203}
        Gotoxy(56,12);
        Write('Î'); {#206}
        Gotoxy(56,14);
        Write('Î'); {#206}
        Gotoxy(56,16);
        Write('Î'); {#206}
        Gotoxy(56,18);
        Write('Î'); {#206}
        Gotoxy(76,10);
        Write('»'); {#187}
        Gotoxy(76,12);
        Write('¹'); {#185}
        Gotoxy(76,14);
        Write('¹'); {#185}
        Gotoxy(76,16);
        Write('¹'); {#185}
        Gotoxy(76,18);
        Write('¹'); {#185}
        Gotoxy(56,20);
        Write('Ê'); {#202}
        Textcolor(green);
        Gotoxy(5,11);
        Write('Descr');
        Gotoxy(5,13);
        Write('Quant Est');
        Gotoxy(5,15);
        Write('Quant Vend');
        Gotoxy(5,17);
        Write('Pre‡o Cus');
        Gotoxy(5,19);
        Write('Desconto');
        Gotoxy(17,11);
        Write(Produto[i].Descr);
        Gotoxy(17,13);
        Write(Produto[i].QuantEst);
        Gotoxy(17,15);
        Write(Produto[i].QuantVend);
        Gotoxy(17,17);
        Write('R$',Produto[i].Preco_custo:8:2);
        Gotoxy(17,19);
        Write(Produto[i].desconto:5:0,'%');
        Gotoxy(45,11);
        Write('Descr');
        Gotoxy(45,13);
        Write('Quant Est');
        Gotoxy(45,15);
        Write('Quant Vend');
        Gotoxy(45,17);
        Write('Pre‡o Cus');
        Gotoxy(45,19);
        Write('Desconto');
        Textcolor(white);
        Gotoxy(57,11);
        Readln(Produto[i].Descr);
        Gotoxy(57,13);
        Readln(Produto[i].QuantEst);
        Repeat
          Gotoxy(57,15);
          Readln(Produto[i].QuantVend);
        Until Produto[i].QuantVend<=Produto[i].QuantEst;
        Gotoxy(57,17);
        Readln(Produto[i].Preco_custo);
        Gotoxy(57,19);
        Readln(Produto[i].desconto);
      end;
    end;
    if not(achou) then
    Begin
      Clrscr;
      Gotoxy(28,11);
      Textcolor(red);
      Write('C¢digo inexistente');
    end;
    Repeat
      Textcolor(White);
      Gotoxy(23,23);
      Write('Deseja atualizar outro produto?(S/N)');
      Resp:=Upcase(Readkey);
      if (resp<>'S') and (resp<>'N') then
      Begin
        Gotoxy(56,23);
        Textcolor(red);
        Write('Resposta errada');
        Delay(2000);
        Textcolor(White);
        Gotoxy(23,23);
        Write('Deseja atualizar outro produto?(S/N)');
      end;
    Until (resp='S') or (resp='N');
  Until Resp='N'
end;
{==================Fim Procedure Atualizar==========================}
{==================Procedure Lucro==================================}
Procedure Lucro;
Var
  i:byte;
  Valor:real;
Begin
  Valor:=0;
  For i:=1 to n do
  Begin
    Bordas;
    Bordas_Int;
    Textcolor(green);
    Gotoxy(33,4);
    Write('....:LUCRO:....');
    Gotoxy(5,9);
    Write('C¢digo');
    Gotoxy(5,11);
    Write('Descri‡ao');
    Gotoxy(5,13);
    Write('Quant Est');
    Gotoxy(5,15);
    Write('Quant Vend');
    Textcolor(white);
    Gotoxy(20,9);
    Write(Produto[i].cod);
    Gotoxy(20,11);
    Write(Produto[i].descr);
    Gotoxy(20,13);
    Write(Produto[i].QuantEst);
    Gotoxy(20,15);
    Write(Produto[i].QuantVend);
    Valor:=Valor+(Produto[i].QuantVend*Produto[i].preco_venda)-(Produto[i].QuantVend*Produto[i].preco_custo);
    Readkey;
  end;
    Gotoxy(20,20);
    Write('O Lucro da Empresa ‚ igual a R$',Valor:10:2);
    Readkey;
end;
{=====================Fim Procedure Lucro===========================}
{========================Procedure Sair=============================}
Procedure Sair;
Begin
  Clrscr;
  Bordas;
  Gotoxy(17,13);
  Textcolor(green);
  Write('Programa Desenvolvido por Raimyson e Willy da');
  Gotoxy(24,14);
  Write('2§ Fase de Ciˆncia da Computa‡ao.');
  Textcolor(white);
  Gotoxy(35,23);
  Write('Obrigado pela prefenrˆncia!');
  Readkey;
end;
{===================Fim Procedure Sair==============================}
{==================Procedure Menu===================================}
Procedure Menu;
Var
  op:byte;
Begin
  Repeat
    Clrscr;
    Bordas;
    Textcolor(green);
    Gotoxy(28,4);
    Write('....:MENU PRINCIPAL:....');
    Textcolor(white);
    Gotoxy(17,7);
    Write('1...................Cadastro de Produtos');
    Gotoxy(17,9);
    Write('2........................Listar Produtos');
    Gotoxy(17,11);
    Write('3.....................Pesquisar Produtos');
    Gotoxy(17,13);
    Write('4.....................Atualizar Produtos');
    Gotoxy(17,15);
    Write('5........................Lucro de Vendas');
    Gotoxy(17,17);
    Write('6.......................Sair do Programa');
    Gotoxy(22,23);
    Write('Escolha uma das op‡oes acima:');
    Readln(op);
    Case op of
      1:cadastro;
      2:listar;
      3:pesquisa;
      4:atualizar;
      5:lucro;
      6:sair
      else
        Clrscr;
        Gotoxy(13,11);
        Textcolor(red);
        Write('Op‡ao inv lida, tecle Enter para voltar ao men£ principal');
        Readkey;
        Bordas;
        Menu;
    end;
  Until op=6;
end;
{=================Fim Procedure Menu================================}
Begin
  Menu;
end.