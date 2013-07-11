import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

 
public class FrNovoAluno extends JInternalFrame {
  private JPanel jpPrincipal = new JPanel();
  private JLabel jlNome = new JLabel("Nome:");
  private JTextField jtfNome = new JTextField(30);
  private JLabel jlMatricula = new JLabel("Matrícula:");
  private JTextField jtfMatricula = new JTextField(10);
  private JPanel jpBotoes = new JPanel();
  private JButton jbOK = new JButton("OK");
  private JButton jbCancelar = new JButton("Cancelar");
  private Aplicacao aplicacao;

  /**
   * Construtor.
   */
  public FrNovoAluno(Aplicacao ap) {
    super("Novo Aluno", true, true, true, true);
    try  {
      aplicacao = ap;
      this.setSize(new Dimension(400, 300));
      jpPrincipal.setLayout(null);
      jpPrincipal.add(jlNome);
      jlNome.setBounds(50, 50, 80, 20);
      jpPrincipal.add(jtfNome);
      jtfNome.setBounds(110, 50, 200, 20);
      jpPrincipal.add(jlMatricula);
      jlMatricula.setBounds(50, 80, 80, 20);
      jpPrincipal.add(jtfMatricula);
      jtfMatricula.setBounds(110, 80, 80, 20);
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
    aplicacao.cadastreAluno(jtfNome.getText(), jtfMatricula.getText());
    this.dispose();
  }

  public void jbCancelar_actionPerformed(ActionEvent e) {
    this.dispose();
  }
}
