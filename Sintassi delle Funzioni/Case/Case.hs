module Case where

    main :: IO()

    listaVuota :: (Num a) => [a] -> String

    listaVuota list = "La lista è: " ++ case list of [] -> "vuota!"
                                                     [x] -> "composta da un solo elemento!"
                                                     list -> "composta da più elementi!"

    main = do {
        print (listaVuota []);
        print (listaVuota [1]);
        print (listaVuota [1, 2]);
    }
    