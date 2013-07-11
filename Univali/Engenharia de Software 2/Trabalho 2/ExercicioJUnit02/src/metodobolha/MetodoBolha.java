package metodobolha;

import java.util.*;

public class MetodoBolha {

    public MetodoBolha() {
    }

    public Vector ordena(Vector vetor) {
        boolean trocou = false;
        for (int i = 1; i < vetor.size(); i++) {
            for (int j = i + 1; j < vetor.size(); j++) {
                trocou = false;
                if ((Integer) vetor.get(i) > (Integer) vetor.get(j)) {
                    Integer n = (Integer) vetor.get(i);
                    vetor.set(i, vetor.get(j));
                    vetor.set(j, n);
                    trocou = true;
                }
            }
            if (trocou) {
                i = 1;
            }
        }

        /*
        boolean trocou = true;
        while (trocou) {
        trocou = false;
        for (int j = 0; j < v.length - 1; j++) {
        if (v[j] > v[j + 1]) {
        int aux = v[j];
        v[j] = v[j + 1];
        v[j + 1] = aux;
        trocou = true;
        }
        }
        }
         */

        return vetor;
    }
}