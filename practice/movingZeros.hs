module MovingZeros (moveZeros) where
{-
  https://www.codewars.com/kata/52597aa56021e91c93000cb0/train/haskell

  Write an algorithm that takes an array and moves all of the zeros to the end, preserving the order of the other elements.

  moveZeros [1,2,0,1,0,1,0,3,0,1] -> [1,2,1,1,3,1,0,0,0,0]
-}

moveZeros :: [Int] -> [Int]
moveZeros xs = nonZeros ++ zeros
  where
    nonZeros = filter (/= 0) xs
    zeros    = filter (== 0) xs

-- this also works
-- moveZeros = sortOn (== 0)
