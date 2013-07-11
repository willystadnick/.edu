import java.rmi.*;

public interface RmiServidor extends Remote{
	public void soma(float n1, float n2)
		throws RemoteException;
}