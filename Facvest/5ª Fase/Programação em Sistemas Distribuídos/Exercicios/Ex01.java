import javax.swing.JOptionPane;
public class Ex01{
    public static void main(String args[]){
        String nome1 = JOptionPane.showInputDialog("Digite o 1º nome:"); 
        String nome2 = JOptionPane.showInputDialog("Digite o 2º nome:"); 
        String nome3 = JOptionPane.showInputDialog("Digite o 3º nome:");
        String resultado = "\n" + nome1 + nome3 + "\n" + nome2;
        JOptionPane.showMessageDialog(null, resultado);
        System.exit(0);
    }
}