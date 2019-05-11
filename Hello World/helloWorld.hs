-- Modulo in cui è incapsulato il metodo "hello".
module HelloWorld where

    -- Definzione della funzione "hello", la segnatura "::" può essere interpretata come:
    -- "Ritorna un tipo/azione di ... "
    hello :: IO()

    -- In questa serie viene utilizzata una definzione del corpo di funzione simile al C
    hello = do {
        putStrLn "Ciao mondo in Haskell!";
    }