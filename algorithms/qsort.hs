-- Note: this is not the most effecient implementation of quicksort.
-- It always uses the first element in the list, potential O(n^2)
-- This version is also not in-place (as defined in original paper).

qsort [] = []
qsort (i:xs) = 
    let 
        lesser  = filter (\x -> x <= i) xs
        greater = filter (\x -> x > i) xs
    in qsort lesser ++ [i] ++ qsort greater 