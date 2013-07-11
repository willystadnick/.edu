import java.rmi.*;
import java.rmi.server.*;
import java.net.*;
import javax.swing.JOptionPane;
import java.util.Date;

public class BancoImpl extends UnicastRemoteObject implements Banco{
	float saldo = 0;
	String movimento=null;
	Date d = new Date();

	public BancoImpl() throws RemoteException{}

	public String msg(){
		String m = "Operação realizada com sucesso...";
		return m;}
	
	public void efetuaDeposito(float valor){
		saldo = saldo + valor;
		movimento = movimento + "\n" + (d.getHours() +":"+d.getMinutes()) + "..... Deposito: R$ "+valor+"..... Saldo: R$ "+saldo;
		}

	public void efetuaSaque(float valor){
		saldo = saldo - valor;
		movimento = movimento + "\n" + (d.getHours() +":"+d.getMinutes()) + "..... Saque: R$ "+valor+"..... Saldo: R$ "+saldo;
		}

	public String verificaSaldo(){
		String s = String.valueOf(saldo);
		return s;}

	public String imprimeExtrato(){
		return movimento;}
		
	public static void main(String args[]) throws Exception{
		String NomedoObjeto = null;
		if (args.length == 0)
			NomedoObjeto = "//localhost/TempServer";
		else
			NomedoObjeto = "//" + args[0] + "/TempServer";
		System.err.println("Inicializando o Sistema Bancário...\nFavor aguardar...\n");
		BancoImpl RefdoObjeto = new BancoImpl();
		Naming.rebind(NomedoObjeto, RefdoObjeto);
		System.err.println("Sistema Bancário pronto...\n");}}