module BasicMath (basicOp) where
{-
 - https://www.codewars.com/kata/57356c55867b9b7a60000bd7/haskell
 - Your task is to create a function that does four basic mathematical operations.
 - The function should take three arguments - operation(string/char), value1(number), value2(number).
 - The function should return result of numbers after applying the chosen operation
 - -}

basicOp :: Char -> Int -> Int -> Int
basicOp '+' = (+)
basicOp '-' = (-)
basicOp '*' = (*)
basicOp '/' = div
