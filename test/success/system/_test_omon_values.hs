x :: Int
x = let y :: Int; y = let y :: Int; y = 0 in y-1
    in y
y :: Double
y = let y :: Double; y = 0.0 in y
main = do
       print x
       print y