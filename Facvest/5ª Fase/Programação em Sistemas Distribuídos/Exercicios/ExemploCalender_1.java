//Descobrindo o dia da Semana

//Utilizando a classe java.util.Calendar � poss�vel obter v�rias 
//informa��es sobre a data correte do sistema.

//Como saber se hoje � um determinado dia da semana, domingo por exemplo?
//Para isso � necess�rio:
		//primeiro obter uma inst�ncia da classe java.util.Calendar. 
		//Em seguida, utilizando o m�todo public int get(int field), � poss�vel obter 
		//diversas informa��es enviando como par�metro uma das constantes declaradas 
		//na pr�pria classe Calendar.
		
//Exemplos destas constantes s�o:

//DAY_OF_MONTH
//DAY_OF_WEEK
//WEEK_OF_MONTH

//Abaixo uma aplica��o exemplo:

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

