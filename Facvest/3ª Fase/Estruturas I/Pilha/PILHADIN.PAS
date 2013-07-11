Program Pilha_Dinamica;
Uses Crt;
Type Elem=Char;
     Pilha = ^Nodo;
      Nodo = Record
                 Obj : Elem;
                 Prox:Pilha;
             end;
Var
  Cabeca: Pilha;

Procedure Init;
Begin
  Cabeca:=nil;
End;

Function IsEmpty(Var Cabeca:Pilha):Boolean;
Begin
  If Cabeca=nil
    Then IsEmpty:=True
    Else IsEmpty:=False;
End;

Procedure Push (Var Cabeca:Pilha; X:elem);
Var
  N:Pilha;
Begin
  New (N);
  N^.Obj := x;
  N^.Prox := cabeca;
  Cabeca:=N;
end;

Function Pop (Var Cabeca:Pilha): Elem;
Var
  Q:Pilha;
Begin
  If not IsEmpty (Cabeca)
    Then Begin
           Pop:= Cabeca^.Obj;
           Q:=Cabeca;
           Cabeca:=Cabeca^.Prox;
           Dispose(Q);
         End
    Else Writeln ('Pilha Underflow!!');
End;

Function Top (Var Cabeca:Pilha): Elem;
Begin
  If not IsEmpty (Cabeca)
    Then Top:= Cabeca^.Obj
    Else Writeln ('Pilha Underflow!!');
End;

Procedure Listar(Var Cabeca:Pilha);
Var
  P:Pilha;
  i:integer;
Begin
  Clrscr;
  Gotoxy(23,3);
  Writeln('Elementos inseridos na Pilha');
  Writeln;
  P:= cabeca;
  i:=0;
  While (p<> nil) do
    Begin
      Write (P^.Obj, ' ');
      P:=P^.prox;
      i:=i+1;
    End;
  Writeln;
  Writeln;
  Writeln ('A pilha tem ', i, ' Elementos');
  Gotoxy(24,25); Write ('Tecle <Enter> para voltar ao Programa Principal');
  Readln;
End;

Procedure Insere;
Var
  x:Elem;
Begin
  Clrscr;
  Gotoxy(23,3); Writeln ('Inserir Elementos');
  Writeln;
  Writeln ('Digite . Para encerrar');
  Repeat
      Readln (x);
      If (x <> '.')
        then Push(Cabeca,x);
  Until (x='.')
End;

Procedure Elimina;
Var
  Resp:char;
  K:elem;
Begin
  Resp:='S';
  While (Resp='S') or (Resp='s') do
    Begin
      Clrscr;
      Gotoxy(30,3); Writeln ('Eliminar Elementos');
      k:= Pop(Cabeca);
      Gotoxy (20,15); Writeln ('Elemento ',k,' Foi Eliminado com Sucesso');
      Gotoxy(24,25); Write ('Deseja Eliminar outro elemento?(S/N): ');
      Readln(Resp);
    End;
End;

Begin
  While True do
    Begin
      Clrscr;
      Writeln ('1. Inicializa Pilha');
      Writeln ('2. Insere Elementos na Pilha');
      Writeln ('3. Eliminar Elementos na Pilha');
      Writeln ('4. Listar Elementos da Pilha');
      Writeln ('5. Finalizar');
      Writeln;
      Writeln ('Opcao: ');
      Case Readkey of
        '1':Begin
              Clrscr;
              Init;
              Gotoxy(20,10); Writeln ('Pilha Inicializada...');
              Gotoxy(24,25); Write('Tecle <Enter> para voltar ao Menu Principal');
              Readln;
            End;
        '2':Insere;
        '3':Elimina;
        '4':Listar(Cabeca);
        '5':Halt;
      End;
    End;
End.
