import javax.swing.JOptionPane;
public class Ex02n3{
    public static void main(String args[]){
        float larg = Float.parseFloat(JOptionPane.showInputDialog("Digite a largura:")); 
        float comp = Float.parseFloat(JOptionPane.showInputDialog("Digite o comprimento:"));
        float total = (larg * comp);
        String tot = String.valueOf(total);
        JOptionPane.showMessageDialog(null, "Area total de: " + tot + "m²");
        System.exit(0);
    }
}