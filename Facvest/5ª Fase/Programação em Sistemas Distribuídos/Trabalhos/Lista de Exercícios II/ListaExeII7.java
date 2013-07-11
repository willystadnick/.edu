import javax.swing.JOptionPane;

public class ListaExeII7{
	public static void msg(String str){
		System.out.print(str);}
	
	public static void MenuPrim (){
		int op = Integer.parseInt(JOptionPane.showInputDialog("MENU PRINCIPAL\n\n\n1)Chefe\n2)Vendedor\n3)Produtor\n4)Horista\n5)Sair\n\n"));
	    switch (op){
			case 1:
				msg("Classe Chefe... ");
				MenuCad("Chefe");
				break;
	    	case 2:
				msg("Classe Vendedor... ");
				MenuCad("Vendedor");
				break;
	    	case 3:
				msg("Classe Produtor... ");
				MenuCad("Produtor");
				break;
	    	case 4:
				msg("Classe Horista... ");
				MenuCad("Horista");
				break;
	    	case 5:
				msg("\n\nTchau\n\n");
				break;
	    	default:
				msg("opcao inexiste!!!");}}
	
	public static void MenuCad(String quem){
		int op = Integer.parseInt(JOptionPane.showInputDialog("MENU("+quem+")\n\n1)Cadastrar\n2)Listar\n3)Alterar\n4)Voltar\n\n"));
	    switch (op){
			case 1:
				msg("Acessando Objeto...\n");
				if(quem=="Chefe"){
					OChefe met = new OChefe();
					met.criaChefe();}
				if(quem=="Vendedor"){
					OVendedor met = new OVendedor();
					met.criaVendedor();}
				if(quem=="Produtor"){
					OProdutor met = new OProdutor();
					met.criaProdutor();}
				else{
					if(quem != "Chefe" && quem != "Vendedor" && quem != "Produtor"){quem="Horista";}}
				if(quem=="Horista"){
					OHorista met = new OHorista();
					met.criaHorista();}
				System.out.println(quem + " definido!!");
				MenuCad(quem);
				break;
			case 2:
				msg("Listar Objeto\n");	    	   
				if(quem=="Chefe"){
					OChefe met = new OChefe();
					met.mostraTudo();}
				if(quem=="Vendedor"){
					OVendedor met = new OVendedor();
					met.mostraTudo();}
				if(quem=="Produtor"){
					OProdutor met = new OProdutor();
					met.mostraTudo();}	    	    
				if(quem=="Horista"){
					OHorista met = new OHorista();
					met.mostraTudo();}
				System.out.println(quem+" definido!!");	    	    
				MenuCad(quem);
				break;
			case 3:
				msg("Alterar objeto\n");
				MenuPrim();
				break;
			case 4:
				msg("Voltar\n");
				MenuPrim();
				break;
			default:
				msg("\nopcao inexiste!!!");}}
			
	public static void main (String args[]){
		msg("O imundo\n\n\n");
		MenuPrim();
		System.exit(9);}}