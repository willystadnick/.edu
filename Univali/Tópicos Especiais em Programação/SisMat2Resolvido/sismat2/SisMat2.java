import java.awt.event.*;

public class SisMat2 {
  public SisMat2() {
    Aplicacao ap = new Aplicacao();
    FrPrincipal frPrincipal = new FrPrincipal(ap);
	frPrincipal.setVisible(true);
    frPrincipal.addWindowListener(
    	new WindowAdapter() {
			public void windowClosing(WindowEvent e) {
				System.exit(0); 
			}
    	}
    );
  }

	public static void main(String args[]) {
		new SisMat2();
	}
}