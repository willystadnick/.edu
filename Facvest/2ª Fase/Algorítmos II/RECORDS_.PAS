program pre_requisito;
uses crt;
type
 dsp = (algor1, algor2, dados1, dados2, ori);
var
 dsp1, dsp2, dsp3, dsp4 : dsp;
 n : integer;
begin
 clrscr;
 dsp1 := algor1;
 dsp2 := algor2;
 dsp3 := dados1;
 dsp4 := dados2;
 if dsp1 = pred(algor2)
  then writeln('dsp1 Ç pre requisito de dsp2')
  else writeln('dsp1 n∆o Ç pre requisito de dsp2');
 writeln;
 if dsp3 < dsp4
  then writeln('dsp4 Ç pre requisito de dsp3')
  else writeln('dsp4 n∆o Ç pre requisito de dsp3');
 writeln;
 if dsp3 = succ(dsp2)
  then writeln('dsp2 Ç pre requisito de dsp3')
  else writeln('dsp2 n∆o Ç pre requisito de dsp3');
 writeln;
 n := ord(dados2);
 writeln('n: ', n);
 readln;
end.

