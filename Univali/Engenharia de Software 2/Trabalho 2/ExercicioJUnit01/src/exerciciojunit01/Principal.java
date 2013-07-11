package exerciciojunit01;

import java.util.*;
import metodobolha.MetodoBolha;

public class Principal {

  public static void main(String[] args) {
    MetodoBolha b = new MetodoBolha();
    Vector v1 = new Vector();

    v1.add(new Integer(1));
    v1.add(new Integer(2));
    v1.add(new Integer(3));

    v1 = b.ordena(v1);

    Iterator i = v1.iterator();
    Integer teste;
    while (i.hasNext()) {
      teste = (Integer) i.next();
      System.out.println("saida ordenada = " + teste.intValue());
    }
  }

}