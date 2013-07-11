public class expressao
	{
	static String num[] = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};
	static String let[] = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
	static String ope[] = {"*", "/", "!"};
	static String sin[] = {"+", "-"};
	static String abr[] = {"("};
	static String fec[] = {")"};
	static String exp = "", aux = "";
	static int i, j, invalida = 0;

	public static void erro_sintatico()
		{
		System.out.println("");
		System.out.println("");
		System.out.println("Expressão com erro Sintático:\n\nPossui caracter(es) arranjados\nde forma não condizente à gramática");
		}

	public static void erro_semantico()
		{
		System.out.println("");
		System.out.println("");
		System.out.println("Expressão com erro Semântico:\n\nPossui caracter(es) não pertencentes\nao vocabulário da gramática");
		}

	public static void expressao_correta()
		{
		System.out.println("");
		System.out.println("");
		System.out.println("Expressão Correta!");
		}

	public static void estado(int n, int p, String a)
		{
		switch(n)
			{
			case 0:
				System.out.print(" -> (e0)");
				aux = String.valueOf(a.charAt(p));
				if(aux.equals("a"))
					{
					p++;
					estado(0,p,a);
					}
					else
						{
						if(aux.equals("n"))
							{
							p++;
							estado(1,p,a);
							}
							else
								{
								if(aux.equals("l"))
									{
									p++;
									estado(2,p,a);
									}
									else
										{
										if(aux.equals("s"))
											{
											p++;
											estado(3,p,a);
											}
											else
												{
												erro_sintatico();
												}
										}
								}
						}
				break;
			case 1:
				System.out.print(" -> ((e1))");
				aux = String.valueOf(a.charAt(p));
				if(aux.equals("a"))
					{
					p++;
					estado(0,p,a);
					}
					else
						{
						if(aux.equals("n"))
							{
							p++;
							estado(1,p,a);
							}
							else
								{
								if(aux.equals("l"))
									{
									p++;
									estado(2,p,a);
									}
									else
										{
										if(aux.equals("o"))
											{
											p++;
											estado(4,p,a);
											}
											else
												{
												if(aux.equals("s"))
													{
													p++;
													estado(4,p,a);
													}
													else
														{
														if(aux.equals("f"))
															{
															p++;
															estado(5,p,a);
															}
															else
																{
																if(aux.equals("e"))
																	{
																	expressao_correta();
																	}
																	else
																		{
																		erro_sintatico();
																		}
																}											
														}
												}
										}
								}
						}
				break;
	    	case 2:
				System.out.print(" -> ((e2))");
				aux = String.valueOf(a.charAt(p));
				if(aux.equals("a"))
					{
					p++;
					estado(0,p,a);
					}
					else
						{
						if(aux.equals("n"))
							{
							p++;
							estado(1,p,a);
							}
							else
								{
								if(aux.equals("l"))
									{
									p++;
									estado(2,p,a);
									}
									else
										{
										if(aux.equals("o"))
											{
											p++;
											estado(4,p,a);
											}
											else
												{
												if(aux.equals("s"))
													{
													p++;
													estado(4,p,a);
													}
													else
														{
														if(aux.equals("f"))
															{
															p++;
															estado(5,p,a);
															}
															else
																{
																if(aux.equals("e"))
																	{
																	expressao_correta();
																	}
																	else
																		{
																		erro_sintatico();
																		}
																}
														}
												}
										}
								}
						}			
				break;
	    	case 3:
				System.out.print(" -> (e3)");
				aux = String.valueOf(a.charAt(p));
				if(aux.equals("n"))
					{
					p++;
					estado(1,p,a);
					}
					else
						{
						if(aux.equals("l"))
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
			case 4:
				System.out.print(" -> (e4)");
				aux = String.valueOf(a.charAt(p));
				if(aux.equals("a"))
					{
					p++;
					estado(0,p,a);
					}
					else
						{
						if(aux.equals("n"))
							{
							p++;
							estado(1,p,a);
							}
							else
								{
								if(aux.equals("l"))
									{
									p++;
									estado(2,p,a);
									}
									else
										{
										erro_sintatico();
										}
								}
						}
				break;
	    	case 5:
				System.out.print(" -> ((e5))");
				aux = String.valueOf(a.charAt(p));
				if(aux.equals("o"))
					{
					p++;
					estado(4,p,a);
					}
					else
						{
						if(aux.equals("s"))
							{
							p++;
							estado(4,p,a);
							}
							else
								{
								if(aux.equals("a"))
									{
									p++;
									estado(0,p,a);
									}
									else
										{
										if(aux.equals("f"))
											{
											p++;
											estado(5,p,a);
											}
											else
												{
												if(aux.equals("e"))
													{
													expressao_correta();
													}
													else
														{
														erro_sintatico();
														}
												}
										}
								}
						}
				break;
	    	default:
				System.out.println("");
				System.out.println("Erro de Programação");
			}
		}

	public static void main(String[] args)
		{
		exp = args[0];
		String esp = "", token = "", tk1 = "", tk2 = "", ass = "";
		int cont_abre = 0, cont_fecha = 0;
		if(exp.length() > 0)
			{
			System.out.println("");
			System.out.println("==================================================");
			System.out.println("");
			System.out.println("Expressão...: " + exp);
			System.out.println("");
			System.out.println("Tamanho.....: " + exp.length() + " caracteres");
			System.out.println("");

// Controle do operador "**" (potenciação)
			
			for(i = 0; i < exp.length(); i++)
				{
				if(exp.length() != i + 1)
					{
					tk1 = String.valueOf(exp.charAt(i));
					tk2 = String.valueOf(exp.charAt(i + 1));
					if((tk1.equals("*")) && (tk2.equals("*")))
						{
						exp = exp.substring(0,i) + "!" + exp.substring(i + 2,exp.length());
						}
					}
				}


// Controle de abertura e fechamento de sub-expressões
			
			for(i = 0; i < exp.length(); i++)
				{
				tk1 = String.valueOf(exp.charAt(i));
				if(tk1.equals("("))
					{
					cont_abre++;
					}
				if(tk1.equals(")"))
					{
					cont_fecha++;
					}
				}
			if(cont_abre != cont_fecha)
				{
				invalida = 2;
				}

// Análise dos tokens e composição da assinatura			
			
			for(i = 0; i < exp.length(); i++)
				{
				esp = " ";
				token = String.valueOf(exp.charAt(i));
				if(token.equals("!"))
					{
					token = "**";
					esp = "";
					}
				if(i < 9)
					{
					System.out.print("Token(0" + (i + 1) + "): " + token + esp);
					}
					else
						{
						System.out.print("Token(" + (i + 1) + "): " + token + esp);
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
					if(token.equals(sin[j]))
						{
						System.out.println(" -> SINAL");
						ass = ass + "s";
						conhecido = 1;
						}
					}
				for(j = 0; j < 3; j++)
					{
					if(token.equals(ope[j]))
						{
						System.out.println(" -> OPERADOR");
						ass = ass + "o";
						conhecido = 1;
						}
					}
				if(token.equals(abr[0]))
					{
					System.out.println(" -> ABERTURA DE SUB-EXPRESSÃO");
					ass = ass + "a";
					conhecido = 1;
					}
				if(token.equals(fec[0]))
					{
					System.out.println(" -> FECHAMENTO DE SUB-EXPRESSÃO");
					ass = ass + "f";
					conhecido = 1;
					}
				if(conhecido == 0)
					{
					System.out.println(" -> CARACTERE INVÁLIDO");
					ass = ass + "x";
					invalida = 1;
					}
				}
			ass = ass + "e";

// Inicio da análise da expressão a partir da assinatura e entrada no autômato			

			System.out.println("");
			System.out.println("--------------------------------------------------");
			if(invalida == 1)
				{
				erro_semantico();
				}
				else
					{
					if(invalida == 2)
						{
						erro_sintatico();
						}
						else
							{
							System.out.println("");
							System.out.println("Caminho Percorrido na Máquina de Estados:");
							System.out.println("");
							estado(0,0,ass);
							}
					}
			System.out.println("");
			System.out.println("==================================================");
			}
			else
				{
				System.out.println("Expressão Inexistente");
				}
		System.exit(0);
		}
	}