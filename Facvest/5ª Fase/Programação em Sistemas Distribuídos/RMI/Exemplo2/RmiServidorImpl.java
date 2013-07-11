import java.rmi.Naming;
import java.rmi.*;
import java.net.*;
import java.rmi.server.*;

public class RmiServidorImpl extends UnicastRemoteObject implements RmiServidor
{
	public RmiServidorImpl () throws RemoteException{}
	public void soma (float n1, float n2)
	{
		System.out.println(n1+n2);
	}
	
	public static void main (String args []) throws Exception
	{
		String nomeObjeto = null;
		if (args.length ==0)
			nomeObjeto = "//localhost/tempserver";
		else
			nomeObjeto = "//" + args[0] + "/tempserver";
		System.out.println("Iniciando Servidor");

                try {
                    RmiServidorImpl refObjeto = new RmiServidorImpl();
                    Naming.rebind(nomeObjeto,refObjeto);
                    System.out.println("Servidor Pronto");
                }
                catch (Exception e) {}
	}
}

