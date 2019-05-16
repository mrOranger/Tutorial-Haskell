module Pattern where

    -- Prototipo di funzione
    main :: IO()
    dammiCinque :: String -> String
    sommaVettoriale :: Num a => [a] -> a
    prodottoVettoriale :: Num a => [a] -> a
    distanzaVettoriale :: Num a => [a] -> [a] -> a
    letteraMaiuscola :: String -> String
    lunghezza :: Num a => [a] -> a

    dammiCinque "" = "Hey dammi un cinque!"
    dammiCinque "5" = "Bravo!"
    dammiCinque _ = "Questo non è cinque!" -- Qualsiasi altro caso

    sommaVettoriale [] = 0
    sommaVettoriale (x:xs) = x + sommaVettoriale(xs)

    prodottoVettoriale [x] = x -- Occhio all'ordine
    prodottoVettoriale [] = 0
    prodottoVettoriale (x:xs) = x * prodottoVettoriale(xs)

    distanzaVettoriale [] [] = 0
    distanzaVettoriale [x] [y] = abs (x - y)
    distanzaVettoriale [x1, x2] [y1, y2] = abs (x1 - y1) + (abs (x2 - y2))
    distanzaVettoriale [x1, x2, x3] [y1, y2, y3] = abs (x1 - y1) + abs (x2 - y2) + abs (x3 - y3)
    distanzaVettoriale (x:xs) (y:ys) = abs (x - y) + distanzaVettoriale (xs) (ys)

    letteraMaiuscola "" = "Non c'è una lettera maiuscola"
    letteraMaiuscola all@ (x:xs) = "La lettera maiuscola di " ++ all ++ " è: " ++ [x]

    lunghezza [] = 0
    lunghezza [x] = 1
    lunghezza (x:xs) = 1 + lunghezza (xs)

    main = do {
        putStrLn "Dammi cinque: ";
        putStrLn (dammiCinque "");
        putStrLn (dammiCinque "7");
        putStrLn (dammiCinque "5");

        putStrLn "Somma vettoriale: ";
        print (sommaVettoriale []);
        print (sommaVettoriale [1, 2, 3]);

        putStrLn "Prodotto vettoriale: ";
        print (prodottoVettoriale []);
        print (prodottoVettoriale [1.1, 2.2, 3.3]);

        putStrLn "Distanza vettoriale: ";
        print (distanzaVettoriale [] []);
        print (sqrt (distanzaVettoriale [1] [2]));
        print (sqrt (distanzaVettoriale [1, 2] [3, 4]));
        print (sqrt (distanzaVettoriale [1, 2, 3, 4] [5, 6, 7, 8]));

        putStrLn "Lettera maiuscola: ";
        putStrLn (letteraMaiuscola "");
        putStrLn (letteraMaiuscola "Dado");

        putStrLn "Lunghezza vettoriale: ";
        print (lunghezza []);
        print (lunghezza [1]);
        print (lunghezza [1,2,3]);
    }