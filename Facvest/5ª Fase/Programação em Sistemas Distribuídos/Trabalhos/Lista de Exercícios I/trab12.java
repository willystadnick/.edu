import java.util.Date;
import javax.swing.JOptionPane;
public class trab12{
	public static void main(String args[]){
		int notas = 0;
		Date d = new Date();
		String data = "null";
		int dia = d.getDate();
		int mes_nro = d.getMonth();
		String mes = "null";
		switch(mes_nro){
			case 0 : mes = "Janeiro"; break;
			case 1 : mes = "Fevereiro"; break;
			case 2 : mes = "Março"; break;
			case 3 : mes = "Abril"; break;
			case 4 : mes = "Maio"; break;
			case 5 : mes = "Junho"; break;
			case 6 : mes = "Julho"; break;
			case 7 : mes = "Agosto"; break;
			case 8 : mes = "Setembro"; break;
			case 9 : mes = "Outubro"; break;
			case 10 : mes = "Novembro"; break;
			case 11 : mes = "Dezembro"; break;};
		int ano_nro = d.getYear();
		int ano = ano_nro + 1900;
		data = (String.valueOf(dia) + " de " + String.valueOf(mes) + " de " + String.valueOf(ano));
		int nota[] = new int[12];
		String conceito[] = {"A", "A-", "B+", "B", "B-", "C+", "C", "C-", "D+", "D", "D-", "F"};
		nota[0] = 95;
		nota[1] = 90;
		nota[2] = 85;
		nota[3] = 80; 
		nota[4] = 75;
		nota[5] = 70;
		nota[6] = 65;
		nota[7] = 60;
		nota[8] = 55;
		nota[9] = 50; 
		nota[10] = 45;
		nota[11] = 0;
		while(notas != 999){
			JOptionPane.showMessageDialog(null,"Hoje e: " + data);
			notas = Integer.parseInt(JOptionPane.showInputDialog("Digite a nota..."));
			if (notas != 999){
				for (int i = 0; i < 12; i++){
			if (notas >= nota[i]){
				JOptionPane.showMessageDialog(null, "Conceito " + conceito[i]);
				i = 13;}}}}
		System.exit(0);}}