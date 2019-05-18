module Where where 

    main :: IO()

    pesoForma :: (RealFloat a) => a -> a -> String
    pesoForma1 :: (RealFloat a) => a -> a -> String
    iniziali :: String -> String -> String

    pesoForma altezza peso 
        | forma <= 18.5 = "Sei sottopeso, devi mangiare di più!"
        | forma <= 25.0 = "Sei nel tuo pesoforma"
        | forma <= 30.0 = "Sei un po' sovrappeso, dovresti mangiare di meno!"
        | otherwise = "Stai attento sei troppo sovrappeso!"
        where forma = altezza / peso ^ 2

    pesoForma1 altezza peso 
        | forma <= sottoPeso = "Sei sottopeso, devi mangiare di più!"
        | forma <= inPeso = "Sei nel tuo pesoforma"
        | forma <= sovraPpeso = "Sei un po' sovrappeso, dovresti mangiare di meno!"
        | otherwise = "Stai attento sei troppo sovrappeso!"
        where 
            forma = altezza / peso ^ 2
            sottoPeso = 18.5
            inPeso = 25.00
            sovraPpeso = 30.00

    iniziali nome cognome = "Le tue iniziali sono: " ++ [n] ++ " " ++ [c]
            where (n:_) = nome
                  (c:_) = cognome
    

    main = do {
        print (pesoForma 1.70 60);
        print (pesoForma1 1.70 60);
        print (iniziali "Marco" "Rossi")
    }