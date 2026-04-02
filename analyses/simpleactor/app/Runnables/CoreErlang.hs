{-# LANGUAGE PackageImports #-}
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
import qualified System.FilePath.Glob as Glob
import System.Directory (doesDirectoryExist)
import "extra" Control.Monad.Extra

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

-- | Recursively enumerate the contents of the directory in order to
-- find Erlang core files (*.core)
directoryContents :: String -- ^ the path to the directory
                  -> IO [String]
directoryContents = Glob.globDir1 (Glob.compile "**/*.core")

-- | Run the analyis on a Core Erlang program described by the given options
analyzeOptions :: (MonadIO m, MonadError OutputAnalysisError m) => CoreErlangOptions -> m OutputAnalysisResult
analyzeOptions CoreErlangOptions {..} = do
        -- Retrieve the path to the input, can be a file or directory
        let inputName = filename coreErlangInputOptions
        -- If the input is a directory then load all Core Erlang modules
        -- from that directory otherwise use the filename as the first and only module.
        files <- liftIO $ ifM (doesDirectoryExist inputName)
                              (directoryContents inputName)
                              (pure [inputName])
        -- Parse the Core Erlang code in the Core Erlang AST
        parsedFiles <- mapM (\filename -> liftIO (readFile filename) >>= parseProgram filename) files
        -- Translate Core Erlang into the SimpleActor language, the "coreErlangMainMod" and
        -- "coreErlangMainFun" originate from the "CoreErlangOptions" and are passed by the user
        -- as command line arguments.
        let expr = CoreToSimpleActor.translateModules parsedFiles coreErlangMainMod coreErlangMainFun
        -- Collect all soter predicates ... 
        let predicates = foldMap (Soter.fromAttributes . CoreErlang.unAnn) parsedFiles
        -- ... and find suitable bounds for each variable in the predicates:
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

  where parseProgram filename =
           -- parse the contents and lift a potential error in a suitable error type
           liftEither . first (ParseError . show . CoreErlang.prettyErrorBundle) . CoreErlang.parseProgram filename

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
