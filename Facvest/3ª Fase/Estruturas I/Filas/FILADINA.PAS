Program Fila_Dinamica;
Uses Crt;
Type Elem=Char;
      Fila = ^Nodo;
      Nodo = Record
                 Obj : Elem;
                 Prox:Fila;
             end;
Var
  Comeco, Final: Fila;

Procedure QInit;
Begin
  Comeco:=nil;
  Final:=nil;
End;

Function QIsEmpty(Var Comeco,Final:Fila):Boolean;
Begin
  If (Comeco=nil) and (Final=nil)
    Then QIsEmpty:=True
    Else QIsEmpty:=False;
End;

Procedure EnQueue (Var Comeco,Final:Fila; X:Elem);
Var
  N:Fila;
Begin
  New (N);
  N^.Obj := x;
  N^.Prox := nil;
  If QIsEmpty(Comeco,Final)
    Then Begin
           Comeco:=N;
           Final:=N;
         End
    Else Begin
           Final^.Prox:= N;
           Final:=N;
         End;
End;

Function DeQueue(Var Comeco,Final:Fila): Elem;
Var
  Q:Fila;
Begin
  If not QIsEmpty (Comeco,Final)
    Then Begin
           DeQueue:= Comeco^.Obj;
           Q:=Comeco;
           If (Final^.Prox=nil) and (Comeco^.prox=nil)
             Then Begin
                    Final:=nil;
                    Comeco:=nil;
                  End
             Else Comeco:=Comeco^.prox;
           Dispose(Q);
         End
    Else Writeln ('Fila Underflow!!');
End;

Procedure Listar(Var Comeco:Fila);
Var
  P:Fila;
  i:integer;
Begin
  Clrscr;
  Gotoxy(23,3);
  Writeln('Elementos inseridos na Fila');
  Writeln;
  P:= Comeco;
  i:=0;
  While (p<> nil) do
    Begin
      Write (P^.Obj, ' ');
      P:=P^.prox;
      i:=i+1;
    End;
  Writeln;
  Writeln;
  Writeln ('A Fila tem ', i, ' Elementos');
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
        then EnQueue(Comeco,Final,x);
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
      Gotoxy(23,3); Writeln ('Eliminar Elementos da Fila');
      k:= DeQueue(Comeco,Final);
      Gotoxy (20,15); Writeln ('Elemento ',k,' Foi Eliminado com Sucesso');
      Gotoxy(24,25); Write ('Deseja Eliminar outro elemento?(S/N): ');
      Readln(Resp);
    End;
End;

Begin
  While True do
    Begin
      Clrscr;
      Writeln ('1. Inicializa Fila');
      Writeln ('2. Insere Elementos na Fila');
      Writeln ('3. Eliminar Elementos na Fila');
      Writeln ('4. Listar Elementos da Fila');
      Writeln ('5. Finalizar');
      Writeln;
      Writeln ('Opcao: ');
      Case Readkey of
        '1':Begin
              Clrscr;
              QInit;
              Gotoxy(20,10); Writeln ('Fila Inicializada...');
              Gotoxy(24,25); Write('Tecle <Enter> para voltar ao Menu Principal');
              Readln;
            End;
        '2':Insere;
        '3':Elimina;
        '4':Listar(Comeco);
        '5':Halt;
      End;
    End;
End.
