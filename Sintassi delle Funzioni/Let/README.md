# LET IN

Per chi avesse già una certa familiarità con l'interprete GHCI, l'uso della parola chiave **let** identifica la definizione di una variabile. Questa parola chiave, inoltre, non viene usata in un modulo esterno.

Prima di affrontare questo argomento, consiglio vivamente a chiunque di leggersi prima la sezione riguardante l'uso della parola chiave **where** nelle funzioni.

## UN PASSO INDIETRO

Nel seguente esempio:

```haskell
    funzione :: (RealFloat a) => (a, a) -> a

    funzione (num_1, num_2) = (num_1 + num_2) / const
        where const = (num_1 * num_2) / 2
```

Una funzione di questo tipo, prende in input una coppia di due numeri e restitusice la somma di questi, divisi per una costante.

La costante viene definita dopo la parola chiave **where**, quindi è visibile solo localmente alla funzione e deve essere necessariamente definita dopo il corpo di questa.

## USO DI LET

La parola chiave **let** permette di definire le variabili a priodi nel corpo della funzione ed usarle per calcolare un'espressione, definita all'intero del corpo identificato dalla parola chiave **in**.

Il seguente è un esempio:

```haskell
    areaCilindro :: (RealFloat a) => a -> a -> a

    areaCilindro altezza raggio =
        let areaLaterale = 2 * pi * r
            areaSuperficiale = pi * r ^ 2
        in areaLaterale + 2 * areaSuperficiale
```

L'intera espressione di ritorno viene definita all'interno del corpo contenuto nell'**in**. Possiamo riassumere questo meccanismo con il seguente schema.

**let** << _variabili_>> **in** <<_espressione_>>

## FUNZIONI IN LET

Tuttavia, all'intero della parola chiave **let** è possibile anche definire delle funzioni, che verranno richiamate all'intero del corpo in. Esempio:

```haskell
    tripla :: (Int a) => a -> a -> a -> (a, a, a)

    tripla num_1 num_2 num_3 =
        let incrementa num = num + 1
        in (somma num_1, somma num_2, somma num_3)
```

La seguente funzione, prende in input tre numeri e restituisce una tripla costituita dai tre numeri in input incrementati di uno. All'intero del corpo di let è stata definita la funzione somma, che incrementa il numero di uno.

## NOTA

E'importantissimo ricordarsi che, come tutti i costrutti per le funzioni, anche l'uso di **let** ed **in** necessita che tutte le componenti siano necessariamente allineate.

