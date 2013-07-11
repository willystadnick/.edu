Program Inverte_Numero; 
Uses CRT; 

Var 

numero, novo, resto, d1, d2, d3 : Integer; 

Begin 
ClrScr; 

     Write ('Digite um n£mero: ');
      Readln (numero);
      d1 := numero div 100;
      resto := numero mod 100;
      d2 := resto div 10;
      d3 := resto mod 10;
       novo := (d3 * 100) + (d2 * 10) + (d1 * 1);
       Writeln ('O n£mero ', numero, ' ao contr rio ‚ ', novo);
       readkey;

End.