import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

/**
 * Frame para cadastrar disciplinas.
 * <P>
 */
public class FrNovaDisciplina extends JInternalFrame {
  private JPanel jpPrincipal = new JPanel();
  private JLabel jlNome = new JLabel("Nome:");
  private JTextField jtfNome = new JTextField(30);
  private JLabel jlCodigo = new JLabel("Código:");
  private JTextField jtfCodigo = new JTextField(10);
  private JPanel jpBotoes = new JPanel();
  private JButton jbOK = new JButton("OK");
  private JButton jbCancelar = new JButton("Cancelar");
  private Aplicacao aplicacao;

  /**
   * Construtor.
   */
  public FrNovaDisciplina(Aplicacao ap) {
    super("Nova Disciplina", true, true, true, true);
    try  {
      aplicacao = ap;
      this.setSize(new Dimension(400, 300));
      jpPrincipal.setLayout(null);
      jpPrincipal.add(jlNome);
      jlNome.setBounds(50, 50, 80, 20);
      jpPrincipal.add(jtfNome);
      jtfNome.setBounds(110, 50, 200, 20);
      jpPrincipal.add(jlCodigo);
      jlCodigo.setBounds(50, 80, 80, 20);
      jpPrincipal.add(jtfCodigo);
      jtfCodigo.setBounds(110, 80, 80, 20);
      this.getContentPane().add(jpPrincipal, BorderLayout.CENTER);
      jpBotoes.add(jbOK);
      jpBotoes.add(jbCancelar);
      this.getContentPane().add(jpBotoes, BorderLayout.SOUTH);
      jbOK.addActionListener(new ActionListener() {
          public void actionPerformed(ActionEvent e) {
              jbOK_actionPerformed(e);
          }
      });
      jbCancelar.addActionListener(new ActionListener() {
          public void actionPerformed(ActionEvent e) {
              jbCancelar_actionPerformed(e);
          }
      });
    }
    catch (Exception e) {
      e.printStackTrace();
    }
  }

  public void jbOK_actionPerformed(ActionEvent e) {
    try {
		aplicacao.cadastreDisciplina(new Integer(jtfCodigo.getText()), jtfNome.getText());
    }
    catch(NumberFormatException excp) {
    	System.out.println("Exception: " + excp.getMessage());
    }
    finally {
		this.dispose();	
    }
  }

  public void jbCancelar_actionPerformed(ActionEvent e) {
    this.dispose();
  }
}