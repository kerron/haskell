module GetSum where

{-
  Given two integers a and b, which can be positive or negative, 
  find the sum of all the integers between and including them and return it. 
  If the two numbers are equal return a or b.

  Note: a and b are not ordered!
-}

getSum :: Int -> Int -> Int
getSum a b = sum [(min a b)..(max a b)]


-- alternative
-- getSum a b = sum $ enumFromTo (min a b) (max a b)
