-- Note: this is not the most effecient implementation of quicksort.
-- It always uses the first element in the list, potential O(n^2)
-- This version is also not in-place (as defined in original paper).

qsort [] = []
qsort (x : xs) = qsort ys ++ [x] ++ qsort zs
  where
    ys = [a | a <- xs, a <= x]
    zs = [b | b <- xs, b > x]
