# LISTE
Haskell mette a disposizione il tipo predefinito **List**.

Questo tipo non è altro che un insieme di tipi omogenei distribuiti in un ordine casuale, sui quali è possibile eseguire delle operazioni di base.

E'possibile combinare il tipo List ottenendo delle strutture dati più avanzate.

La definzione di una variabile di tipo List in Haskell può essere fatta in __due diverse maniere__:

```
    miaLista :: [] tipoElementi
    miaLista :: [tipoElementi]


```

Di seguito, la notazione adottata per definire una variabile di tipo Lista è la seconda.

Le principali operazioni definite sul tipo lista sono:
1. **':'** definisce l'operazione di concatenazione di un elemento in uno o più elementi definendo una lista. __Non può essere usato per concatenare due liste__
2. **++** definisce l'operazione di concatenazione di due liste o di un elemento singolo. **concat** è un comando alternativo all'uso di ++.
3. **head** restituisce l'elemento in testa alla lista. Il singolo elemento!
4. **tail** restituisce gli elementi in coda. Tutti gli elementi esclusa la testa.
5. **length** calcola e restituisce la lunghezza complessiva della lista.
6. **reverse** restituisce una nuova lista, la quale è il risultato della prima con elementi invertiti.
7. **!!** ritorna l'elemento nella posizione specificata come parametro. Altrimenti un errore. __Anche in Haskell gli indici iniziano da 0!__
8. **last** restituisce l'ultimo elemento all'interno della lista.
9. **null** indica se la lista che si sta passando come parametro è piena o vuota, restituisce un valore Booleano.
10. **elem** diversamente dagli altri operatori, vuole in input due parametri: __valore__ da ricercare all'interno della lista; __lista__ nella quale ricercare il valore passato.
11. **>** determina se una lista è più grande di un' altra. __La comparazione viene fatta sugli elementi e non sulla lunghezza!__.
12. **<** determina se una lista è più piccola di un' altra. 
13. **==** determina se una lista è uguale ad un' altra. 
14. **maximum** restituisce il massimo elemento di una lista.
15. **minimum** restituisce il minimo elemento di una lista.
16. **sum** restituisce la somma di tutti gli elementi contenuti in una lista. __La lista deve necessariamente essere di elementi numerici__.
17. **product** restituisce il prodotto di tutti gli elementi contenuti in una lista.
18. **..** applicato ad una lista, restituisce tutti gli elementi contenuti nel range di valori specificati.
19. **take** riceve in input il numero di elementi che si vogliono ricavare dalla lista e la lista stessa.
20. **drop** elimina dalla lista gli n elementi passati in input.
