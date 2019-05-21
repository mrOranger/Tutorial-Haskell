# FUNZIONI COME PARAMETRI

Diamo uno sguardo ai seguenti esempi:

```haskell
    f :: Integer -> Integer -> Integer
    g :: Integer -> Integer -> Integer -> Integer
    k :: Integer -> Integer
```

Potremmo dire che: 
1. La funzione _f_ prende in input due numeri interi e restituisce un valore intero.
2. La funzione _g_ prende in input tre numeri interi e restituisce un quarto numero intero.
3. La funzione _k_ prende in input un intero e restituisce un intero.

Nulla di strano fino ad ora, tuttavia, chi in questo momento sta leggendo questo file, rimarrà stupito davanti all'idea che _**IN HASKELL LE FUNZIONI POSSONO AVERE UN SOLO PARAMETRO IN INPUT**_.

## CITTADINI DI PRIMO ORDINE

Nei linguaggi di programmazione, le funzioni vengono divise in categorie in base al loro comportamento ed alle loro proprietà nel linguaggio. In particolare:

1. Le funzioni vengono definite __cittadini di terzo ordine__ se queste possono essere solamente invocate all'interno del programma.
2. __Cittadini di secondo ordine__ se possono anche essere passate come parametri ad altre funzioni.
3. __Cittadini di primo ordine__ se oltre alla capacità di essere passate come parametri alle funzioni, possiedono le capacità di: essere invocate nel programma e di essere restituite come risultati di un'altra funzione.

## HASKELL

E fin qui tutto bene, abbiamo capito che in Haskell le funzioni sono dei cittadini di primo ordine e che possiamo sia passarle come parametri che come risultati. Ma come è possibile fare tutto questo?

Semplice, dobbiamo usare meglio le __()__ nella definzione di funzione!.

### ESEMPIO

```haskell
    f :: Integer -> Integer 
    g :: (Integer -> Integer) -> Integer
    k :: Integer -> (Integer -> Integer)
```

La funzione **f** ha in input un intero e restituisce un intero.

La funzione **g** ha in input una funzione, che ha in input un intero e restitusce un intero, e restituisce a sua volta un nuovo intero.

La funzione **k** prende in input un intero e restituisce una funzione, la quale ha in input un intero e resituisce un intero.

```haskell
    f x = x + 1
    g f = (f 2)
    k x = f 
```

In particolare, l'ultima istanza della funzione restituirà un errore. L'errore dichiara semplicemente che quella cosa non è detto che non si possa fare, ma che non sa come stampare il risultato. Per ovviare a questo problema è necessario che si inserisca all'interno di una variabile l'instanza della funzione e si stampi quindi la variabile.