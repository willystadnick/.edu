import java.io.*;
import java.util.Calendar;
import java.util.Date;
 
public class Aula0503 {
 
public static void main(String args[]) {
     String s = "";
     Calendar data = Calendar.getInstance();
     Calendar dataNascimento = Calendar.getInstance();
     DataInputStream dado;
 
     try {
 
       System.out.println("Digite o dia de nascimento da Pessoa Fisica. Exemplo: 20 : ");
       dado = new DataInputStream(System.in);
       s = dado.readLine();
       int dia = Integer.parseInt(s);
       dataNascimento.set(data.DAY_OF_MONTH, dia-1 );
 
       System.out.println("Digite o mes de nascimento da Pessoa Fisica. Exemplo: 09 : ");
       dado = new DataInputStream(System.in);
       s = dado.readLine();
       int mes = Integer.parseInt(s);
       dataNascimento.set(data.MONTH, mes-1 );
 
       System.out.println("Digite o ano do nascimento da Pessoa Fisica. Exemplo: 1985 : ");
       dado = new DataInputStream(System.in);
       s = dado.readLine();
       int ano = Integer.parseInt(s);
       dataNascimento.set(data.YEAR, ano);
 
       long melesVida =
           (new Date(0).getTime() < dataNascimento.getTime().getTime()) ?
           data.getTime().getTime() - dataNascimento.getTime().getTime() :
           data.getTime().getTime() + Math.abs(dataNascimento.getTime().getTime());
 
       System.out.println(melesVida / 86400000
                          + " dias. Estes sao os dias de vida da Pessoa Fisica");
     }
 
     catch (IOException e) {
       System.out.println("Ocorreu algum erro na entrada de dados");
     }
     catch (NumberFormatException e) {
       System.out.println("Ocorreu algum erro, digite apenas valores numéricos");
     }
   }
 }
 
 //O Exercício poderia ser feito diferente, mas podemos pegar o 
 //getTime de um objeto Date mesmo (embora muitos métodos já estejam deprecated). 
 //Na realidade, se a pessoa nasceu antes de 1/1/1970, será retornado um número
 //negativo. Desta forma, em vez de subtrair este número, simplesmente pegamos o 
 //valor absoluto dele e adicionamos ao getTime do objeto data.

 
