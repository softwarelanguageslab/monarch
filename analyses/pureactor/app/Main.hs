module Main where

import Language.PureActor
import Analysis.PureActor

main :: IO ()
main =
  forever $ (print . second (runEvalEmpty . eval @NonDet) . compileString . toString) =<< getLine
