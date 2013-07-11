import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

/**
 * Frame principal do sistema de matr&iacute;culas.
 * <P>
 */
public class FrPrincipal extends JFrame {
  private JDesktopPane desktop = new JDesktopPane();
  private JMenuBar barraMenu = new JMenuBar();
  private JMenu jmAluno = new JMenu("Aluno");
  private JMenuItem jmiAlunoNovo = new JMenuItem("Novo");
  private JMenuItem jmiAlunoListar = new JMenuItem("Listar");
  private JMenuItem jmiAlunoAlterar = new JMenuItem("Alterar");
  private JMenuItem jmiAlunoExcluir = new JMenuItem("Excluir");
  private JMenu jmDisciplina = new JMenu("Disciplina");
  private JMenuItem jmiDisciplinaNova = new JMenuItem("Nova");
  private JMenuItem jmiDisciplinaListar = new JMenuItem("Listar");
  private JMenuItem jmiDisciplinaAlterar = new JMenuItem("Alterar");
  private JMenuItem jmiDisciplinaExcluir = new JMenuItem("Excluir");
  private JMenu jmMatricula = new JMenu("Matricula");
  private JMenuItem jmiMatriculaNova = new JMenuItem("Nova");
  private JMenuItem jmiMatriculaListar = new JMenuItem("Listar");
  private JMenuItem jmiMatriculaAlterar = new JMenuItem("Alterar");
  private JMenuItem jmiMatriculaExcluir = new JMenuItem("Excluir");
  private Aplicacao aplicacao;

  /**
   * Construtor.
   */
  public FrPrincipal(Aplicacao ap) {
    super("Sistema de Matrículas 2.0");
    try  {
      aplicacao = ap;
      this.setSize(new Dimension(600, 500));
      //this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
      jmAluno.add(jmiAlunoNovo);
      jmAluno.add(jmiAlunoListar);
      jmAluno.add(jmiAlunoAlterar);
      jmAluno.add(jmiAlunoExcluir);
      barraMenu.add(jmAluno);
      jmDisciplina.add(jmiDisciplinaNova);
      jmDisciplina.add(jmiDisciplinaListar);
      jmDisciplina.add(jmiDisciplinaAlterar);
      jmDisciplina.add(jmiDisciplinaExcluir);
      barraMenu.add(jmDisciplina);
      jmMatricula.add(jmiMatriculaNova);
      jmMatricula.add(jmiMatriculaListar);
      jmMatricula.add(jmiMatriculaAlterar);
      jmMatricula.add(jmiMatriculaExcluir);
      barraMenu.add(jmMatricula);
      this.setJMenuBar(barraMenu);
      this.getContentPane().add(desktop, BorderLayout.CENTER);      
      jmiAlunoNovo.addActionListener(new ActionListener() {
          public void actionPerformed(ActionEvent e) {
              jmiAlunoNovo_actionPerformed(e);
          }
        });
      jmiAlunoListar.addActionListener(new ActionListener() {
          public void actionPerformed(ActionEvent e) {
              jmiAlunoListar_actionPerformed(e);
          }
        });
      jmiDisciplinaNova.addActionListener(new ActionListener() {
          public void actionPerformed(ActionEvent e) {
              jmiDisciplinaNova_actionPerformed(e);
          }
        });
      jmiMatriculaNova.addActionListener(new ActionListener() {
          public void actionPerformed(ActionEvent e) {
              jmiMatriculaNova_actionPerformed(e);
          }
        });
      jmiMatriculaListar.addActionListener(new ActionListener() {
          public void actionPerformed(ActionEvent e) {
              jmiMatriculaListar_actionPerformed(e);
          }
        });
    }
    catch (Exception excecao) {
      excecao.printStackTrace();
    }
  }

  public void jmiAlunoNovo_actionPerformed(ActionEvent e) {
    FrNovoAluno frNovoAluno = new FrNovoAluno(aplicacao);
    frNovoAluno.setVisible(true);
    desktop.add(frNovoAluno);
    try {
      frNovoAluno.setSelected(true);
    } catch(Exception excecao) {
      excecao.printStackTrace();
    }
  }

  public void jmiAlunoListar_actionPerformed(ActionEvent e) {
/*    FrListarAluno frListarAluno = new FrListarAluno(aplicacao);
    frListarAluno.setVisible(true);
    desktop.add(frListarAluno);
    try {
      frListarAluno.setSelected(true);
    } catch(Exception excecao) {
      excecao.printStackTrace();
    }*/
  }

  public void jmiDisciplinaNova_actionPerformed(ActionEvent e) {
    FrNovaDisciplina frNovaDisciplina = new FrNovaDisciplina(aplicacao);
    frNovaDisciplina.setVisible(true);
    desktop.add(frNovaDisciplina);
    try {
      frNovaDisciplina.setSelected(true);
    } catch(Exception excecao) {
      excecao.printStackTrace();
    }
  }

  public void jmiMatriculaListar_actionPerformed(ActionEvent e) {
    FrListarMatricula frListarMatricula = new FrListarMatricula(aplicacao);
    frListarMatricula.setVisible(true);
    desktop.add(frListarMatricula);
    try {
      frListarMatricula.setSelected(true);
    } catch(Exception excecao) {
      excecao.printStackTrace();
    }
  }

  public void jmiMatriculaNova_actionPerformed(ActionEvent e) {
    FrNovaMatricula frNovaMatricula = new FrNovaMatricula(aplicacao);
    frNovaMatricula.setVisible(true);
    desktop.add(frNovaMatricula);
    try {
      frNovaMatricula.setSelected(true);
    } catch(Exception excecao) {
      excecao.printStackTrace();
    }
  }
}
