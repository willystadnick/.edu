import javax.swing.JOptionPane;
public class trab04{
	double distancia, tanque, litros, KM, mediaT;

	public void InsereDistancia(double dist){
		distancia = dist;}	    

	public void InsereTanque(double tank){
		tanque = tank;}	    

	public void KMrod(double kms){
		KM = KM + kms;}	    
	
	public void LtsGastos(double lts){
		litros = litros + lts;}	    
		
	public double CalculoT(){
		mediaT = KM / litros;
		return mediaT;}

	public static void main(String args[]){
		Consumo obj1 = new Consumo();
		double aux1 = Double.parseDouble(JOptionPane.showInputDialog("Digite a distacia total a ser percorrida: ")); 
		obj1.InsereDistancia(aux1);
		double aux2 = Double.parseDouble(JOptionPane.showInputDialog("Digite a capacidade total do tanque: ")); 
		obj1.InsereTanque(aux2);
		double aux3 = 0;
		double aux4 = 0;
		double aux5 = 0;
		while(aux3 <= obj1.distancia){
			double temp = aux5;
			aux5 = Double.parseDouble(JOptionPane.showInputDialog("Distancia Percorrida(Km) p/ Tanque: ")); 
			obj1.KMrod(aux5); 
			obj1.LtsGastos(aux2);
			obj1.CalculoT();
			aux3 = obj1.KM;
			double parcial = aux5 / aux2;
			JOptionPane.showMessageDialog(null, "Media Parcial: " + parcial + " Km/Lts");}
		JOptionPane.showMessageDialog(null, "Media Final: " + obj1.mediaT + " Km/Lts");
		JOptionPane.showMessageDialog(null, "Total(Km): " + obj1.KM + " Km");
		JOptionPane.showMessageDialog(null, "Total Combustivel: " + obj1.litros + " Lts");
		System.exit(0);}}