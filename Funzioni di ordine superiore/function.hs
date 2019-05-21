module Function where

    main :: IO()

    f :: Integer -> Integer
    h :: (Integer -> Integer) -> Integer
    k :: Integer -> (Integer -> Integer)
    applicaDue :: (a -> a) -> a -> a
    zippa :: (a -> b -> c) -> [a] -> [b] -> [c]

    f x = x + 1
    h f = (f 2)
    k x = f 

    applicaDue funct x = funct (funct x)
    
    zippa _ [] [] = []
    zippa _ _ [] = []
    zippa _ [] _ = []
    zippa f (x:xs) (y:ys) = (f x y) : (zippa f xs ys)

    num = k 2

    main = do {
        print (f 3);
        print (h f);
        print (num 1);
        print (applicaDue f 2); -- 4 = ((2 + 1) + 1)
        print (applicaDue (++ "CIAONE ") "AHAHHA");
        print (zippa (*) [1,2,3,4] [5,6,7,8]);
        print (zippa (+) [1,2,3,4] [5,6,7,8]);
        print (zippa (/) [1,2,3,4] [5,6,7,8]);
    }