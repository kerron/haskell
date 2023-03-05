{-
 https://www.codewars.com/kata/57a0e5c372292dd76d000d7e/haskell

 Write a function that accepts an integer n and a string s as parameters, 
 and returns a string of s repeated exactly n times.
-}

module RepeatStr where

repeatStr :: Int -> String -> String
repeatStr n s = concat $ replicate n s
