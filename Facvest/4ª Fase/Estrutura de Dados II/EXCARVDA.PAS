Program avl;
Uses crt;
Type ptrnodoarvavl = ^nodoarvavl;
     Nodoarvavl = record
     Conteudo : integer;
     Arvesq   : ptrnodoarvavl;
     Arvdir   : ptrnodoarvavl;
     Altura   : integer;
    end;

Function Altura (Subarv: Ptrnodoarvavl) : Integer;
Begin
     If Subarv = Nil then
        Altura := -1
     Else
        Altura := subarv^.altura;
End;


Function Max (X: Integer; Y: Integer): Integer;
Begin
     If (x > y) then
        Max := x;
     If (y > x) then
        Max := y;
     If (x = y) then
        Max := y;
End;


Function Simples_rota_dir (K2: Ptrnodoarvavl): Ptrnodoarvavl;
Var
   K1: Ptrnodoarvavl;
Begin
     K1         := K2^.arvdir;
     K2^.arvdir := K1^.arvesq;
     K1^.arvesq := K2;

     {atualizando as alturas}

     K2^.altura       := max(altura(K2^.arvesq),altura(K2^.arvdir)) + 1;
     K1^.altura       := max(altura(K1^.arvesq),K2^.altura) + 1 ;
     Simples_rota_dir := K1;
End;


Function Simples_rota_esq (K2: Ptrnodoarvavl): Ptrnodoarvavl;
Var
   K1: ptrnodoarvavl;
Begin
     K1         := K2^.arvesq;
     K2^.arvesq := K1^.arvdir;
     K1^.arvdir := K2;
     {atualizando as alturas}
     K2^.altura       := max(altura(K2^.arvesq),altura(K2^.arvdir)) + 1;
     K1^.altura       := max(altura(K1^.arvesq),K2^.altura) + 1 ;
     simples_rota_esq := K1;
End;


Function Dupla_rota_esq (K3: Ptrnodoarvavl): Ptrnodoarvavl;
Begin
     {rotacionamento entre K1 e K2}
     K3^.arvesq     := simples_rota_dir(K3^.arvesq);
     Dupla_rota_esq := simples_rota_esq(K3);
End;


Function Dupla_rota_dir (K3: Ptrnodoarvavl): Ptrnodoarvavl;
Begin
     {rotacionamento entre k1 e k2}
     K3^.arvdir     := simples_rota_esq(K3^.arvdir);
     Dupla_rota_dir := simples_rota_dir(K3);
End;


Function Insereavl (Conteudo: Integer; Var Arvore: Ptrnodoarvavl; Var Pai: Ptrnodoarvavl): Ptrnodoarvavl;
Var
   Arvorerodada: Ptrnodoarvavl;
Begin
     If Arvore = Nil then
        Begin
             New(Arvore);
             Arvore^.conteudo := Conteudo;
             Arvore^.arvesq   := Nil;
             Arvore^.arvdir   := Nil;
             Arvore^.altura   := 0;
        End
     Else
         If Conteudo < Arvore^.conteudo then {esquerda}
            Begin
                 Arvore^.arvesq := Insereavl(Conteudo,Arvore^.arvesq,Arvore);
                 If (Abs(Altura(Arvore^.arvesq) - Altura(Arvore^.arvdir)) > 1) then
                    Begin
                         If (Conteudo < Arvore^.arvesq^.conteudo) then
                            Arvorerodada := Simples_rota_esq(arvore)
                         Else
                            Arvorerodada := Dupla_rota_esq(arvore);

                         If Pai <> Nil then
                            If Pai^.arvesq = Arvore then
                               Pai^.arvesq := Arvorerodada
                            Else
                                Pai^.arvdir:= Arvorerodada
                         Else
                             Arvore := Arvorerodada;
                    End
                 Else {dfa altura}
                     Arvore^.altura := Max(Altura(Arvore^.arvesq),Altura(Arvore^.arvdir)) + 1;
            End
         Else
             If Conteudo > Arvore^.conteudo then {direita}
                Begin
                     Arvore^.arvdir := Insereavl(Conteudo,Arvore^.arvdir,Arvore);
                     If (Abs((Altura(Arvore^.arvesq)) - (Altura(Arvore^.arvdir))) > 1 )then
                        Begin
                             If (Conteudo > Arvore^.arvdir^.conteudo) then
                                Arvorerodada := Simples_rota_dir(arvore)
                             Else
                                Arvorerodada := Dupla_rota_dir(arvore);

                             If Pai <> Nil then
                                If Pai^.arvdir = Arvore then
                                   Pai^.arvdir  := Arvorerodada
                                Else
                                    Pai^.arvesq := Arvorerodada
                             Else
                                 Arvore := Arvorerodada;
                        End
                     Else {dfa altura}
                         Arvore^.altura := Max(Altura(Arvore^.arvesq),Altura(Arvore^.arvdir)) + 1;
                End
             Else
                 Write(' Conteudo ja existente...');
                 Insereavl := Arvore;

End;


Procedure Preordem (Arvore : Ptrnodoarvavl);
Begin
     If Arvore <> Nil then
        Begin
             Write('(');
             Write(arvore^.conteudo);
             Preordem(Arvore^.arvesq);
             Preordem(Arvore^.arvdir);
             Write(')');
        End;
End;


Function Menorvalor (Ptr: Ptrnodoarvavl): Ptrnodoarvavl;
Var
   Aux: Ptrnodoarvavl;
Begin
     Aux := Ptr;
     While (Aux^.arvesq <> Nil) do
          Begin
               Aux := Ptr;
               Ptr := Ptr^.arvesq;
          End;
     Menorvalor := Ptr;
End;


Function Maiorvalor (Ptr: Ptrnodoarvavl): Ptrnodoarvavl;
Var
   Aux: Ptrnodoarvavl;
Begin
     Aux := Ptr;
     While (Aux^.arvdir <> Nil) do
          Begin
               Aux := Ptr;
               Ptr := Ptr^.arvdir;
          End;
     Maiorvalor := Ptr;
End;


Procedure Exclusao (X: Integer; Var Ptr: Ptrnodoarvavl);
Var
   Tmp, Filho: Ptrnodoarvavl;
Begin
     If Ptr = Nil then
       Begin
            Writeln('Erro');
       End
     Else
         If (X < Ptr^.conteudo) then
           Begin
                Exclusao (X, Ptr^.arvesq);
           End
         Else
             If ( X > Ptr^.conteudo) then
               Begin
                    Exclusao(x,ptr^.arvdir);
               End
             Else
                 If (Ptr^.arvdir <> Nil) and (Ptr^.arvesq <> Nil) then
                   Begin
                        Tmp           := Menorvalor (Ptr^.arvdir);
                        Ptr^.conteudo := Tmp^.conteudo;
                        Exclusao (Ptr^.conteudo, Ptr^.arvdir);
                   End
                 Else
                     Begin {um filho }
                          Tmp := Ptr;
                          If (Ptr^.arvdir <> Nil) then
                             Begin
                                  Ptr := Ptr^.arvdir;
                             End
                          Else
                              If (Ptr^.arvesq <> Nil) then
                                Begin
                                     Ptr := Ptr^.arvesq;
                                End
                              Else {folha}
                                  Begin
                                       Ptr := Nil;
                                       {dispose(ptr);||}
                                  End;
                     End;
End;


Var
   Flag, Valor : Integer;
   Avl1, Avl2  : Ptrnodoarvavl;

Procedure Exclui;
Var
   Valor : Integer;
   Tmp   : Ptrnodoarvavl;
Begin
     Writeln  ('Digite o valor a ser excluido: ');
     Readln   (Valor);
     Exclusao (Valor, Avl1);
     If Valor > Avl1^.conteudo then
       Begin
            Tmp := Menorvalor (Avl1^.arvdir);
            Exclusao (Tmp^.conteudo, Avl1);
       End;
     If valor<avl1^.conteudo then
       Begin
            Tmp := Maiorvalor (Avl1^.arvesq);
            Exclusao (Tmp^.conteudo, Avl1);
       End;
     Insereavl (Tmp^.conteudo, Avl1, Avl2);
End;


Begin
     Flag := 1;
     Avl2 := Nil;
     While Flag <> 0 do
          Begin
               Clrscr;
               Writeln ('ษออออออออออออออออออออป');
               Writeln ('บ ..::MENU  AVL::..  บ');
               Writeln ('บ                    บ');
               Writeln ('บ  1 - INSERIR - 1   บ');
               Writeln ('บ  2 - IMPRIME - 2   บ');
               Writeln ('บ  3 - EXCLUIR - 3   บ');
               Writeln ('บ    0 - SAI - 0     บ');
               Writeln ('บ                    บ');
               Writeln ('บ        > <         บ');
               Writeln ('ศออออออออออออออออออออผ');
               Gotoxy (11,9);
               Readln  (Flag);

               If Flag = 1 then
                  Begin
                       Gotoxy (1,11);
                       Writeln ('Digite o valor : ');
                       Gotoxy (18,11);
                       Readln  (Valor);
                       Avl1    := Insereavl (Valor,Avl1,Avl2);
                  End;
               If Flag = 2 then
                  Gotoxy (1,12);
                  Preordem (Avl1);
               If Flag = 3 then
                  Exclui;
                  Readkey;
          End;
End.
