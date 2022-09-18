-- check if an item is in the list
inList :: (Eq a) => a -> [a] -> Bool
inList _ [] = False
inList e (x:xs) = (e == x) || inList e xs