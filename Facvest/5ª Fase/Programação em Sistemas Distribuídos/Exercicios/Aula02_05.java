public class Aula02_05 {
  public static void main (String args[]) {
    float largura,comprimento,profundidade,total;
    float metro=45;
    largura=Float.parseFloat(args[0]);
    comprimento=Float.parseFloat(args[1]);
    profundidade=Float.parseFloat(args[2]);
    total=((largura*comprimento*profundidade)*metro);
    System.out.println("O valor a ser cobrado ‚ R$: " + total);
  }
}
