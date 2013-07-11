import java.util.Date;
import javax.swing.JOptionPane;  

public class trab05{
	public static void main(String args []){
		String promocao[] = {"Carro 0km Com 10% de DESCONTO",
			"Dvd + bonus 10 Filmes ou VideoClips a escolha",
			"VIAGEM para QUALQUER LUGAR DO MUNDO com TUDO PAGO",
			"VÁ PARA O PARAISO COM 70 VIRGENS - SEJA UM HOMEM-BOMBA!!!",
			"AVAIANAS DI PAAAUUUU, ACABE COM OS POBREMAS, CONCERTE SUA VIDINHA",
			"EDUCANDO SUA FILHINHA com CHUPA CABRAS DO BANHADO 100% GRATIS!!!",
			"HOJE E SABADO!!! - VAI ACHAR O QUE FAZER!!!"};
		Date d = new Date();
		JOptionPane.showMessageDialog(null, promocao[d.getDay()], "Promoção do Dia", 0);
		System.exit(0);}}