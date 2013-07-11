import java.rmi.*;
public interface RMIServidor extends Remote{
	public void mensagem(String str)
		throws RemoteException;}