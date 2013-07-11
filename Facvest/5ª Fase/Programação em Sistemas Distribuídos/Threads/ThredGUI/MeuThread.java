import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.net.*;
import java.io.*;



public class MeuThread extends JFrame {

  //Contrução do Frame
  BorderLayout borderLayout1 = new BorderLayout();
  Panel panel1 = new Panel();
  Panel panel2 = new Panel();
  JProgressBar jProgressBar1 = new JProgressBar();
  JProgressBar jProgressBar2 = new JProgressBar();
  JButton jButton2 = new JButton();
  JButton jButton3 = new JButton();
  JButton jButton4 = new JButton();

  public MeuThread() {
    enableEvents(AWTEvent.WINDOW_EVENT_MASK);
    try  {
      jbInit();
    }
    catch (Exception e) {
      e.printStackTrace();
    }
  }
//Inicialização dos Componentes


public static void main(String agrs[])
{
	MeuThread Janela = new MeuThread();
	Janela.show();

	
}


  private void jbInit() throws Exception  {
    this.getContentPane().setLayout(borderLayout1);
    this.setSize(new Dimension(390, 120));
    jProgressBar1.setDoubleBuffered(true);
    jProgressBar2.setForeground(Color.yellow);
    jProgressBar2.setDoubleBuffered(true);
    jButton2.setText("jButton2");
    jButton2.setLabel("Iniciar");
    jButton3.setText("jButton3");
    jButton3.setLabel("  Sair  ");
    jButton4.setText("Limpar");
    jButton4.setLabel("Limpar os Indicadores");
    jButton4.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(ActionEvent e) {
        jButton4_actionPerformed(e);
      }
    });
    jButton3.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(ActionEvent e) {
        jButton3_actionPerformed(e);
      }
    });
    jButton2.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(ActionEvent e) {
        jButton2_actionPerformed(e);
      }
    });
    this.setTitle("Utilidade de Threads");
    this.getContentPane().add(panel1, BorderLayout.NORTH);
    panel1.add(jProgressBar1, null);
    panel1.add(jButton2, null);
    this.getContentPane().add(panel2, BorderLayout.SOUTH);
    panel2.add(jProgressBar2, null);
    panel2.add(jButton3, null);
    this.getContentPane().add(jButton4, BorderLayout.CENTER);
  }
  
  protected void processWindowEvent(WindowEvent e) {
    super.processWindowEvent(e);
    if (e.getID() == WindowEvent.WINDOW_CLOSING) {
      System.exit(0);
    }
  }

  void jButton2_actionPerformed(ActionEvent e)
  {
   Aumenta Tred1, Tred2;
   Tred1 = new Aumenta(jProgressBar1);
   Tred2 = new Aumenta(jProgressBar2);
   Tred1.start();
   Tred2.start();

  }

  void jButton3_actionPerformed(ActionEvent e)
  {
      System.exit(0);
  }

  void jButton4_actionPerformed(ActionEvent e)
  {
    jProgressBar1.setValue(0);
    jProgressBar2.setValue(0);

  }

}

class Aumenta extends Thread
  {
    Atualizador at;
    JProgressBar prog;
  public Aumenta(JProgressBar p)
  {
    prog = p;
	  at = new Atualizador(p);
  }

  public void run()
  {
   while (prog.getValue()< prog.getMaximum())
   {
    try
    {
      sleep(50);
      SwingUtilities.invokeAndWait(at);
    }
    catch(Exception y)
    {
    }
   }//end do While

  }// end da class Escutar
 }

class Atualizador extends Thread
{
    JProgressBar prog;
    public Atualizador(JProgressBar p)
    {
	    prog = p;
    }

    public void run()
    {
     prog.setValue(prog.getValue()+1);
    }
}

