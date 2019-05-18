# FUNZIONI 

## DEFINIZIONE MATEMATICA

Usando la terminologia matematica, _Una funzione è una relazione tra due insiemi, chiamati rispettivamente Dominio e Codominio, la quale associa ad un solo elemento del Dominio uno ed un solo elemento del Codominio._

### ESEMPI

Esempi di funzione sono:

```
    f: R->R, f(x) = 2x + 1 
    g: R->R, g(x) = sqrt(x+2)
```


In questi due esempi le funzioni, definite con i nomi _f, g_, hanno come Dominio l'insieme dei numeri Reali e come codominio lo stesso inseme dei numeri Reali. Entrambe le funzioni associano ad ogni x appartenente ad R, un valore definito dall'espressione contenuta dopo l'uguaglianza.

## DEFINIZIONE INFORMATICA

_In informatica una funzione, chiamata anche sottoprogramma, è un raggruppamento di codice che esegue una particolare azione dettata dall'insieme dei parametri in input e che definisce l'output della stessa_.

Una funzione permette quindi di raggruppare e riutilizzare il codice all'interno di un programma principale, inoltre migliora la manutenibilità e l'organizzazione complessiva di questo.

### ESEMPI

Esempio di funzione in linguaggio C:

```C
    /* Prototipo di funzione */
    int somma(int num_1, int num_2);

    /* Definizione della funzione */
    int somma(int num_1, int num_2){
        return num_1 + num_2;
    }
```

## FUNZIONI IN HASKELL

Una funzione in Haskell è quindi un sottoprogramma che definisce una parte di codice riutilizzabile all'interno di tutto il programma, viene definita attraverso un nome e con l'insieme dei parametri che essa riceve.

Una funzione può anche non ricevere parametri, tuttavia, questa deve necessariamente restituire un'espressione che sia sotto forma anche di azione di I/O. Possiamo affermare, senza certezza, che Haskell non permette la definizione di Procedure, intese come funzioni che non forniscono come output alcun valore.

In Haskell esistono diverse maniere per definire una funzione, per ora ci siamo limitati solo alla definizione che usa le parentesi '{}' come nei linguaggi C-like, tuttavia altre maniere per definire una funzione sono:

1. **Patter-matching**: usare cioè un insieme di esempi chiamati _pattern_ rappresentanti le situazioni in cui si può trovare la funzione.
2. **Where con guardia**: separa la definizione delle variabili dal resto della funzione, inoltre vengono definiti una serie di _"if a cascata"_.
3. **Let**, simile come funzionamento al _where_, l'unica differenza consiste nella posizione in cui vengono definite le variabili. Utilizza il contemporanea la keyword **in**.
4. **Case**, stesso funzionamento dei linguaggi imperativi, si differenza per la valutazione dei vari casi, i quali saranno delle espressioni.