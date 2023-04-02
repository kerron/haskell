-- Complete the function/method so that it returns the url with anything after the anchor (#) removed.
-- "www.codewars.com#about" --> "www.codewars.com"
-- "www.codewars.com?page=1" -->"www.codewars.com?page=1"

module RemoveUrlAnchor where

removeUrlAnchor :: String -> String
removeUrlAnchor = takeWhile (/='#')

