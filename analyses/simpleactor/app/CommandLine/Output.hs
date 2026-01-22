-- | Provides function to output an analysis result to a JSON file
module CommandLine.Output
  ( outputToJsonFile,
    Output (..),
    exit
  )
where

import Data.Aeson (ToJSON, object, (.=))
import Data.Aeson qualified as Aeson
import Data.Aeson.Key qualified as K
import System.Exit (exitFailure, exitSuccess)

-- | Outputs the given data type to a JSON object and writes it to the given file
outputToJsonFile :: (ToJSON a) => FilePath -> a -> IO ()
outputToJsonFile = Aeson.encodeFile

-- | Represents the outcome of an analysis which is either a failure with an error message (Left)
-- or the analysis result (Right).
--
-- We do not really care about the structure of the output of an analysis (this is up to the specific analysis),
-- external tools must look at the analysis output types (usually defined in 'Runnables') to determine what the
-- expect schema of the output JSON is.
newtype Output a b = Output (Either a b)

instance (ToJSON a, ToJSON b) => ToJSON (Output a b) where
  toJSON (Output v) =
    case v of
      Left l -> object [K.fromString "ok" .= False, K.fromString "value" .= l]
      Right r -> object [K.fromString "ok" .= True, K.fromString "value" .= r]


-- | Terminates the program with a specific error code depdending on the result
exit :: Output a b ->  IO ()
exit (Output o) =
  case o of { Left _ -> exitFailure ; Right _ -> exitSuccess }

