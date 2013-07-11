public class MinhaConversao {
  public static void main(String args[]) {
    double n1, n2, trab, med;
    n1=Double.parseDouble(args[0]);
    n2=Double.parseDouble(args[1]);
    trab=Double.parseDouble(args[2]);
    med=(n1+n2+trab)/3;
    System.out.println("Media: " + med);
  }
}
