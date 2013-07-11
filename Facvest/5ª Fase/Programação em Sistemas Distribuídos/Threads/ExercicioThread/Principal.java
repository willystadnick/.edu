/*Crie um programa que possua duas threads. 
 *Uma deve incrementar uma vari�vel e outra decrementar. 
 *Entretanto, a thread que faz o decremento deve verificar 
 *se o valor da vari�vel � positivo; se n�o for, a vari�vel 
 *n�o deve ser decrementada. Mostre o valor da vari�vel na tela*/.


public class Principal {
    public static void main (String[] args) {
      new IncThread("Incrementa").start();
      new DecThread("Decrementa").start();
    }
}
