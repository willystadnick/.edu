import javax.swing.JOptionPane;
import java.lang.*;  

public class OChefe extends Empregados {
	public void criaChefe(){
		Empregados chefe = new Empregados();
		chefe = chefe.pegaDados(chefe);
		chefe.alteraCargo("Chefe");
		chefe.alteraSalario(Float.parseFloat(JOptionPane.showInputDialog("Salario ")));
	  	JOptionPane.showMessageDialog(null,"Chefe\n\n"+chefe.mostraTudo()+" semanal\n\n","Confirmar",0);}}