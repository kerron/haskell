{-
  Write an algorithm that takes an array and moves all of the zeros to the end, 
  preserving the order of the other elements.

  moveZeros [1,2,0,1,0,1,0,3,0,1] -> [1,2,1,1,3,1,0,0,0,0]
-}

module MovingZeros (moveZeros) where
import Data.List

moveZeros :: [Int] -> [Int]
moveZeros = uncurry (++) . partition (/=0)

-- moveZeros xs = (filter (/=0) xs) ++ (filter (==0) xs)

