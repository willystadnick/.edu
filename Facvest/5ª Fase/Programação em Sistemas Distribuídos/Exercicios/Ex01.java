import javax.swing.JOptionPane;
public class Ex01{
    public static void main(String args[]){
        String nome1 = JOptionPane.showInputDialog("Digite o 1� nome:"); 
        String nome2 = JOptionPane.showInputDialog("Digite o 2� nome:"); 
        String nome3 = JOptionPane.showInputDialog("Digite o 3� nome:");
        String resultado = "\n" + nome1 + nome3 + "\n" + nome2;
        JOptionPane.showMessageDialog(null, resultado);
        System.exit(0);
    }
}