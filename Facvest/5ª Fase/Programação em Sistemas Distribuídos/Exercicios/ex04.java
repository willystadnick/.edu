public class ex04{
   public static void main(String args[]){
      String A8 = "  Aprendendo Java  ";
      System.out.println("Trocar 'a' por 'u': " + A8.replace('a', 'u'));
      System.out.println("Trocar 'n' por 'N': " + A8.replace('n', 'N'));

      System.out.println(" ");
      System.out.println("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
      System.out.println(" ");

      int a1 = 11;
      double b1 = 10.5;
      long c1 = 345;
      String S = String.valueOf(a1) + String.valueOf(b1) + String.valueOf(c1);
      System.out.println(S);

      System.out.println(" ");
      System.out.println("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
      System.out.println(" ");

      String A9 = "  Aprendendo Java  ";
      System.out.println(A9.concat("na FACVEST"));

      System.out.println(" ");
      System.out.println("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
      System.out.println(" ");

      String A0 = "Java ";
      System.out.println("[Java] e [java] são:");
      if (A0.equals("java")){
         System.out.println("Iguais");}
      else{
         System.out.println("Diferentes");}

      System.out.println(" ");
      System.out.println("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
      System.out.println(" ");

      String AA = "Java ";
      System.out.println("Posição da letra 'a' em [Java]: " + (AA.indexOf('a') + 1));
   }
}