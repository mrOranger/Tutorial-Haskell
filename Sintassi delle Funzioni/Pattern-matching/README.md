# PATTERN MATCHING

## DEFINZIONE

_Un pattern è un particolare raggruppamento di elementi che condividono una caratteristica in comune_. Esempi di pattern sono i design pattern usati per progettare in Ingegneria del Software.

L'operazione di **pattern-matching** consiste nell'_individuare all'interno di un insieme di elementi una particolare ricorrenza di questi, chiamata appunto pattern._

## PATTERN MATCHING IN HASKELL

Specificare l'implementazione di una funzione tramite pattern matching, consiste nella specifica di particolare situzioni in cui può essere eseguita la funzione con i parametri in input. Ogni specifica segue la seguente sintassi: **_funzione_ _parametri_ = _corpo funzione_**.

### ESEMPI

```haskell
    -- Definizione della funzione 
    somma :: Int -> Int -> Int

    -- Corpo della funzione
    somma num1 0 = num1
    somma 0 num2 = num2
    somma num1 num2 = num1 + num2
```

In questo esempio la valutazione viene così eseguita: in ogni istante a partire dal momento che viene richiamata la funzione, vengono confrontati dall'alto verso il basso le varie specifiche della funzione con i relativi pattern. Se uno di questi pattern soddisfa le condizioni in cui viene eseguita la funzione, esso viene attivato, valutando la rispettiva espressione associata.

**_L'ordine con cui vengono definiti i pattern è di fondamentale importanza_** in quanto questi stabiliscono l'ordine di valutazione delle espressioni associate alla funzione. Ad esempio:

```haskell
    fact :: Int -> Int

    fact 0 = 1
    fact 1 = 1
    fact n = n * fact(n - 1)
```

Se attiviamo la funzione _fact 3_ la valutazione sarà come segue: 
(fact 3 * (fact 2 * (fact 1 * (fact 0))))

Se fossero stati scambiati: _fact n_ con _fact 0_, la funzione sarebbe caduta in un loop infinito in quanto verrà valutata sempre _fact n_ e mai _fact 0_. Dunque **è bene ordinare i pattern a partire dal caso particolare al caso generale**.

## SEGNAPOSTO _

Nella definizione dei pattern, gioca un ruolo fondamentale l'uso del segnaposto **_**. 

Questo particolare carattere può essere inteso come: _Qualiasi cosa che è contenuta in quella posizione_. 

### ESEMPIO

Si consideri una quintupla del tipo (a, b, c, d, e) e si considerino le funzioni che restituiscano tutti gli elementi nelle rispettive posizioni.

```haskell
    first :: (a, b, c, d, e) -> a
    second :: (a, b, c, d, e) -> b
    third :: (a, b, c, d, e) -> c
    fourth :: (a, b, c, d, e) -> d
    fifth :: (a, b, c, d, e) -> e

    first (a, _, _, _, _) = a -- 
    second (_, b, _, _, _) = b
    third (_, _, c, _, _) = c
    fourth (_, _, _, d, _) = d
    fifth (_, _, _, _, e) = e

    -- Non mi interessano i contenuti di quelle posizioni ma solo quella!
```

## SEGNAPOST @

Esiste una maniera attraverso la quale, è possibile tenere un riferimento all'intero pattern passato in input. Precisamente, se in input ci fosse una lista o una stringa ed il nostro pattern specifica un caso in cui questa si ritrova ad essere divisa in due sezioni distine, è possibile usare il carattere _@_ preceduto da un nome simbolico, per avere un riferimento al pattern completo in input.

### ESEMPIO
```haskell
    first :: [Int] -> String

    first [] = "Non esiste il primo elemento!"
    first all@(curr:rest) = "Il primo elemento di: " ++ all ++ " è: " ++ curr
```