public class Cliente{
	//int conta;
	//String titular;
	//int senha;
	float valor, saldo;
	String extrato;
	//int movNro[] = new int[10];
	//String movTipo[] = {"Saque", "Depósito"};
	//int movSaldoAnt[] = new int[10];
	//int movValor[] = new int[10];

	public Cliente(){
		//conta = 0000;
		//titular = "null";
		//senha = 0;
		String extrato=null;
		double saldo = 0;}
	
	//public void mostraTitular(){
	//	System.out.println("o Titular da conta " + conta + "é " + titular);}

	public void poeConta(float valor){
		saldo = saldo + valor;
		//System.out.println(titular);
		}

	public void extratoAtual(String mov){
		extrato = extrato+mov+"\n";
		//System.out.println(titular);
		}

	//public void mostraTitular1(){
	//	System.out.println(titular);}

	public static void main(String args[]){}
	}