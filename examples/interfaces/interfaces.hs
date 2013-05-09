data Geometry = Square Float Float | Circle Float deriving (Show)

area :: Geometry -> Float
area (Square width height) = width * height
area (Circle radius) = pi * radius ^ 2

perim :: Geometry -> Float
perim (Square width height) = 2 * (width + height)
perim (Circle radius) = pi * 2 * radius


measure :: Geometry -> IO ()
measure g = do
  print g
  print $ area g
  print $ perim g


main = do
  measure $ Square 3 4
  measure $ Circle 5
