module NoBoringZeros where

-- remove the last digit if it is zero, and return zero if the number has only one digit and it's zero
noBoringZeros :: Int -> Int
noBoringZeros n
    | n == 0          = 0
    | n `mod` 10 == 0 = noBoringZeros (n `div` 10)
    | otherwise       = n

{-
 -- oneliner
noBoringZeros 0 = 0
noBoringZeros n = read . reverse . dropWhile (== '0') . reverse . show $ n :: Int
-}
