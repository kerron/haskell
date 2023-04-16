module Challenges.UniqueNumber where
{--
https://www.codewars.com/kata/585d7d5adb20cf33cb000235/solutions/haskell
There is an array with some numbers. All numbers are equal except for one. Try to find it!

getUnique [1, 1, 1, 2, 1, 1] -- Result is 2
getUnique [0, 0, 0.55, 0, 0] -- Result is 0.55
It’s guaranteed that array contains at least 3 numbers.

The tests contain some very huge arrays, so think about performance.
--}

getUnique :: [Int] -> Int
getUnique xs = head [x | [x] <- group . sort $ xs]
