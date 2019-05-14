module ListAdv where

    -- Prototipi funzioni 
    main :: IO()

    -- Definire l'insieme delle potenze di due il cui esponente va da 0 a 10
    powerOfTwo :: [Int]
    powerOfTwo = [2^x | x <- [1..10]]

    -- Definire l'insieme delle moltiplicazioni tra due numeri a e b per cui:
    -- a va da 1 a 10 
    -- b va da 10 a 20
    multiply :: [Int]
    multiply = [x*y | x <- [1..10], y <- [10..20]]

    
    -- Definire l'insieme delle stringhe appartenenti al linguaggio L dove:
    -- L è l'insieme di tutte le stringhe composte da tre lettere a,b,c in cui:
    -- a appartiene all'insieme {a,b,c},
    -- b appartiene all'insieme {b,e,f}
    -- c appartiene all'insieme {a,b,k}
    -- inoltre, a != b e b != c
    ling :: [String]
    ling = [a:b:c:[] | a <- ['a','b','c'], b <- ['b', 'e', 'f'], c <- ['a', 'b', 'k'], (a /= b) && (b /= c)]

    -- Definire l'insieme delle stringhe appartenenti al linguaggio L' dove:
    -- L' è l'insieme di tutte le stringhe di lunghezza 4 per cui la seconda e la quarta lettera 
    -- sono necessariamente delle vocali
    ling' :: [String]
    ling' = [a:b:c:d:[] | a <- ['a'..'z'], c <- ['a'..'z'], b <- ['a','e','i','o','u'], d <- ['a','e','i','o','u']]

    -- Definire una funzione per cui, data in input un insieme di stringhe, 
    -- viene verificato se queste appartengono a ling'
    checkString :: [String] -> [String] -> Bool
    listCheck :: [String]
    checkString list list' = do {
        if (elem (list !! 0) list')
            then 
                if (length list == 1)
                    then elem (list !! 0) list'
                    else (True && (checkString (tail list) list'))
            else False
    }
    listCheck = ["vohe", "vifu", "akji"]
    listCheck' = ["vohe", "vifu", "aeji"]

    main = do {
        print powerOfTwo; --[1,2,4,16...]
        print multiply; --[1*10, 1*11, ... , 8*13, ..., 10*12, ..., 10*20]
        print (checkString listCheck ling'); --False
        print (checkString listCheck' ling'); --True
    }  
    
    