{-
ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

Create a function that takes a string and returns the string ciphered with Rot13. If there are numbers or special characters included in the string, they should be returned as they are. Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".

example:
"test" -> "grfg"
-}

module ROT13 where

import Data.Char

rot13 :: String -> String
rot13 = map fn
    where
        fn x
         | not (isLetter x && isAscii x) = x
         | toLower x <= 'm' = chr $ ord x + 13
         | otherwise = chr $ ord x - 13