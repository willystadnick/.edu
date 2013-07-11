import java.util.Date;
import javax.swing.JOptionPane;
public class trab10{
	public static void main(String args[]){
		String nome = String.valueOf(JOptionPane.showInputDialog("Ola, qual é o seu nome? "));
		JOptionPane.showMessageDialog(null,"Prazer em conhecer você, "+nome);
		String vive = String.valueOf(JOptionPane.showInputDialog("Onde você vive? "));
		JOptionPane.showMessageDialog(null,"Que coincidencia! Já morei em  "+vive);
		String pergunta = "null";
		int sai = 0;
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
		Date h = new Date();
		String hora = "null";
		int hr = h.getHours();
		int mn = h.getMinutes();
		int sg = h.getSeconds();
		hora = (String.valueOf(hr) + ":" + String.valueOf(mn) + ":" + String.valueOf(sg));
		while(sai != 1){
			pergunta = (JOptionPane.showInputDialog("Pode perguntar..."));
			if (pergunta.equals("que dia e hoje")){
				JOptionPane.showMessageDialog(null,"Hoje é dia "+data);}
			if (pergunta.equals("que horas sao")){
				JOptionPane.showMessageDialog(null,"São "+hora);}
			if (pergunta.equals("obrigado")){
				sai = 1;}
			else{
				JOptionPane.showMessageDialog(null,"Desculpa, mas eu nao entendi...");}}
		JOptionPane.showMessageDialog(null,"Tchau");}}