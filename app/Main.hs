module Main where

import System.IO (isEOF)

main :: IO ()
main = do
    putStrLn "Hello, Haskell!"
    putStrLn "Any Numbers?"
    sumNumbers 0

sumNumbers :: Int -> IO ()
sumNumbers acc = do
    eof <- isEOF
    if eof
        then putStrLn $ "Sum: " ++ show acc
        else do
            input <- getLine
            let number = read input :: Int
            sumNumbers (acc + number)
