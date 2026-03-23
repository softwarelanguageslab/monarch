module Main where

import Language.PureActor

main :: IO ()
main = forever $ putStrLn . show . compileString . toString =<< getLine
