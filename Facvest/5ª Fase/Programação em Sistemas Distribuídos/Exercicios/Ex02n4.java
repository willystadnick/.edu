import javax.swing.JOptionPane;
public class Ex02n4{
    public static void main(String args[]){
        int valor1 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 1� n�mero:")); 
        int valor2 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 2� n�mero:")); 
        int valor3 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 3� n�mero:")); 
        int valor4 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 4� n�mero:")); 
        float media = ((valor1 + valor2 + valor3 + valor4) / 4);
        float soma = (valor1 + valor2 + valor3 + valor4);
        JOptionPane.showMessageDialog(null, "M�dia: " + media);
        JOptionPane.showMessageDialog(null, "Soma: " + soma);
        System.exit(0);
    }
}