import java.io.*;
public class trab06{
	String nome = " ";
	int idade = 0;
	String tipo = " ";

	public void AlteraNome(String x){
		nome = x;}

	public void AlteraIdade(int y){
		idade = y;}

	public void MostraNome(){
		System.out.print("=> " + nome);}

	static String LeNome(){
		String i;
		String name;
		DataInputStream in = new DataInputStream(System.in);
		try{
			name = new String(in.readLine());
			i = name;
			return i;}
		catch(Exception e){
			return "ERROR 171";}}

	static int LeIdade(){
		int i;
		Integer num;
		DataInputStream in = new DataInputStream(System.in);
		try{
			num = new Integer(in.readLine());
			i = num.intValue();
			return i;}
		catch(Exception e){
			return -1;}}

	public void Tipo(){
		if(idade <= 18){
			tipo = "Crianca - Adolescente";}
		else{
			if(idade < 25)
			tipo = "Jovem";}
		else{
			tipo = "Adulto - Idoso";}}

	public static void main(String args[]){
		trab06 obj = new trab06();
		System.out.print("Digite o Nome: ");
		obj.nome = LeNome();
		System.out.print("Digite Idade: ");
		obj.idade = LeIdade();
		obj.Tipo();
		System.out.println(obj.nome + " e " + obj.tipo);}}