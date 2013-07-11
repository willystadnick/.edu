package metodobolha;

import junit.framework.*;

import java.util.*;

public class MetodoBolhaTest extends TestCase {
  private MetodoBolha bolha;
  private Vector entrada;
  private Vector saida;
  
  public MetodoBolhaTest(String testName) {
    super(testName);
  }
  
  protected void setUp() throws Exception {
    bolha = new MetodoBolha();
    entrada = new Vector();
    saida = new Vector();
  }
  
  protected void tearDown() throws Exception {
  }
  
  public static Test suite() {
    TestSuite suite = new TestSuite(MetodoBolhaTest.class);
    return suite;
  }
  
  public void test1_OrdenaVetor() {
    // dados de teste: aqueles que serao testados como entrada
    entrada.add(new Integer(1));
    entrada.add(new Integer(2));
    entrada.add(new Integer(3));
    // saida esperada: aqueles dados que serao testados para comparacao
    saida.add(new Integer(1));
    saida.add(new Integer(2));
    saida.add(new Integer(3));
    // compara a sa�da calculada com a saida esperada
    assertEquals(saida, bolha.ordena(entrada));
  }
  
  public void test2_OrdenaVetor() {
    // dados de teste: aqueles que serao testados como entrada
    entrada.add(new Integer(2));
    entrada.add(new Integer(3));
    entrada.add(new Integer(1));
    // saida esperada: aqueles dados que serao testados para comparacao
    saida.add(new Integer(1));
    saida.add(new Integer(2));
    saida.add(new Integer(3));
    // compara a sa�da calculada com a saida esperada
    assertEquals(saida, bolha.ordena(entrada));
  }
  
  public void test3_OrdenaVetor() {
    // dados de teste: aqueles que serao testados como entrada
    entrada.add(new Integer(-1));
    entrada.add(new Integer(-2));
    entrada.add(new Integer(-3));
    // saida esperada: aqueles dados que serao testados para comparacao
    saida.add(new Integer(-3));
    saida.add(new Integer(-2));
    saida.add(new Integer(-1));
    // compara a sa�da calculada com a saida esperada
    assertEquals(saida, bolha.ordena(entrada));
  }
  
  public void test4_OrdenaVetor() {
    // dados de teste: aqueles que serao testados como entrada
    entrada.add(new Integer(-5));
    entrada.add(new Integer(-3));
    entrada.add(new Integer(-1));
    // saida esperada: aqueles dados que serao testados para comparacao
    saida.add(new Integer(-5));
    saida.add(new Integer(-3));
    saida.add(new Integer(-1));
    // compara a sa�da calculada com a saida esperada
    assertEquals(saida, bolha.ordena(entrada));
  }
  
  public void test5_OrdenaVetor() {
    // dados de teste: aqueles que serao testados como entrada
    entrada.add(new Integer(0));
    entrada.add(new Integer(1));
    entrada.add(new Integer(2));
    // saida esperada: aqueles dados que serao testados para comparacao
    saida.add(new Integer(0));
    saida.add(new Integer(1));
    saida.add(new Integer(2));
    // compara a sa�da calculada com a saida esperada
    assertEquals(saida, bolha.ordena(entrada));
  }
  
  public void test6_OrdenaVetor() {
    // dados de teste: aqueles que serao testados como entrada
    entrada.add(new Integer(5));
    entrada.add(new Integer(3));
    entrada.add(new Integer(0));
    // saida esperada: aqueles dados que serao testados para comparacao
    saida.add(new Integer(0));
    saida.add(new Integer(3));
    saida.add(new Integer(5));
    // compara a sa�da calculada com a saida esperada
    assertEquals(saida, bolha.ordena(entrada));
  }
  
}
