# STRUTTURA WHILE?
## **__NON ESISTE LA STRUTTURA WHILE IN HASKELL!!!__**

Tuttavia esiste un modo alternativo per definirla, la ricorsione.
Per ricorsione si intente una funzione, o in maniera più generale un sotto-programma, che richiama se stesso.

Solitamente, per definire una chiamata ricorsiva abbiamo bisogno di alcuni elementi:

1. *Una condizione di partenza che definisce fin quando si deve eseguire la ricorsione (simile alla condizione del while)*
2. *Un caso base per cui viene definita la ricorsione*
3. *Un caso generico per cui definire tutte le restanti iterazioni*

## Notazioni
Se in un blocco then o in un blocco else sono state definite più azioni da eseguire, e si sta utilizzando la sintassi C-like per definire il blocco, è necessario circondare le istruzioni da un blocco __do__ aggiuntivo:

```
    if (condizione)
        then do {
            espressione_1;
            espressione_2;
        }
        else espressione_3;
```

Analogamente per la condizione __else__

```
    if (condizione)
        then espressione_1;
        else {
            espressione_2;
            espressione_3
        }
```
