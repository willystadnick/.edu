public class Aula02_04 {
  public static void main (String args[]) {
    float v1,v2,v3,v4,media,somatorio,r1,r2,r3,r4;
    v1=Float.parseFloat(args[0]);
    v2=Float.parseFloat(args[1]);
    v3=Float.parseFloat(args[2]);
    v4=Float.parseFloat(args[3]);
    media=((v1+v2+v3+v4)/4);
    somatorio=(v1+v2+v3+v4);
    r1=(somatorio % v1);
    r2=(somatorio % v2);
    r3=(somatorio % v3);
    r4=(somatorio % v4);
    System.out.println("A m,dia entre os valores ‚: " + media);
    System.out.println("O Somatorio dos valores ‚: " + somatorio);
    System.out.println("O primeiro resto ‚: " + r1);
    System.out.println("O segundo resto ‚: " + r2);
    System.out.println("O terceiro resto ‚: " + r3);
    System.out.println("O quarto resto ‚: " + r4);
  }
}
