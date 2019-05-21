# RICORSIONE
Con il termine _ricorsione_ si indica la capacità di un oggetto di invocare se stesso per ottenere il medesimo risultato.

Chi ha familiartià con l'ambito matematico, si ricorderà sicuramente la funzione fattoriale:

```
    n! = n*(n-1)!
```

L'esempio di adatta perfettamente al campo informatico, la ricorsione, infatti, viene usata in particolari casi, al posto di un ciclo iterativo.

A livello di sistema operativo, la ricorsione prevede che vengano inseriti all'interno dello stack di attivazione, i record che si riferiscono alla funzione. In questa maniera, a partire dall'alto verso il basso, vengono valutati tutti i record inseriti nella pila.

## ESEMPIO

```C
    int fattoriale (int n){
        if(n == 0){
            return 1;
        }
        if (n == 1){
            return 1;
        }
        return n*fattoriale(n-1);
    }

    /* Record di attivazione
        fattoriale(3) 
        -------------
        fattoriale(0) = 1
        fattoriale(1) = fattoriale(0)*1 = 1
        fattoriale(2) = fattoriale(1)*2 = 2
        fattoriale(3) = fattoriale(2)*3 = 6
        ------------
    */


```


