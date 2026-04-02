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
      let (finalSys, sysTrace) = analyzeProgram' expr
      let allSystems = sysTrace
      pPrint finalSys
      renderToFile "system_visualization.html" (renderSystem allSystems)
      putStrLn "Visualization saved to system_visualization.html"
