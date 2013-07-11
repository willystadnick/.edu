import java.rmi.*;
public class RmiCliente {
	public static void main (String args[])
	{
		String nomeObjeto = null;
		if (args.length ==0)
			nomeObjeto = "//localhost/tempserver";
		else
			nomeObjeto ="//"+ args[0] + "/tempserver";
              try
              {
                     RmiServidor refObjeto = (RmiServidor) Naming.lookup (nomeObjeto);              
                     refObjeto.soma(5,3);
                }
                catch(Exception e)
                {
                      System.out.println("Servidor Falhou");
                }
	}
}
