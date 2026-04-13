module Main(main) where

import Language.PureActor
import Analysis.PureActor
import Text.Pretty.Simple
import Lucid
import Visualizer (renderSystem)
import Domain.PureActor (ActorRef)
import qualified Analysis.PureActor.Mailbox.Graph.Dot as Dot
import qualified Data.Map.Lazy as Map

-- | Renders the mailbox abstraction of each actor in the system to a DOT file for visualization with Graphviz.
renderMailboxesToDot :: String -- ^ string to prefix the output file with 
                     -> Map ActorRef MB
                     -> IO ()
renderMailboxesToDot prefix = mapM_ (uncurry renderMailbox) . Map.toList
    where
        renderMailbox actorRef mb = do
            let mailboxName = "mailbox_" <> show actorRef
                dotContent = Dot.render mb
             in writeFile (toString $ "output/" ++ prefix ++ mailboxName ++ ".dot") (toString dotContent)

-- | Renders the mailbox abstraction for each step in the analysis trace to a DOT file for visualization with Graphviz.
-- The files are numbered sequentially to reflect the order of the trace.
renderTraceMailboxesToDot :: [Map ActorRef MB] -> IO ()
renderTraceMailboxesToDot mailboxTrace = mapM_ renderStep (zip [0..] mailboxTrace)
    where
        renderStep :: (Int, Map ActorRef MB) -> IO ()
        renderStep (stepNum, mbs) = do
            renderMailboxesToDot ("trace_step_" ++ show stepNum ++ "_") mbs

main :: IO ()
main = do
  contents <- readFileBS "programs/test/ping.pa"
  case compileString (decodeUtf8 @String contents) of
    Left err  -> print err
    Right expr -> do
      let (finalSys, sysTrace) = analyzeProgram' expr
      let allSystems = sysTrace
      pPrint finalSys
      renderToFile "output/system_visualization.html" (renderSystem allSystems)
      renderMailboxesToDot "" (_mailboxes finalSys)
      renderTraceMailboxesToDot (map _mailboxes sysTrace)
      putStrLn "Visualization saved to system_visualization.html"
