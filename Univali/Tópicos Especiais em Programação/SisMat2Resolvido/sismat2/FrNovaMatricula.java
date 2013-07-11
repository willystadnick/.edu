import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

/**
 * Frame para fazer matr&iacute;culas.
 * <P>
 */
public class FrNovaMatricula extends JInternalFrame {
  private JPanel jpPrincipal = new JPanel();
  private JLabel jlMatAluno = new JLabel("Matrícula do Aluno:");
  private JTextField jtfMatAluno = new JTextField(30);
  private JLabel jlCodDisciplina = new JLabel("Código da Disciplina:");
  private JTextField jtfCodDisciplina = new JTextField(10);
  private JPanel jpBotoes = new JPanel();
  private JButton jbOK = new JButton("OK");
  private JButton jbCancelar = new JButton("Cancelar");
  private Aplicacao aplicacao;

  /**
   * Construtor.
   */
  public FrNovaMatricula(Aplicacao ap) {
    super("Nova Matrícula", true, true, true, true);
    try  {
      aplicacao = ap;
      this.setSize(new Dimension(400, 300));
      jpPrincipal.setLayout(null);
      jpPrincipal.add(jlMatAluno);
      jlMatAluno.setBounds(50, 50, 140, 20);
      jpPrincipal.add(jtfMatAluno);
      jtfMatAluno.setBounds(200, 50, 80, 20);
      jpPrincipal.add(jlCodDisciplina);
      jlCodDisciplina.setBounds(50, 80, 140, 20);
      jpPrincipal.add(jtfCodDisciplina);
      jtfCodDisciplina.setBounds(200, 80, 80, 20);
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
    aplicacao.matricule(jtfMatAluno.getText(), new Integer(jtfCodDisciplina.getText()));
    this.dispose();
  }

  public void jbCancelar_actionPerformed(ActionEvent e) {
    this.dispose();
  }
}

