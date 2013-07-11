import java.rmi.*;

public interface Banco extends Remote{
	public String msg()
		throws RemoteException;

	public void efetuaDeposito(float valor)
		throws RemoteException;

	public void efetuaSaque(float valor)
		throws RemoteException;

	public String verificaSaldo()
		throws RemoteException;

	public String imprimeExtrato()
		throws RemoteException;}