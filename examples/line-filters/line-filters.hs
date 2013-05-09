import Data.Char


main = do
  line <- getLine
  if null line
    then return ()
    else do
         print $ map toUpper line
         main
