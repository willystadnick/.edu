public class reconvoga
	{
	public static void main(String[] args)
		{
		String exp = args[0];
		String vogal[] = {"a", "e", "i", "o", "u", "A", "E", "I", "O", "U"};
		String token = "";
		int i, j, cons, v = 0, c = 0;
		if(exp.length() > 0)
			{
			System.out.println("");
			System.out.println("==================================================");
			System.out.println("");
			System.out.println("Express�o...: " + exp);
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
				cons = 1;
				for(j = 0; j < 10; j++)
					{
					if(token.equals(vogal[j]))
						{
						System.out.println(" -> � vogal");
						cons = 0;
						v++;
						}
					}
				if(cons == 1)
					{
					System.out.println(" -> N�o � vogal");
					c++;
					}
				}
			System.out.println("");
			System.out.println("N� de vogais.......: " + v);
			System.out.println("");
			System.out.println("N� de n�o-vogais...: " + c);
			System.out.println("");
			if(c == 0)
				{
				System.out.println("Express�o composta somente por vogais");
				}
				else
					{
					System.out.println("Express�o composta por caracteres variados");
					}
			System.out.println("");
			System.out.println("==================================================");}
		else{System.out.println("Express�o Inexistente");}
		System.exit(0);}}