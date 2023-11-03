{-# LANGUAGE NamedFieldPuns #-}
-- | Runs a configurable analysis on the given file
module Run.Analyzer(Options, options, main) where

import Options.Applicative
import Analysis.Scheme.Simple
import Data.DMap

newtype Options = Options String deriving Show

-- lookupResult :: ModFState -> CPValue MonoPtrAdr MonoAdr
-- lookupResult ModFState { store, mainCmp } =
--    fromJust $ Map.lookup (RetAdr mainCmp) (_varSto store)
-- printResult :: ModFState -> IO ()
-- printResult = print . lookupResult

options :: Parser Options
options =
   Options <$> 
      strOption (long "filename" <> short 'f' <> help "the file to analyse") 

main :: Options -> IO ()
main (Options filename) = do 
     contents <- readFile filename
     putStrLn $ show (region @VariableAdr @V (runAnalysis contents))

