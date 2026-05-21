module Runnables.SoundnessTesting (entrypoint, options) where

import Options.Applicative
import Control.Monad.Except (runExceptT)
import Analysis.SimpleActor.SoundnessTesting (runInterpreter)

data SoundnessOptions = SoundnessOptions
    { filename  :: String
    , timeoutMs :: Int
    }

options :: Parser SoundnessOptions
options = SoundnessOptions
    <$> strOption (long "file" <> short 'f' <> help "Input file to run under the concrete interpreter")
    <*> option auto (long "timeout" <> short 't' <> help "Timeout in milliseconds" <> value 30000 <> showDefault)

entrypoint :: SoundnessOptions -> IO ()
entrypoint SoundnessOptions { .. } = do
    result <- runExceptT (runInterpreter timeoutMs filename)
    case result of
        Left err    -> putStrLn $ "error: " ++ err
        Right trace -> print trace
