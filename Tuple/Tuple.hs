module Tuple where

    -- Import modulo per usare la funzione swap --
    import Data.Tuple

    -- Prototipi di funzione ---
    main :: IO()
    getFirst :: (a, b) -> a
    getSecond :: (a, b) -> b
    getThird :: (a, b, c) -> c
    getFourth :: (a, b, c, d) -> d

    -- Assegnazione variabili --
    primaTupla = ("Marcello", "Rossi")
    secondaTupla = ("Adriano", "Gialli")
    tripla = ("Andrea", "Bianchi", 21)
    quadrupla = ("Francesco", "Rossi", 23, "Ingegneria")

    -- Corpo delle funzioni --
    getFirst (element_1, element_2) = do {
        element_1;
    }

    getSecond (element_1, element_2) = do {
        element_2;
    }

    getThird (element_1, element_2, element_3) = do {
        element_3;
    }

    getFourth (element_1, element_2, element_3, element_4) = do {
        element_4;
    }


    main = do {
        print primaTupla; -- ("Marcello", "Rossi")
        print secondaTupla; -- ("Adriano", "Gialli")
        print tripla; -- ("Andrea", "Bianchi", 21)
        print (getFirst primaTupla); -- "Marcello"
        print (getSecond primaTupla); -- "Rossi"
        print (getThird tripla); -- 21
        print (getFourth quadrupla); -- "Ingegneria"
        -- print (getFirst quadrupla); -- ERRORE !!!
        print (swap primaTupla); -- ("Rossi", "Marcello")
        print (swap secondaTupla); -- ("Gialli", "Adriano")
        -- print (swap tripla); -- ERRORE !!!
    }
