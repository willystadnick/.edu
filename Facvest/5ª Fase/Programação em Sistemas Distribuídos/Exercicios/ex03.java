public class ex03{
   public static void main(String args[]){
	  String A5 = "Aprendendo Java";
      System.out.println("Mai�scula: " + A5.toUpperCase());
      System.out.println("Min�scula: " + A5.toLowerCase());

      System.out.println(" ");
      System.out.println("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
      System.out.println(" ");

	  String A6 = "Aprendendo Java";
      System.out.println("3 caractere: " + A6.substring(2));
      System.out.println("1� a 10� caractere: " + A6.substring(0,10));
      System.out.println("12� a 15� caractere: " + A6.substring(11,15));

      System.out.println(" ");
      System.out.println("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-");
      System.out.println(" ");

      String A7 = "  Aprendendo Java  ";
      System.out.println("Sem espa�os: " + A7.trim());
      System.out.println("Sem espa�os: " + A7);
   }
}