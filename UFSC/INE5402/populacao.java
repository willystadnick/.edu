class Populacao {

    public static void main(String[] args) {
    	System.out.println(conta(500, 2000, 2.3d, 1.5d) + " anos");
    }
    
    public static int conta(double pop1, double pop2, double tx1, double tx2)
    {
    	int ano = 0;
    	//if (pop1 > pop2)  
    	while (pop1 <= pop2) {
    		pop1 *= 1+tx1/100;
    		pop2 *= 1+tx2/100;
    		ano++;    		
    	}
    	return ano;
    }
    
    
}