module Main where

main = putStrLn (show (sumIS 1 1000000))

sumIS :: Integer -> Integer -> Integer
sumIS n m = accIS n m 0

accIS :: Integer -> Integer -> Integer -> Integer
accIS n m s
  | n>m       = s
  | otherwise = accIS (n+1) m $! (n+s)
