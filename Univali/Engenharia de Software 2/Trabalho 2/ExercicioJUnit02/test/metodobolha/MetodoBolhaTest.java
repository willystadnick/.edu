package metodobolha;

import java.util.Vector;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

public class MetodoBolhaTest {

    private MetodoBolha bolha;
    private Vector entrada;
    private Vector saida;

    public MetodoBolhaTest() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception {
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }

    @Before
    public void setUp() {
        bolha = new MetodoBolha();
        entrada = new Vector();
        saida = new Vector();
    }

    @After
    public void tearDown() {
    }

    @Test
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

    @Test
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

    @Test
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

    @Test
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

    @Test
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

    @Test
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