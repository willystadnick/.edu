Program Lista_encadeada_odenada_dinamica;
Uses Crt;
Type LstOrd = ^Nodo;
       Nodo = Record
                Obj: Char;
                Prox:LstOrd;
              end;
Var
  Cabeca :LstOrd;
  Opcao:char;

Procedure Create;
Begin
  Clrscr;
  Cabeca:=nil;
  Gotoxy(10,10); Writeln ('Lista Inicializada');
  Gotoxy(10,14); Write ('Tecle <Enter> para voltar ao menu principal');
  Readln;
End;

{Lista os Elementos da Lista... e apresenta numero de elementos}
Procedure Show;
Var
  p:LstOrd;
  cont:integer;
Begin
  Clrscr;
  Gotoxy(10,10);
  Writeln('Elementos inseridos na Lista Ordenada :');
  p:=cabeca;
  Gotoxy(10,12);
  cont:=0;
  While (p<>nil) do
    Begin
      Write (p^.obj,'  ');
      p:=p^.prox;
      Inc(cont);
    End;
  Gotoxy (10,16);
  Writeln('A Lista tem ', cont, ' elementos');
  Gotoxy(10,20); Write ('Tecle <Enter> para voltar ao Menu Principal');
  Readln;
End;

Procedure Ins;
Var
  n,p:LstOrd;
  x:Char;
  Resp:char;
Begin
  Resp:='s';
  While (Resp='S') or (Resp='s') do
    Begin
      Clrscr;
      Gotoxy(10,10);
      Write ('Entre com o Elemento a Inserir ... : '); Readln (x);
      New(n);
      n^.Obj:=x;
      If (cabeca=nil) or (x<Cabeca^.obj)
        Then Begin
               n^.Prox:=Cabeca;
               Cabeca:=n;
               Gotoxy(10,13); Writeln ('Sucesso na Insercao');
             End
        Else Begin
               p:=Cabeca;
               While (x > p^.Prox^.Obj) and (p^.prox <> Nil) do
               p:= p^.prox;
               n^.prox:=p^.prox;
               p^.prox:=n;
               Gotoxy(10,13); Writeln ('Sucesso na Insercao');
             End;
      Gotoxy(10,16); Write ('Deseja inserir outro Elemento? (S/N) :');
      Readln(Resp);
    End;
End;

Procedure Rem;
Var
  p,q:LstOrd;
  Resp,x:char;
Begin
  Resp:='s';
  While (Resp='S') or (Resp='s') do
    Begin
      Clrscr;
      Gotoxy(10,10);
      Write ('Entre com o Elemento a ser Eliminado ... : '); Readln (x);
      If (cabeca=Nil) or (x<cabeca^.obj)
        Then Begin
               Gotoxy(10,13);
               Writeln ('Fracaso na Eliminacao');
             end
        Else Begin
               If (x=Cabeca^.Obj)
                  Then Begin
                         p:=Cabeca;
                         Cabeca:= Cabeca^.prox;
                         Dispose(p);
                         Gotoxy(10,13);
                         Writeln ('Sucesso na Eliminacao');
                       End
                  Else Begin
                         p:=cabeca;
                         While (x>p^.Prox^.Obj) and (P^.Prox <> Nil) do
                           p:= p^.prox;
                         if (x=p^.Prox^.Obj) and (p^.Prox <> Nil)
                            Then Begin
                                   q:=p^.Prox;
                                   p^.Prox:=q^.Prox;
                                   Dispose(q);
                                   Gotoxy(10,13);
                                   Writeln ('Sucesso na Eliminacao');
                                 End
                            Else Begin
                                   Gotoxy(10,13);
                                   Writeln ('Fracaso na Eliminacao-Elemento Inexistente');
                                 End;
                       End;
             End;
      Gotoxy(10,16); Write ('Deseja Eliminar outro Elemento? (S/N) :');
      Readln(Resp);
    End;
End;

Procedure Find;
Var
 p:LstOrd;
 x:char;
 Resp:char;
Begin
  Resp:='s';
  While (Resp='S') or (Resp='s') do
    Begin
      Clrscr;
      Gotoxy(10,10);
      Write ('Entre com o Elemento a Pesquisar ... : '); Readln (x);
      p:=Cabeca;
      While (x>p^.Obj) and (p<>nil) do
        p:=p^.Prox;
      Gotoxy(10,14);
      if (x=p^.Obj) and (p<>nil)
        Then Writeln ('Elemento ',x,' Encontrado')
        Else Writeln ('Elemento Inexistente');
      Gotoxy(10,22); Write ('Deseja Pesquisar outro Elemento? (s/n) :');
      Readln (Resp);
    End;
End;

Procedure Kill;

Var
  p:LstOrd;
Begin
  Clrscr;
  While (cabeca <> nil) do
    Begin
      p:=Cabeca;
      Cabeca:= Cabeca^.Prox;
      Dispose(p);
    End;
  Gotoxy(10,14); Writeln ('Lista Destruida com Sucesso');
  Gotoxy(10,20); Write ('Tecle <Enter> para voltar ao Men£ Principal');
  Readln;
End;

{Programa Principal}
Begin
  Opcao:='0';
  While opcao <> '7' do
    Begin
      Clrscr;
      Gotoxy (27,1); Writeln ('Men£ Principal - Lista Ordenada');
      Gotoxy (28,6); Writeln ('1 ...........Inicializar Lista');
      Gotoxy (28,8); Writeln ('2 ............... Inserir Nodo');
      Gotoxy (28,10);Writeln ('3 ............... Listar Nodos');
      Gotoxy (28,12);Writeln ('4 .............. Eliminar Nodo');
      Gotoxy (28,14);Writeln ('5 ............. Pesquisar Nodo');
      Gotoxy (28,16);Writeln ('6 ............. Destruir Lista');
      Gotoxy (28,18);Writeln ('7 ............ Fim do Programa');
      Gotoxy (28,22);Write ('Escolha uma opcao : ');
      Readln (opcao);
      If (opcao<>'7')
        Then Case opcao of
               '1':Create;
               '2':Ins;
               '3':Show;
               '4':Rem;
               '5':Find;
               '6':Kill;
               else clrscr;
                    Gotoxy (27,24); Write ('Opcao Invalida - Tecle Algo :');
                    opcao:=Readkey;
             End;
    End;
End.
