import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.util.*;

/**
 * Frame para mostrar um relat&oacute;rio
 * geral de matr&iacute;culas.
 * <P>
 */
public class FrListarMatricula extends JInternalFrame {
  private JPanel jpPrincipal = new JPanel();
  private JLabel jlRelatorio = new JLabel("Relatório:");
  private JTextArea jtaMatriculas = new JTextArea(8, 25);
  private JScrollPane scroll;
  private JPanel jpBotoes = new JPanel();
  private JButton jbOK = new JButton("OK");
  private Aplicacao aplicacao;

  /**
   * Construtor.
   */
  public FrListarMatricula(Aplicacao ap) {
    super("Relatório Geral", true, true, true, true);
    try  {
      aplicacao = ap;
      this.setSize(new Dimension(400, 300));
      jpPrincipal.setLayout(null);
      jpPrincipal.add(jlRelatorio);
      jlRelatorio.setBounds(50, 25, 80, 35);
      scroll = new JScrollPane(jtaMatriculas);
      scroll.setBounds(50, 50, 300, 180);
      jpPrincipal.add(scroll);
      this.getContentPane().add(jpPrincipal, BorderLayout.CENTER);
      jpBotoes.add(jbOK);
      this.getContentPane().add(jpBotoes, BorderLayout.SOUTH);
      jbOK.addActionListener(new ActionListener() {
          public void actionPerformed(ActionEvent e) {
              jbOK_actionPerformed(e);
          }
      });
      // mostra o relatório
      String s = "";
			Enumeration elementos = aplicacao.retorneDisciplinas();
			while(elementos.hasMoreElements()) {
			    Disciplina discip = (Disciplina)elementos.nextElement();
			    s = s + discip.retorneNome() + "\n";
          System.out.println(discip.retorneNome());

			    ArrayList alunos = aplicacao.retorneAlunosPorDisciplina(discip);
			    int total = alunos.size();
			    for(int j=0; j < total; j++)
			    {
			      s = s + (j+1) + " - " + ((Aluno)alunos.get(j)).retorneNome() + "\n";
            System.out.println((j+1) + " - " + ((Aluno)alunos.get(j)).retorneNome());
			    }
			}
      jtaMatriculas.setText(s);
    }
    catch (Exception e) {
      e.printStackTrace();
    }
  }

  public void jbOK_actionPerformed(ActionEvent e) {
    this.dispose();
  }
}

