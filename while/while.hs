module While where

    -- Importazione delle librerie per utlizzare il metodo di stampa printf --
    import Text.Printf

    -- Definizione delle funzioni -- 
    -- finoADieci prende in input un intero ed esegue un'azione di Input-Output
    finoADieci :: Integer -> IO()
    -- incrementaDi prende in input due interi e resituisce un intero --
    incrementaDi :: Integer -> Integer -> Integer
    fattoriale :: Integer -> Integer
    main :: IO()

    -- Istruzioni multiple in un blocco then --
    finoADieci numero = do {
        if(numero <= 10)
            then do {
                printf "Sono al numero: %d\n" numero;
                finoADieci (numero + 1);
            }
            else putStrLn ("Ho terminato di contare ...");
        
    }

    incrementaDi numero1 numero2 = do {
        if(numero2 > 0)
            then incrementaDi (numero1+1) (numero2-1);
            else numero1;
    }

    fattoriale numero = do {
        if (numero == 0)
            then 1
            else numero*fattoriale (numero - 1)
    }

    main = do {
        putStrLn "Conta fino a 10 ";
        finoADieci 1;
        printf "Incrementa 2 di 3: %d\n" (incrementaDi 2 3);
        printf "Il Fattoriale di 3 è: %d\n" (fattoriale 3);
    }
