# TIPI DI DATO IN HASKELL
## Tipizzazione in Haskell
Haskell è un linguaggio a tipizzazione statica, questo implica che il binding tra le variabili ed il tipo ad esse associato, viene risolto a tempo di compilazione. Diversamente, nei linguaggi a tipizzazione dinamica, il binding viene effettuato a runtime.
## Tipi numerici
E' importante sapere che in Haskell esiste una molteplicità di tipi numerici, in sostanza possiamo raggruppare questi in:
### Numeri Interi
**Int**: Rappresenta i numeri interi per cui è possibile definire arbitrariamente il numero di bit usati per rappresentarlo. Es: Int8 => Numeri interi rappresentati con 8 bit (-128, 127).

**Integer**: Rappresenta i numeri interi di dimensione arbitraria.
### Numeri Frazionali
**Float**: Rappresenta i numeri con la virgola a singola precisione.

**Double**: Rappresenta i numeri con la virgola a doppia precisione.

**Rational**: Rappresenta i numeri derivata dalla divisione di due numeri interi.
## Stringhe
In Haskell è definito il tipo String, tuttavia questo non è un tipo primitivo del linguaggio ma presente nella libreria standard. Il tipo primitivo per rappresentare le stringhe è il vettore di caratteri. Una stringa si rappresenta con le **""**.
## Booleani
Il tipo Booleano indica l'insieme dei valori di verità **True** o **False**.
## Caratteri
Rappresenta l'insieme dei caratteri ASCII, vengono definiti con le **''**.
