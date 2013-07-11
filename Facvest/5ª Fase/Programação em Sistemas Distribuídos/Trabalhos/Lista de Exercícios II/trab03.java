import javax.swing.JOptionPane;
import java.lang.*;

public class trab03{
	public static void main (String args []){
		String banner = JOptionPane.showInputDialog("Digite o conteúdo do banner: ");
		int tam = banner.length();
		int resp = Integer.parseInt(JOptionPane.showInputDialog("Selecione:\n1 - Normal     2 - Inverter"));
		if(r == 2){
			String invertido = "null";
			for(int i = tam-1; i>=0; i--){
				invertido = invertido.concat(String.valueOf(banner.charAt(i)));}
			banner = invertido;}
		for(int i = 0; i<=tam-1; i++){
			System.out.print(String.valueOf(banner.charAt(i)));
			try{
				Thread.sleep(100);}
			catch(InterruptedException e){}}
		System.exit(0);}}