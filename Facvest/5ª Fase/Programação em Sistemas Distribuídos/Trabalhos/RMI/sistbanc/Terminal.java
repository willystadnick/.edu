import java.rmi.*;
import javax.swing.JOptionPane;

public class Terminal{
	public static void main(String args[]){
		String NomedoObjeto = null;

		if(args.length == 0)
			NomedoObjeto = "//localhost/TempServer";
		else
			NomedoObjeto = "//" + args[0] + "/TempServer";
		try{
			Banco RefdoObjeto = (Banco)Naming.lookup(NomedoObjeto);

			int opcao, valor = 0;

			do{
				System.out.println("- Bem-Vindo ao Terminal Banc�rio -");
				System.out.println("");
				System.out.println("Selecione a op��o: ");
				System.out.println("");
				System.out.println("1 - Efetuar Dep�sito");
				System.out.println("2 - Efetuar Saque");
				System.out.println("3 - Verificar Saldo");
				System.out.println("4 - Imprimir Extrato");
				System.out.println("5 - Sair");
				System.out.println("");

				opcao = Integer.parseInt(JOptionPane.showInputDialog("Selecione a op��o: "));

				switch(opcao){
					case 1 : 
						valor = Integer.parseInt(JOptionPane.showInputDialog("Digite o valor a ser depositado: "));
						RefdoObjeto.efetuaDeposito(valor);
						System.out.println(RefdoObjeto.msg());
						break;

					case 2 : 
						valor = Integer.parseInt(JOptionPane.showInputDialog("Digite o valor a ser sacado: "));
						RefdoObjeto.efetuaSaque(valor);
						System.out.println(RefdoObjeto.msg());
						break;

					case 3 : 
						System.out.println("Seu saldo � de R$" + RefdoObjeto.verificaSaldo());
						break;

					case 4 :
						System.out.println("Seu extrato...\n" + RefdoObjeto.imprimeExtrato());
						break;

					case 5 : 
						System.out.println("Obrigado por usar o Terminal Banc�rio...");
						System.exit(0);
						break;

					default : System.out.println("Op��o incorreta...\n");}}
			while(opcao != 5);}

		catch(java.rmi.ConnectException ce){
			System.err.println("Conex�o ao Sistema Banc�rio Falhou!");}
		catch(Exception e){
			e.printStackTrace();
			System.exit(1);}}}