# USO DELLA GUARDIA 

Talvolta, l'uso del pattern matching per definire delle funzioni può risultare scomodo, in quanto sarebbe necessario definire gran parte delle situazioni in cui è possibile ritrovarsi.

Ad esempio: definiamo una funzione che dato in input un valore, restituisce un valore booleano sulla base che questo sia o no compreso tra 1 e 5.

```haskell
    traUnoECinque :: Int -> Bool

    traUnoECinque 1 = True
    traUnoECinque 2 = True
    traUnoECinque 3 = True
    traUnoECinque 4 = True
    traUnoECinque 5 = True
    traUnoECinque _ = False
```

Possiamo definire la stessa funzione, usando il carattere **|**.

```haskell
    traUnoECinque :: Int -> Bool

    traUnoECinque n 
        | n >= 1 && n <= 5 = True
        | otherwise False
```

Questa nuova sintassi è composta da seguenti elementi: 
1. L'**intestazione** caratterizzata dal nome della funzione e dei parametri che essa riceve.
2. L'insieme delle condizioni, rappresentate dal carattere **|**. Possono essere interpretate come un if.
3. _Opzionale_, la keyword **otherwise** indicante tutti i restanti casi in cui può trovarsi la funzione.

## WHERE

Un elemento fondamentale che caratterizza questa sintassi è la parola chiave **where**. 

Usando questa, è possibile definire un blocco aggiuntivo alla funzione nel quale è possibile indicare i valori delle rispettive variabili globali definite all'interno di questa.




