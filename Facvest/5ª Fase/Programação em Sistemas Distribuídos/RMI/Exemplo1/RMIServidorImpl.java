import java.rmi.*;
import java.rmi.server.*;
import java.net.*;
public class RMIServidorImpl extends UnicastRemoteObject implements RMIServidor{
	public RMIServidorImpl() throws RemoteException{}
		public void mensagem(String str){
			System.out.println(str);}
		public static void main(String args[])
			throws Exception{
			String NomedoObjeto = null;
			if (args.length == 0)
				NomedoObjeto = "//localhost/TempServer";
			else
				NomedoObjeto = "//" + args[0] + "/TempServer";
			System.err.println("Inicializando o Servidor...\nFavor esperar...");
			RMIServidorImpl RefdoObjeto = new RMIServidorImpl();
			Naming.rebind(NomedoObjeto, RefdoObjeto);
			System.err.println("O Servidor está pronto para receber requisição!");}}