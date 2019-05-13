-- Definizione del modulo principale
module Tipi (main) where

    -- Definizione delle funzioni
    main :: IO()

    -- Definzione delle variabili globali
    num_1 :: Int
    num_2 :: Integer
    num_3 :: Float
    num_4 :: Double
    num_5 :: Rational
    num_6 :: Double
    str :: String
    isVero :: Bool
    carattere :: Char

    num_1 = 12
    num_2 = 123
    num_3 = 12.23
    num_4 = -1231.233
    num_5 = 1 / 2
    num_6 = 1 / 2
    str = "Ciao a tutti!"
    isVero = True
    isFalso = False
    carattere = 'a'

    main = do {
        print num_1;
        print num_2;
        print num_3;
        print num_4;
        print num_5; -- Stamperò la frazione 1 / 2
        print num_6; -- Stamperò il risultato della frazione 1 / 2
        print str; -- "Ciao a tutti"
        putStrLn str; -- Ciao a tutti
        print isVero;
        print isFalso;
        print carattere;
    }

    