module Main where

-- |Main function
main = do
	putStrLn "what is your name?" >> getLine >>= putStrLn . ("hello, " ++)
