module Let where

    main :: IO()

    volumePiramide :: (RealFloat a) => a -> a -> a -> a
    pesoMedio :: (RealFloat a) => [(a, a)] -> [a]
    sommatoria :: (RealFloat a) => [a] -> a
    normaVettoriale :: (RealFloat a) => [a] -> [a] -> [a]

    volumePiramide lato_1 lato_2 altezza = 
        let areaBase = lato_1 * lato_2
        in (areaBase * altezza) / 3

    pesoMedio elem = [pesoMedio' | (peso, altezza) <- elem, let pesoMedio' = peso * altezza ^ 2]

    sommatoria [] = 0
    sommatoria [x] = x^2
    sommatoria (x:xs) = x^2 + sommatoria(xs)

    normaVettoriale [] [] = []
    normaVettoriale [] [x] = []
    normaVettoriale [] (x:xs) = []
    normaVettoriale (x:xs) [] = []
    normaVettoriale [x] [y] = (x/sommatoria (x : [])) : []
    normaVettoriale (x:xs) (y:ys) = (x/sommatoria (y:ys)) : (normaVettoriale (xs) (y:ys)) 

    main = do {
        print (sommatoria [1, 2, 3, 4, 5]);
        print (normaVettoriale [1, 2, 3, 4, 5] [1, 2, 3, 4, 5]);
        print (normaVettoriale [1, 2] []);
        print (normaVettoriale [1, 2] [1, 2]);
    }
