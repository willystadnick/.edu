public class Corrida extends Thread{
	String nome;

	public Corrida(String str){
		super(str);
		nome = str;}
	
	public void run(){
	
		Lebre L = new Lebre();
		Tartaruga T = new Tartaruga();

		do{
			int i = ((int)(Math.random()*10));
			switch(i){
				case 0 : T.caminhaRapido(); L.dorme(); break;
				case 1 : T.caminhaRapido(); L.dorme(); break;
				case 2 : T.caminhaRapido(); L.saltaLonge(); break;
				case 3 : T.caminhaRapido();	L.saltaLonge();	break;
				case 4 : T.caminhaRapido();	L.escorregaMuito(); break;
				case 5 : T.escorrega();	L.saltaPerto();	break;
				case 6 : T.escorrega();	L.saltaPerto();	break;
				case 7 : T.caminhaLento(); L.saltaPerto(); break;
				case 8 : T.caminhaLento(); L.escorregaPouco(); break;
				case 9 : T.caminhaLento(); L.escorregaPouco(); break;}

			if(nome == "Lebr"){
				System.out.println("A Lebre está......:	" + L.status + " e foi para a posição " + L.pos);}
			if(nome == "Tart"){
				System.out.println("A Tartaruga está..:	" + T.status + " e foi para a posição " + T.pos);}
			
			if(L.pos == T.pos){
				System.out.println("");
				System.out.println("A Tartaruga mordeu a Lebre na posição " + L.pos);
				System.out.println("");}
			
			try{
				sleep(1000);}
			catch(InterruptedException e){}}

		while(L.pos != 70 || T.pos != 70);
		if(L.pos == 70){
			System.out.println("A Lebre foi a campeã da corrida...");}
		if(T.pos == 70){
			System.out.println("A Tartaruga foi a campeã da corrida...");}}}