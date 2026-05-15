module Runnables.CompareCoverage (compareCoverageCmd, compareCoverageOptions) where

import Options.Applicative
import Syntax.Scheme.Parser (SExp(..), parseSexp)
import qualified Data.Set as Set
import System.IO (hPutStrLn, stderr)
import System.Exit (exitFailure)
import System.Directory (makeAbsolute)

------------------------------------------------------------
-- Options
------------------------------------------------------------

data CompareCoverageOptions = CompareCoverageOptions
  { analysisCoverageFile :: FilePath
  , racketCoverageFile   :: FilePath
  } deriving (Show, Eq, Ord)

compareCoverageOptions :: Parser CompareCoverageOptions
compareCoverageOptions = CompareCoverageOptions
  <$> strOption (long "analysis-coverage" <> short 'a' <> help "File containing [coverage] lines from the analysis")
  <*> strOption (long "racket-coverage"   <> short 'r' <> help "File produced by run-coverage.sh (.coverage)")

------------------------------------------------------------
-- Parsing
------------------------------------------------------------

type CovEntry = (FilePath, Int)

-- Parse a single S-expression entry of the form ("filename" lineno #t/#f)
-- Returns Nothing if the entry is irrelevant (covered? = #f).
parseRacketEntry :: SExp -> Either String (Maybe CovEntry)
parseRacketEntry sexp = case sexp of
  (Pai (Str file _) (Pai (Num lineno _) (Pai (Bln covered _) (SNil _) _) _) _) ->
    Right $ if covered then Just (file, fromInteger lineno) else Nothing
  _ -> Left $ "unexpected coverage entry: " ++ show sexp

-- Parse a single S-expression entry of the form ("filename" lineno)
parseAnalysisEntry :: SExp -> Either String CovEntry
parseAnalysisEntry sexp = case sexp of
  (Pai (Str file _) (Pai (Num lineno _) (SNil _) _) _) ->
    Right (file, fromInteger lineno)
  _ -> Left $ "unexpected analysis coverage entry: " ++ show sexp

parseEntries :: (SExp -> Either String (Maybe a)) -> FilePath -> String -> Either String [a]
parseEntries parseOne label content =
  case parseSexp content of
    Left err -> Left $ "parse error in " ++ label ++ ": " ++ err
    Right sexps -> fmap (concatMap toList) (mapM parseOne sexps)
  where toList Nothing  = []
        toList (Just x) = [x]

------------------------------------------------------------
-- Comparison
------------------------------------------------------------

compareCoverageCmd :: CompareCoverageOptions -> IO ()
compareCoverageCmd CompareCoverageOptions{..} = do
  racketRaw   <- readFile racketCoverageFile
  analysisRaw <- readFile analysisCoverageFile

  racketCovered <- case parseEntries parseRacketEntry racketCoverageFile racketRaw of
    Left err -> hPutStrLn stderr err >> exitFailure
    Right es -> Set.fromList <$> mapM (\(f, l) -> (, l) <$> makeAbsolute f) es

  analysisVisited <- case parseEntries (fmap Just . parseAnalysisEntry) analysisCoverageFile analysisRaw of
    Left err -> hPutStrLn stderr err >> exitFailure
    Right es -> Set.fromList <$> mapM (\(f, l) -> (, l) <$> makeAbsolute f) es

  -- Restrict to files the analysis actually considered
  let analysisFiles          = Set.map fst analysisVisited
      racketInScope          = Set.filter (\(f, _) -> Set.member f analysisFiles) racketCovered
      missing                = Set.difference racketInScope analysisVisited

  putStrLn $ "Racket covered lines (in analysis scope): " ++ show (Set.size racketInScope)
  putStrLn $ "Analysis visited lines (in analysis scope): " ++ show (Set.size (Set.intersection analysisVisited racketInScope))

  if Set.null missing
    then putStrLn "\nOK: analysis covers at least all lines covered by Racket."
    else do
      putStrLn $ "\nFAIL: " ++ show (Set.size missing) ++ " line(s) covered by Racket but NOT visited by the analysis:"
      mapM_ (\(f, l) -> putStrLn $ "  " ++ f ++ ":" ++ show l) (Set.toAscList missing)
      exitFailure
