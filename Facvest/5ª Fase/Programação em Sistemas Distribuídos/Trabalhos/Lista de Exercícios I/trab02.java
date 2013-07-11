import javax.swing.JOptionPane;
public class trab02{
	public static void main(String args[]){
		int nro = Integer.parseInt(JOptionPane.showInputDialog("Digite o 1º valor: "));
		if(nro % 2 == 0){
			System.out.println(nro + " é Par");}
		else{
			System.out.println(nro + " é Impar");}
		System.exit(0);}}