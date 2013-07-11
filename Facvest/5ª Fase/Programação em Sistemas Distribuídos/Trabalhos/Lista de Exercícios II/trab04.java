import java.util.Date;
import javax.swing.JOptionPane;  

public class trab04{
	public static void main(String args []){
		String dia, mes, ano;
		int Vdia, Vmes, Vano;
		Date d = new Date();
		PegaData n = new PegaData();
		String nascimento = JOptionPane.showInputDialog("Digite sua Data de Nascimento: ");
		boolean valido = n.VerificaData(nascimento);
		if(valido){
			dia = nascimento.substring(0,2);
			mes = nascimento.substring(3,5);
			ano = nascimento.substring(6);
			if(ano.length() == 4){
				String sec = "00";
				ano = sec.concat(ano.substring(2));}
			Vdia = Integer.parseInt(dia.trim());
			Vmes = Integer.parseInt(mes.trim());
			Vano = Integer.parseInt(ano.trim());
			double total = d.getTime();
			d.setDate(Vdia);
			d.setMonth(Vmes-1);
			d.setYear(Vano);
			double milisec = total - d.getTime(); 
			double umdia = 1000*60*60*24;
			double dias = milisec / umdia; 
			double anos = dias / 366;
			System.out.println("Milissegundos: " + milisec + "\nAnos: " + anos + "\n");
			JOptionPane.showMessageDialog(null, "Tempo de Vida: " + dias, "Tempo de Vida", 0);}
		else {System.out.println("ERRO!!");}
		System.exit(0);}}