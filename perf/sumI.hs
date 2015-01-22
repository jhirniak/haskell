module Main where

main = putStrLn (show (sumI 1 1000000))

sumI :: Integer -> Integer -> Integer
sumI n m
  | n>m       = 0
  | otherwise = n + sumI (n+1) m
