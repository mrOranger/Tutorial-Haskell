module List where

    -- Inclusione librerie esterne --
    import Text.Printf

    -- Definizione delle funzioni --
    main :: IO()
    isEmpty :: [String] -> Bool

    -- Implementazione delle funzioni --
    isEmpty list = do {
        if ((length list) == 0)
            then True
            else False
    }

    -- Definizione variabili globali --
    list_int :: [Int] 
    list_string :: [String]
    list_char :: [Char]

    -- Assegnazione valore variabili --
    list_int = [1,2,3,4]
    list_string = ["Marco", "Adriano", "Giovanni"]
    list_char = ['a', 'b', 'c']

    main = do {

        print (list_int); -- [1,2,3,4] 
        print (list_string); -- ["Marco", "Adriano", "Giovanni"] 
        print (list_char); -- "abc" 
        print (5: (6: ([]))); -- [5,6]
        print (list_string ++ ["Paolo", "Mario"]); -- ["Marco", "Adriano", "Giovanni". "Paolo", "Mario"] 
        print (head list_char); -- 'a'
        print (tail list_char); -- "bc"
        print (head (tail list_char)); -- 'b'
        print (length list_string);
        if(isEmpty list_string)
            then printf "La lista e' vuota!\n";
            else printf "La lista non è vuota!\n"; -- Stampa questo
        print (reverse list_int); -- [4,3,2,1]
        print (list_int !! 1); -- 2
        print (last list_string); -- "Giovanni"
        print (elem 12 list_int); -- False
        print (list_string > (list_string ++ ["Paolo", "Mario"])); -- False
        print (list_string < (list_string ++ ["Paolo", "Mario"])); -- True
        print (list_string == (list_string ++ ["Paolo", "Mario"])); -- False
        print (maximum list_string); -- "Marco"
        print (minimum list_int); -- 1
        print (sum list_int); -- 10
        print (product list_int); -- 24
        print ([1..100]); --[0,1...100]
        print (take 2 list_string); -- ["Marco", "Adriano"]
        print (drop 2 list_string); -- ["Giovanni"]
    }