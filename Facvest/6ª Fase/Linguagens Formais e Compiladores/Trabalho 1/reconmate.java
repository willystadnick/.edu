public class reconmate
	{
	static String num[] = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};
	static String let[] = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
	static String ope[] = {"+", "-"};
	static String exp = "", aux = "";
	static int i, j, invalida = 0;

	public static void erro_sintatico()
		{
		System.out.println("");
		System.out.println("Expressão com erro Sintático:\n\nPossui caracter(es) arranjados\nde forma não condizente à gramática");
		}
	public static void expressao_correta()
		{
		System.out.println("");
		System.out.println("Expressão Correta!");
		}
	public static void estado(int n, int p, String a)
		{
		switch(n){
			case 1:
				aux = String.valueOf(a.charAt(p));
				if(aux.equals("n"))
					{
					p++;
					estado(1,p,a);
					}
					else
						{
						if(aux.equals("o"))
							{
							p++;
							estado(2,p,a);
							}
							else
								{
								erro_sintatico();
								}
						}
				break;
	    	case 2:
				aux = String.valueOf(a.charAt(p));
				if(aux.equals("l"))
					{
					p++;
					estado(3,p,a);
					}
					else
						{
						erro_sintatico();
						}
				break;
	    	case 3:
				aux = String.valueOf(a.charAt(p));
				if(aux.equals("l"))
					{
					p++;
					estado(3,p,a);
					}
					else
						{
						if(aux.equals("f"))
							{
							expressao_correta();
							}
							else
								{
								erro_sintatico();
								}
						}
				break;
			case 4:
				aux = String.valueOf(a.charAt(p));
				if(aux.equals("l"))
					{
					p++;
					estado(4,p,a);
					}
					else
						{
						if(aux.equals("o"))
							{
							p++;
							estado(5,p,a);
							}
							else
								{
								erro_sintatico();
								}
						}
				break;
	    	case 5:
				aux = String.valueOf(a.charAt(p));
				if(aux.equals("n"))
					{
					p++;
					estado(6,p,a);
					}
					else
						{
						erro_sintatico();
						}
				break;
	    	case 6:
				aux = String.valueOf(a.charAt(p));
				if(aux.equals("n"))
					{
					p++;
					estado(6,p,a);
					}
					else
						{
						if(aux.equals("f"))
							{
							expressao_correta();
							}
							else
								{
								erro_sintatico();
								}
						}
				break;
	    	default:
				System.out.println("");
				System.out.println("Expressão Inválida");}
		}
	public static void main(String[] args)
		{
		String token = "", ass = "", exp = args[0];
		if(exp.length() > 0)
			{
			System.out.println("");
			System.out.println("==================================================");
			System.out.println("");
			System.out.println("Expressão...: " + exp);
			System.out.println("");
			System.out.println("Tamanho.....: " + exp.length() + " caracteres");
			System.out.println("");
			for(i = 0; i < exp.length(); i++)
				{
				if(i < 9)
					{
					System.out.print("Token(0" + (i + 1) + "): " + exp.charAt(i));
					}
				else
					{
					System.out.print("Token(" + (i + 1) + "): " + exp.charAt(i));
					}

				token = String.valueOf(exp.charAt(i));
				int conhecido = 0;

				for(j = 0; j < 10; j++)
					{
					if(token.equals(num[j]))
						{
						System.out.println(" -> NÚMERO");
						ass = ass + "n";
						conhecido = 1;
						}
					}
				for(j = 0; j < 52; j++)
					{
					if(token.equals(let[j]))
						{
						System.out.println(" -> LETRA");
						ass = ass + "l";
						conhecido = 1;
						}
					}
				for(j = 0; j < 2; j++)
					{
					if(token.equals(ope[j]))
						{
						System.out.println(" -> OPERADOR");
						ass = ass + "o";
						conhecido = 1;
						}
					}
				if(conhecido == 0)
					{
					System.out.println(" -> CARACTERE INVÁLIDO");
					invalida = 1;
					}
				}
			
			ass = ass + "f";

			if(invalida == 1)
				{
				System.out.println("");
				System.out.println("Expressão com erro Semântico:\n\nPossui caracter(es) não pertencentes\nao vocabulário da gramática");
				}
				else
					{
					token = String.valueOf(ass.charAt(0));

//					System.out.println(ass);
//					System.out.println(token);

					if(token.equals("n")){estado(1,1,ass);}
					if(token.equals("l")){estado(4,1,ass);}
					}
			System.out.println("");
			System.out.println("==================================================");}
		else{System.out.println("Expressão Inexistente");}
		System.exit(0);}}