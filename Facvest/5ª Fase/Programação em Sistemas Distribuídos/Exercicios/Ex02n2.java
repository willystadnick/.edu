import javax.swing.JOptionPane;
public class Ex02n2{
    public static void main(String args[]){
        int qtd1 = Integer.parseInt(JOptionPane.showInputDialog("Digite a 1ª quantidade:")); 
        float valor1 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 1º valor:")); 
        int qtd2 = Integer.parseInt(JOptionPane.showInputDialog("Digite a 2ª quantidade:")); 
        float valor2 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 2º valor:")); 
        int qtd3 = Integer.parseInt(JOptionPane.showInputDialog("Digite a 3ª quantidade:")); 
        float valor3 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 3º valor:")); 
        float total = ((qtd1 * valor1) + (qtd2 * valor2) + (qtd3 * valor3));
        String tot = String.valueOf(total);
        JOptionPane.showMessageDialog(null, "Valor Total: R$" + tot);
        System.exit(0);
    }
}