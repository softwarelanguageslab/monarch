{-# LANGUAGE NamedFieldPuns #-}
-- | Runs a configurable analysis on the given file
module Run.Analyzer(Options, options, main) where

import Domain.Scheme.CPDomain
import Options.Applicative
import Analysis.ModF
import Syntax.Scheme
import Data.Maybe
import qualified Data.Map as Map

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
main (Options filename) = do return ()
--   contents <- readFile filename
--   printResult $ analyseProgram $ undefineExp $ fromJust $ parseSchemeExp contents

