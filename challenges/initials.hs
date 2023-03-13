module Initials where

{-
 - https://www.codewars.com/kata/57eadb7ecd143f4c9c0000a3/haskell
 - Write a function to convert a name into initials.
 - This kata strictly takes two words with one space in between them.
 - The output should be two capital letters with a dot separating them.
 - It should look like this:
 - Sam Harris => S.H
 - patrick feeney => P.F
 -}

import Data.Char
import Data.List

getInitials :: String -> String
getInitials = intersperse '.' . map (toUpper . head) . words
