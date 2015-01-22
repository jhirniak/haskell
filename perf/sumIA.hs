module Main where

main = putStrLn (show (sumIA 1 1000000))

sumIA :: Integer -> Integer -> Integer
sumIA n m = accIA n m 0

accIA :: Integer -> Integer -> Integer -> Integer
accIA n m s
  | n>m       = s
  | otherwise = accIA (n+1) m (n+s)
