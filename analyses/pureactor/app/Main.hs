module Main where

import Language.PureActor
import Analysis.PureActor
import Text.Pretty.Simple
import Lucid
import Visualizer (renderSystem)

main :: IO ()
main = do
  contents <- readFileBS "programs/test/ping.pa"
  case compileString (decodeUtf8 @String contents) of
    Left err  -> print err
    Right expr -> do
      let sys = analyzeProgram expr
      pPrint sys
      renderToFile "system_visualization.html" (renderSystem sys)
      putStrLn "Visualization saved to system_visualization.html"
