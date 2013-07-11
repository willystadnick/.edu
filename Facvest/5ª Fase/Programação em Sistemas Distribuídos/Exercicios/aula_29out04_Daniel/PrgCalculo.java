import javax.swing.JOptionPane;
public class PrgCalculo{
	public static void main (String args []){
		double x;
		int n = Integer.parseInt(JOptionPane.showInputDialog("Digite um número:"));
		x = 1/n;
		for (int i=1;i<=23;i++){
			x = (n+1)*x-1;
			System.out.print("int: "+ i);
			System.out.println(" Resultado: "+ x);
		}
		System.exit(0);
	}
}