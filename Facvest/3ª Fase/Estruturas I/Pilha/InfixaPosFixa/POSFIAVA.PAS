Program PosFIAva;
Uses
  Crt;
Const Max=50;
Type Elem=Real;
     Pilha= Record
              Topo:integer;
              memo:Array[1..Max] of Elem;
            End;

     Valores=array['A'..'Z'] of elem;

Var
  P:Pilha;
  E:String;
  V:Valores;

Procedure Init;
Begin
  p.Topo:=0;
End;

Function IsEmpty(Var P:Pilha):Boolean;
Begin
  If p.Topo=0
    Then IsEmpty:=True
    Else IsEmpty:=False;
End;

Function IsFull(Var P:Pilha):Boolean;
Begin
  If p.topo=Max
    Then IsFull:=True
    Else IsFull:=False;
End;

Procedure Push(Var P:Pilha; x:Elem);
Begin
  If not IsFull(p)
    Then Begin
           p.Topo:=p.Topo+1;
           p.Memo[p.Topo]:=x;
         End
    Else Writeln ('Stack Overflow!!');
End;

Function Pop(Var P:Pilha): Elem;
Begin
  If not IsEmpty(p)
    Then Begin
           Pop:=p.Memo[p.Topo];
           p.Topo:= p.Topo-1;
         End
    Else Writeln ('Stack Underflow!!');
End;

Function Top(Var P:Pilha): Elem;
Begin
  If not IsEmpty(p)
    Then Top:=p.Memo[p.Topo]
    Else Writeln ('Stack Underflow!!');
End;

Procedure Atribui(Var V:Valores);
Var
  N:Char;
Begin
  Writeln ('Digite . para finalizar...');
  Repeat
    Write ('Nome: ');
    Readln(n);
    If N in ['A'..'Z']
      Then Begin
             Write('Valor: ');
             Readln (V[N]);
           End;
  Until (N='.');
End;

Function Avalia(E:String;V:Valores):real;
Var
  P:Pilha;
  x,y:real;
  i:Integer;
Begin
  Init;
  For i:=1 to length(E) do
    If E[i] in ['A'..'Z']
      Then Push (P,V[E[i]])
      Else If E[i] in ['+','-','*','/']
             Then Begin
                    Y:= Pop(p);
                    X:= Pop(p);
                    Case E[i] of
                      '+':Push(P,X+Y);
                      '-':Push(P,X-Y);
                      '*':Push(P,X*Y);
                      '/':Push(P,X/Y);
                    End;
                  End;
  Avalia:=Pop(p);
End;

Begin {*Programa Principal*}
  While True do
    Begin
      Clrscr;
      Writeln ('1. Define expressao');
      Writeln ('2. Define Variaveis');
      Writeln ('3. Avalia Expressao');
      Writeln ('4. Finaliza');
      Writeln;
      Write ('Opcao: ');

      Case readkey of
        '1': Begin
               Writeln;
               Write('Npr: ');
               Readln(E);
             End;
        '2': Atribui(V);
        '3': Begin
               Writeln;
               Writeln ('Res: ', Avalia(E,V):0:2);
               Readln;
             End;
        '4': Halt;
      End;
    End;
End.
