import javax.swing.JOptionPane;
public class Ex02n2{
    public static void main(String args[]){
        int qtd1 = Integer.parseInt(JOptionPane.showInputDialog("Digite a 1� quantidade:")); 
        float valor1 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 1� valor:")); 
        int qtd2 = Integer.parseInt(JOptionPane.showInputDialog("Digite a 2� quantidade:")); 
        float valor2 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 2� valor:")); 
        int qtd3 = Integer.parseInt(JOptionPane.showInputDialog("Digite a 3� quantidade:")); 
        float valor3 = Float.parseFloat(JOptionPane.showInputDialog("Digite o 3� valor:")); 
        float total = ((qtd1 * valor1) + (qtd2 * valor2) + (qtd3 * valor3));
        String tot = String.valueOf(total);
        JOptionPane.showMessageDialog(null, "Valor Total: R$" + tot);
        System.exit(0);
    }
}