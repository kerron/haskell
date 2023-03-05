module Banjo where
import Data.Char

-- Create a function which answers the question "Are you playing banjo?".
-- If your name starts with the letter "R" or lower case "r", you are playing banjo!
areYouPlayingBanjo :: String -> String
areYouPlayingBanjo xs = if 'r' == (toLower (head xs))
                          then xs ++ " plays banjo"
                          else xs ++ " does not play banjo"

{-
module Banjo where
import Data.Char

areYouPlayingBanjo :: String -> String
areYouPlayingBanjo xs
  | toLower (head xs) == 'r' = xs ++ " plays banjo"
  | otherwise = xs ++ " does not play banjo"
-}
