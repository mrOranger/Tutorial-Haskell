# TUPLE

Il seguente capitolo prevede una descrizione esaustiva con esempi sul tipo tupla, in quanto non tutti hanno familiarità con questa particolare struttura.

## DEFINIZIONE

In ambito matematico, la definizione di tupla può essere ricondotta a quella di insieme, con la distinzione che:
1. In una tupla gli elementi sono tra loro ordinati, diversamente negli insiemi non è possibile distinguere, ad esempio, il primo elemento dal secondo.
2. Sono ammesse ripetizioni, cosa che invece non è ammissibile all'interno di un insieme.
3. Gli elementi che compongono la tupla, chiamati anche **attributi** non sono necessariamente dello stesso tipo.

Ricapitolando, la seguente può essere considerata una definizione di tupla: _Una tupla è un insieme disomogeneo di elementi, avente una particolare relazione d'ordine e nella quale gli elementi possono ripetersi tra loro_.

Il concetto matematico di tupla trova una grande applicazione nell'ambito dei Database, in particolare nei Database Relazionale quale, ad esempio, SQL. In questo caso, la tupla viene vista come un particolare elemento di una tabella del database, necessariamente identificata da una chiave che la rende univoca.

## ESEMPI

Di seguito sono forniti degli esempi di tuple, in questo caso viene usata la notazione '()' per indicare le tuple e '[]' per indicare una lista.

```
    tupla = (1, "Marcello", 12.22, 'a')
    lista = [1, 12, 122]

    persona_1 = ("Marco", "Rossi", 23, "Ingegneria)
    persona_2 = ("Marco", "Verdi", 21, "Medicina")
    persona_3 = ("Stefania", "Rossi", 22, "Fisica")

    persone = [persona_1, persona_2, persona_3] -- Ammissibile
    persona = ["Marco", "Rossi", 23, "Ingegneria"] -- Non ammissibile
```

## TUPLE IN HASKELL

In Haskell le tuple ci permettono di inserire una molteplicità di dati distinti all'interno di un unico dato. Cosa che invece con le liste risultava essere particolarmente difficile da realizzare.

Non esiste una dimensione massima per cui è possibile definire una tupla, ma ovviamente ne esiste una minima, cioè 2. Infatti, se la tupla fosse constituita da un solo elemento questa sarebbe in realtà un dato atomico.

E' possibile _"costruire"_ una tupla in due diverse maniere:

1. **Definendola**: defininendo la tupla per uso delle parentesi () ed impostare i suoi attributi.
2. **Usando l'operatore ','**: usando l'operatore ',' per inserire di volta in volta gli attributi all'interno di questa. Questo particolare operatore richiede che vengano sempre forniti due parametri in input. L'elemento con cui formare la nuova tupla con il secondo elemento.

### CREAZIONE DI UNA TUPLA
``` haskell
    miaTupla = (1, "Marco", "Rossi", 23)
    print miaTupla -- ("Marco", "Rossi", 23)
```

### USO OPERATORE ','
``` haskell
    miaTupla = (,) 1 "Marco" 
    print miaTupla -- (1, "Marco")
    miaTupla = (,) "Marco" "Rossi"
    print miaTupla -- ("Marco", "Rossi")
    miaTupla = (,) "Rossi" 23
    print miaTupla -- ("Rossi", 23)
```

### OPERATORI SULLE TUPLE

Haskell fornisce nel Prelude alcuni operatori di "base", altri invece richiedono che venga importato il modulo **Data.Tuple**.

1. **fst**: restituisce il primo elemento della tupla.
2. **snd**: restituisce il secondo elemento della tupla.
3. **swap**: scambia gli elementi di una tupla costituita da due solo attributi. Richiede l'importazione del modulo **Data.Tuple**.