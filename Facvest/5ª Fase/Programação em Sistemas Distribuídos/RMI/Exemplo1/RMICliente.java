import java.rmi.*;
public class RMICliente{
	public static void main(String args[]){
		String NomedoObjeto = null;
		if(args.length == 0)
			NomedoObjeto = "//localhost/TempServer";
		else
			NomedoObjeto = "//" + args[0] + "/TempServer";
		try{
			RMIServidor RefdoObjeto = (RMIServidor)Naming.lookup(NomedoObjeto);
			String msg = "Teste funcionou. Servidor e Cliente est�o se comunicando!";
			RefdoObjeto.mensagem(msg);}
		catch(java.rmi.ConnectException ce){
			System.err.println("Conex�o ao Servidor Falhou!");}
		catch(Exception e){
			e.printStackTrace();
			System.exit(1);}}}