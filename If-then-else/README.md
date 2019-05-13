# STRUTTURA DI CONTROLLO IF-THEN-ELSE
Per chi avesse famigliarità con i linguaggio C-like, si ricorderà sicuramente che la sintassi per definire una struttura di controllo if è:
``` 
    if (condizione){

    }else{

    }
```
In Haskell, invece, la struttura viene così definita:
```
    if (condizione)
    then (espressione)
    else (espressione)
```

La condizione dell'if deve necessariamente contenere un valore booleano. E' possibile inserire delle espressioni che verranno valutate, tuttavia, queste devono necessariamente produrre come valore irriducibile un tipo Booleano.

A seguito della valutazione della condizione posta all'interno dell'**if**:

**Se la condizione è vera** verrà valutata l'espressione contenuta nel then.

**Se la condizione è falsa** verrà valutata l'espressione contenuta nell'else.

### Note
In questo file e nei precedenti, vengono usate delle funzioni, questo argomento verrà trattato successivamente, per ora è necessario sapere solo che:

1. *Una funzione deve essere necessariamente definita ed implementata*
2. *Una funzione deve necessariamente restituire un risultato o un'azione*


