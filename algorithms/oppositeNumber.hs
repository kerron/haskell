{-
Very simple, given an integer or a floating-point number, find its opposite.

Examples:
1: -1
14: -14
-34: 34
-}

opposite :: Num a => a -> a
opposite = negate