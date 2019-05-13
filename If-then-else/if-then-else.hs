module IfThenElse where

    -- NB: In Haskell una funzione deve perforza restituire un espressione atomica ... --

    -- Definizione delle funzioni --
    isCane :: String -> String
    isGatto :: String -> String
    isTrue :: Bool -> String
    main :: IO()

    isCane verso = do {
        if verso == "Bau"
            then "E' proprio un cane!"
            else "Non credo sia proprio un cane"
    }

    isGatto verso = do {
        if verso == "Miao"
            then "E' proprio un gatto!"
            else "Non credo sia proprio un gatto"
    }

    isTrue valore = do {
        if valore
            then "Hai detto una cosa vera!"
            else "Stai dicendo una cosa falsa!"
    }

    main = do {
        putStrLn ("E' un cane questo? (Bau) -- " ++ isCane "Bau");
        putStrLn ("E' un gatto questo? (Miao) -- " ++ isGatto "Miao");
        putStrLn ("Cosa hai detto? (True) -- " ++ isTrue True);
        putStrLn ("Cosa hai detto? (False) -- " ++ isTrue False);
        putStrLn ("E' un gatto questo? (Bau) -- " ++ isGatto "Bau");
        putStrLn ("E' un cane questo? (Miao) -- " ++ isCane "Miao");
    }




