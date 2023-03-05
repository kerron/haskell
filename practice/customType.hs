data BookInfo = Book Int String [String]
  deriving (Show)

myBook = Book 9780135072455 "Algebra of Programming"
           ["Richard Bird", "Oege de Moor"]
