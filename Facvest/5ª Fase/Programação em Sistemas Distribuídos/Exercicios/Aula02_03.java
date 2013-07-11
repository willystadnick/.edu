public class Aula02_03 {
  public static void main (String args[]) {
    double largura, comprimento, area;
    largura=Double.parseDouble(args[0]);
    comprimento=Double.parseDouble(args[1]);
    area=(largura*comprimento);
    System.out.println("A area total do terreno ‚: " + area);
  }
}
