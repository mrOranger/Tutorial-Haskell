module Ricorsione where

    main :: IO()

    fibonacci :: Int -> Int
    massimo :: [Int] -> Int
    minimo :: [Int] -> Int
    maximum' :: [Int] -> Int -- Versione con pattern di massimo
    replica :: (Num a, Ord a) => a -> b -> [b]
    prendi :: (Num a, Ord a) => a -> [b] -> [b]
    inverti :: (Num a) => [a] -> [a]
    accoppia :: (Num a) => [a] -> [b] -> [(a,b)]

    fibonacci 0 = 0
    fibonacci 1 = 1
    fibonacci n = (fibonacci (n - 1)) + (fibonacci (n - 2))

    massimo [] = 0
    massimo [x] = x
    massimo (x:xs) 
        | x > maxTail = x
        | otherwise = maxTail
        where 
            maxTail = (massimo xs)
    
    minimo [] = 0
    minimo [x] = x
    minimo (x:xs)
        | x < minTail = x
        | otherwise = minTail
        where
            minTail = (minimo xs)

    maximum' [] = 0
    maximum' [x] = x
    maximum' (x:xs) = max x (maximum' xs)

    replica times elem
            | times <= 0 = []
            | otherwise = elem : (replica (times - 1) elem)

    prendi times elems
            | times <= 0 = []
    prendi _ [] = []
    prendi n (e:es) = e : (prendi (n - 1) es)

    inverti [] = []
    inverti [x] = [x]
    inverti (x:xs) = (inverti xs) ++ [x]

    accoppia list1 list2
        | (length list1) /= (length list2) = []
    accoppia [] [] = []
    accoppia [x] [y] = [(x,y)]
    accoppia (x:xs) (y:ys) = (x,y) : (accoppia xs ys)

    main = do {
        print (fibonacci 10);
        print (massimo [1,2,3,4]);
        print (minimo [12,3,11,2]);
        print (maximum' [1,3,22,91]);
        print (replica 2 2);
        print (prendi 0 [3,4,5]);
        print (inverti [1,2,3,4]);
        print (accoppia [1,2] [3,4]);
        print (quicksort [1,3,8,2,9,4]);
    }