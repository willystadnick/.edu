//Descobrindo o dia da Semana

//Utilizando a classe java.util.Calendar é possível obter várias 
//informações sobre a data correte do sistema.

//Como saber se hoje é um determinado dia da semana, domingo por exemplo?
//Para isso é necessário:
		//primeiro obter uma instância da classe java.util.Calendar. 
		//Em seguida, utilizando o método public int get(int field), é possível obter 
		//diversas informações enviando como parâmetro uma das constantes declaradas 
		//na própria classe Calendar.
		
//Exemplos destas constantes são:

//DAY_OF_MONTH
//DAY_OF_WEEK
//WEEK_OF_MONTH

//Abaixo uma aplicação exemplo:

import java.util.Calendar;
  public class ExemploCalender_1 {
     public static void main(String args[]) {
         
         Calendar hoje = Calendar.getInstance();
        
         if (Calendar.WEDNESDAY  == hoje.get(hoje.DAY_OF_WEEK)) {
             System.out.println("Hoje e' Quarta-Feira");
         } else {
             System.out.println("Hoje e' outro dia");
         }
         
         System.out.println("Outras informacoes: ");
         System.out.println("hoje.get(hoje.DAY_OF_MONTH) = "+hoje.get(hoje.DAY_OF_MONTH));
         System.out.println("hoje.get(hoje.MONTH)        = "+hoje.get(hoje.MONTH));
         System.out.println("hoje.get(hoje.DAY_OF_YEAR)  = "+hoje.get(hoje.DAY_OF_YEAR));
         System.out.println("hoje.get(hoje.WEEK_OF_YEAR) = "+hoje.get(hoje.WEEK_OF_YEAR));
     }
}

