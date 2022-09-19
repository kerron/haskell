{-
link: https://www.codewars.com/kata/51b62bf6a9c58071c600001b/haskell

Create a function taking a positive integer as its parameter and returning a string containing the Roman Numeral representation of that integer.

Modern Roman numerals are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending order: MDCLXVI.

Example:
solution 1000 -- should return "M"
-}

module RomanNumerals where

solution :: Integer -> String
solution n
  | n >= 1000 = "M" ++ solution (n-1000)
  | n >= 900  = "CM"++ solution (n-900)
  | n >= 500  = "D" ++ solution (n-500)
  | n >= 400  = "CD"++ solution (n-400)
  | n >= 100  = "C" ++ solution (n-100) 
  | n >= 90   = "XC"++ solution (n-90)
  | n >= 50   = "L" ++ solution (n-50)
  | n >= 40   = "XL"++ solution (n-40)
  | n >= 10   = "X" ++ solution (n-10)
  | n >= 9    = "IX"++ solution (n-9)
  | n >= 5    = "V" ++ solution (n-5)
  | n >= 4    = "IV"++ solution (n-4)
  | n >= 1    = "I" ++ solution (n-1)
  | n == 0    = ""