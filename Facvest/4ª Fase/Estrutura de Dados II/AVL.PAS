program AVL;
uses crt;
type
 ptrNodoArvAVL= ^NodoArvAVL;
 NodoArvAVL= Record
  Conteudo: Integer;
  ArvEsq, ArvDir: ptrNodoArvAVL;
  Altura: Integer;
End;

Function Altura(SubArv: PtrNodoArvAVL): Integer;
Begin
 If SubARv= Nil then
  Altura:= -1
 Else
  Altura:= SubArv^.Altura;
End;

Function Max(X: Integer; Y: Integer): Integer;
Begin
 If(X > Y) then
  Max:= X;
 If(Y > X) Then
  Max:= Y;
 If(X = Y) Then
  Max:= Y;
End;

Function Simples_Rota_Dir(k2: PtrNodoArvAvl): PtrNodoArvAVL;
Var
 K1: ptrNodoArvAVL;
Begin
 K1:= K2^.ArvDir;
 K2^.ArvDir:= K1^.ArvEsq;
 K1^.ArvEsq:= K2;
{Atualiza Alturas}
 K2^.Altura:= Max(Altura(k2^.ArvEsq), Altura(k2^.ArvDir)) + 1;
 K1^.Altura:= Max(Altura(K1^.ArvEsq), K2^.Altura) + 1 ;
 Simples_Rota_Dir:= K1;
End;

Function Simples_Rota_Esq(k2: PtrNodoArvAvl): PtrNodoArvAVL;
Var
 K1: ptrNodoArvAVL;
Begin
 K1:= K2^.ArvEsq;
 K2^.ArvEsq:= K1^.ArvDir;
 K1^.ArvDir:= K2;
{Atualiza Alturas}
 K2^.Altura:= Max(Altura(k2^.ArvEsq), Altura(k2^.ArvDir)) + 1;
 K1^.Altura:= Max(Altura(K1^.ArvEsq), K2^.Altura) + 1 ;
 Simples_Rota_Esq:= K1;
End;

Function Dupla_Rota_Esq(K3: PtrNodoArvAVL): PtrNodoArvAVL;
Begin
{Rotacionamento entre K1 e K2}
 K3^.ArvEsq:= Simples_Rota_Dir(k3^.ArvEsq);
 Dupla_Rota_Esq:= Simples_Rota_Esq(k3);
End;

Function Dupla_Rota_Dir(K3: PtrNodoArvAVL): PtrNodoArvAVL;
Begin
{Rotacionamento entre K1 e K2}
 K3^.ArvDir := Simples_Rota_Esq(k3^.ArvDir);
 Dupla_Rota_Dir:= Simples_Rota_Dir(k3);
End;

Function InsereAVL (Conteudo: Integer; Var Arvore: PtrNodoArvAVL; var Pai:PtrNodoArvAVL): PtrNodoARvAVL;
Var
 ArvoreRodada: PtrNodoArvAVL;
Begin
 If(Arvore= Nil) then
  Begin
   new(Arvore);
   Arvore^.Conteudo:= Conteudo;
   Arvore^.ArvEsq:= Nil;
   Arvore^.ArvDir:= Nil;
   Arvore^.Altura:= 0;
  end
 Else
  If(Conteudo < Arvore^.Conteudo) Then
{Esquerda}
   Begin
    Arvore^.ArvEsq:= InsereAVL(Conteudo, Arvore^.ArvEsq, Arvore);

    If(ABS(Altura(Arvore^.ArvEsq) - Altura(Arvore^.ArvDir)) > 1) then
     Begin

      If(Conteudo < Arvore^.ArvEsq^.Conteudo) then
       ArvoreRodada:= Simples_Rota_Esq(Arvore)
      else
       ArvoreRodada:= Dupla_Rota_esq(Arvore);

      If(Pai <> Nil) then

       If(Pai^.ArvEsq= Arvore) Then
        Pai^.ArvEsq:= ArvoreRodada
       Else
        Pai^.ArvDir:= ArvoreRodada

      Else
       Arvore:= ArvoreRodada;
     End
     Else {Dfa ALtura}
      Arvore^.Altura:= Max(Altura(Arvore^.ArvEsq), Altura(Arvore^.ArvDir)) + 1;
   End
   Else

    If Conteudo > Arvore^.Conteudo Then {DIreita}
     Begin
      Arvore^.ArvDir := InsereAVL(Conteudo,Arvore^.ArvDir,Arvore);

       If (ABS((Altura(Arvore^.ArvEsq)) - (Altura(Arvore^.ArvDir))) > 1 )then
        Begin

         If (Conteudo > Arvore^.ArvDir^.Conteudo) then
          ArvoreRodada:= Simples_Rota_Dir(Arvore)
         else
          ArvoreRodada:= Dupla_Rota_Dir(Arvore);

                          If Pai <> Nil then
                             If Pai^.ArvDir = Arvore Then
                                Pai^.ArvDir:= ArvoreRodada
                             Else
                                Pai^.ArvEsq:= ArvoreRodada
                          Else
                             Arvore:= ArvoreRodada;
                       End
                   Else {Dfa ALtura}
                        Arvore^.Altura := Max(Altura(Arvore^.ArvEsq),Altura(Arvore^.ArvDir)) + 1;
                 End
                 Else
                     Write(' Conteudo jah Existe');

                 InsereAVL:= Arvore;

end;

Procedure Preordem (Arvore : PtrNodoArvAVL);
Begin
     If Arvore <> NIL Then
     Begin
       Write('(');
       Write(Arvore^.Conteudo);
       Preordem(Arvore^.ArvEsq);
       Preordem(Arvore^.ArvDir);
       Write(')');
     end;

end;

var
   Flag, Valor : Integer;
   AVL1,AVL2:PtrNodoArvAVL;

Begin

     Flag:= 1;
     AVL2:= Nil;
     While Flag <> 0 Do
     Begin
          clrscr;
          Writeln ('1: insere , 2 : imprime : , 0 : sai' );
          ReadLn(flag);


          If Flag = 1 then
             Begin
               writeln('Digite o valor : ');
               ReadLn(Valor);
               AVL1:= insereAVL(valor,AVL1,AVL2);
             end;
          If Flag = 2 then
             Preordem (AVL1);
          readkey;
     end;
end.