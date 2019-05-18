# CASE

## NEI LINGUAGGI IMPERATIVI 
Nei linguaggi imperativi, la keyword **case** indica una serie di if a cascata. In corrispondenza di ogni caso, c'è un'espressione booleana che viene valutata. A partire dall'alto verso il basso, vengono valutati tutti i casi, il primo caso che contiene un'espressione vera viene attivato, e quindi eseguita la parte di codice assegnata a quel caso.

## IN HASEKLL

Il funzionamento è molto simile, la differenza consiste nel fatto che questo costrutto viene usato in contemporanea con il pattern-matching o quali altro costrutto visto precedentemente.

La sintassi usata da questo costrutto è la seguente:

```haskell
    case expression of pattern -> result
                       pattern -> result
                       pattern -> result
```