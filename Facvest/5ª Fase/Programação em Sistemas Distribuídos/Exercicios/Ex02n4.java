import javax.swing.JOptionPane;
public class Ex02n4{
    public static void main(String args[]){
        int valor1 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 1º número:")); 
        int valor2 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 2º número:")); 
        int valor3 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 3º número:")); 
        int valor4 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 4º número:")); 
        float media = ((valor1 + valor2 + valor3 + valor4) / 4);
        float soma = (valor1 + valor2 + valor3 + valor4);
        JOptionPane.showMessageDialog(null, "Média: " + media);
        JOptionPane.showMessageDialog(null, "Soma: " + soma);
        System.exit(0);
    }
}