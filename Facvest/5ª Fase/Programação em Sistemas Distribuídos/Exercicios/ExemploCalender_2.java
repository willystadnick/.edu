//Se você deseja que o nome do mês ou dia da semana seja internacionalizável
//Deve utilizar a classe java.text.DateFormatSymbols
//Com ela é possível capturar, por exemplo, o nome do dia da semana por extenso em português.

import java.text.DateFormatSymbols;
import java.util.Calendar;
import java.util.Locale;


public class ExemploCalender_2 {
      public static void main(String args[]) {
          Locale            meuLocal      = new Locale("pt", "USA");
          DateFormatSymbols dfs           = new DateFormatSymbols(meuLocal);
          Calendar          hoje          = Calendar.getInstance();
          int               diaSemana     = hoje.get(hoje.DAY_OF_WEEK);
          int               mes           = hoje.get(hoje.MONTH);
          int               diaMes        = hoje.get(hoje.DAY_OF_MONTH);
          int               ano           = hoje.get(hoje.YEAR);
          String[]          diasDaSemana  = dfs.getWeekdays();
          String[]          meses         = dfs.getMonths();
          System.out.println("Hoje e' " + diasDaSemana[diaSemana] + ", "
                            + diaMes + " de " + meses[mes] + " de " + ano);
      }
  }
