class Geometry g where
  area  :: g -> Float
  perim :: g -> Float


data Square = Square Float Float deriving (Show)
data Circle = Circle Float deriving (Show)


instance Geometry Square where
  area (Square w h) = w * h
  perim (Square w h) = 2 * (w + h)

instance Geometry Circle where
  area (Circle r) = pi * r ^ 2
  perim (Circle r) = pi * 2 * r


measure :: (Geometry g) => (Show g) => g -> IO ()
measure g = do
  print g
  print $ area g
  print $ perim g


main = do
  measure $ Square 3 4
  measure $ Circle 5
