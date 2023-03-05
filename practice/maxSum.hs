sumList :: [Int] -> [Int]
sumList xs =  [ y - x | (x, y) <- zip xs (tail xs)]

maxSum :: [Int] -> Int
maxSum xs = maximum (sumList xs)


maxCount :: [Int] -> Int
maxCount xs = length (filter (== maxSum xs) (sumList xs))

