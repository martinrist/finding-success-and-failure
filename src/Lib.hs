module Lib
    ( someFunc,
      add
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

add :: Integer -> Integer -> Integer
add x y = x + y