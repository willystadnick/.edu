import javax.swing.JOptionPane;
public class trab02{
	public static void main(String args[]){
		int nro = Integer.parseInt(JOptionPane.showInputDialog("Digite o 1� valor: "));
		if(nro % 2 == 0){
			System.out.println(nro + " � Par");}
		else{
			System.out.println(nro + " � Impar");}
		System.exit(0);}}