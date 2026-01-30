module Runnables.CoreErlang
  ( options,
    entrypoint,
  )
where

import Analysis.CoreErlang.Soter qualified as Soter
import Analysis.SimpleActor.Fixpoint.ModularModConc
import Analysis.SimpleActor.Fixpoint.SequentialModConc as Sequential
import Analysis.SimpleActor.Monad (MailboxLabel (..))
import CommandLine.Options
import CommandLine.Options qualified as Options
import CommandLine.Output qualified as Output
import Control.Exception
import Control.Monad (join, void)
import Control.Monad.Error.Class
import Control.Monad.Except
import Control.Monad.IO.Class
import Data.Aeson (ToJSON)
import Data.Bifunctor
import Data.Map qualified as Map
import Domain.Core.Count.BoundedCount qualified as Count
import GHC.Generics
import Options.Applicative
import Syntax.CoreErlang qualified as CoreErlang
import Syntax.CoreErlang.Soter qualified as Soter
import Syntax.SimpleActor.CoreToSimpleActor qualified as CoreToSimpleActor
import qualified Domain.Core.BoolDomain.Class as Domain
import System.Posix.Signals
import Control.Concurrent

---------------------------------------------------------------------
-- Command-line options
---------------------------------------------------------------------

data CoreErlangOptions = CoreErlangOptions
  { coreErlangMainMod :: String,
    coreErlangMainFun :: String,
    coreErlangInputOptions :: Options.InputOptions,
    coreErlangOutputOptions :: Options.OutputOptions
  }

-- | Parses the command-line arguments into a "CoreErlangOptions"
-- record type.
options :: Parser CoreErlangOptions
options =
  CoreErlangOptions
    <$> strOption (long "main-module" <> short 'm')
    <*> strOption (long "main-function")
    <*> Options.inputOptions
    <*> Options.outputOptions

---------------------------------------------------------------------
-- Entrypoint
---------------------------------------------------------------------

-- | Run the analyiss on a Core Erlang program described by the given options
analyzeOptions :: (MonadIO m, MonadError OutputAnalysisError m) => CoreErlangOptions -> m OutputAnalysisResult
analyzeOptions CoreErlangOptions {..} = do
  -- TODO: support more than one module, perhaps based on a directory
  -- of modules.
  let inputName = filename coreErlangInputOptions
  contents <- liftIO $ readFile inputName
  case CoreErlang.parseProgram inputName contents of
    Left err -> do
      liftIO $ putStrLn "Parse error:"
      throwError $ ParseError $ show $ CoreErlang.prettyErrorBundle err
    Right coreModule -> do
      let expr = CoreToSimpleActor.translateModules [coreModule] coreErlangMainMod coreErlangMainFun

      -- Initialize soter predicates
      let predicates = Soter.fromAttributes (CoreErlang.unAnn coreModule)
      let bounds = Map.fromList $ map (bimap MailboxLabel Count.zero) $ Map.toList $ Soter.extractBoundsPredicates predicates

      -- Run analysis
      (AnalysisResult res _ countMax) <- liftIO $ analyze' bounds Nothing expr

      -- Compute soter results
      let countOutMapping =
            Map.mapKeys getMailboxLabel $ Map.mapMaybe (\case Count.Count v _ -> Just v; _ -> Nothing) countMax
      let predicateHolds = map (Domain.isTrue . Soter.predicateHolds countOutMapping) predicates

      liftIO $ print countOutMapping
      liftIO $ print predicateHolds
      liftIO $ print (sum $ map (length . Map.toList . Sequential.cmpRes .  snd) $ Map.toList res)

      return $
        AnalysisOutput
          { reachableCoverableConditions = sum (map fromEnum predicateHolds),
            totalPredicates = length predicates
          }

-- | Set of signals we are interested in for recovering from particular set of resource limits.
--
-- This is currently set to only handle timeout signals so that we can exit before the actual hard timeout is reached and we are killed.
resourceSignals :: [Signal]
resourceSignals = [sigXCPU]

-- | Installs a handler for a specific signal
handleSignal :: IO () -> Signal -> IO ()
handleSignal act sig =
  void $ installHandler sig (Catch act) Nothing

-- | Executes the given IO action but adds the ability to terminate the process before the IO action is completed resulting in an `OutputAnalysisError`.
handleResourceLimits :: IO (Either OutputAnalysisError b) -> IO (Either OutputAnalysisError b)
handleResourceLimits act = do
  -- We run the given IO action in a seperate thread and synchronize on a shared MVar that will contain the result (i.e., the Either value).
  result <- newEmptyMVar
  lock <- newMVar ()
  
  tid <- forkIO (act >>= (\val-> takeMVar lock >> putMVar result val))

  mapM_ (handleSignal (takeMVar lock >> killThread tid >> putMVar result (Left $ TimeoutError))) resourceSignals 
  
  takeMVar result


entrypoint :: CoreErlangOptions -> IO ()
entrypoint opts@CoreErlangOptions {..} = do
  result <- handleResourceLimits (join . handler <$> try (runExceptT $ analyzeOptions opts))
  let output = Output.Output result
  Output.outputToJsonFile (Options.outputPath $ coreErlangOutputOptions) output
  Output.exit output
  where
    handler :: Either SomeException b -> Either OutputAnalysisError b
    handler = first (UncaughtExceptionError . show)

---------------------------------------------------------------------
-- Analysis Output
---------------------------------------------------------------------

-- | Serializable analysis result that can be read using other tools
data OutputAnalysisResult = AnalysisOutput
  { -- | The number of "uncoverable" annotations that are satisfied  (lower is better)
    reachableCoverableConditions :: !Int,
    totalPredicates :: !Int
  }
  deriving (Generic, Show)

-- | Possible errros encountered when running the analysis
data OutputAnalysisError
  = -- | error from the parsing step
    ParseError String
  | -- | a timeout encountered due to resource limits in the OS
    TimeoutError
  | -- | an uncaught (unexpected) exception
    UncaughtExceptionError String
  
  deriving (Generic, Show)

instance ToJSON OutputAnalysisError

instance ToJSON OutputAnalysisResult
