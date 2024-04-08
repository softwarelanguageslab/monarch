module Run.Python(main, Options, options) where

import Syntax.Python
import Options.Applicative
import Data.Maybe
import Analysis.Python.Fixpoint 

newtype Options = Options String 
   deriving Show

options :: Parser Options
options = Options <$> 
   strOption (long "filename" <> short 'f' <> help "Name of the file to parse")

--
-- hardcoded example 
--

prg :: String
prg = "1+1"

main :: Options -> IO ()
main (Options _) = 
   let Just parsed = parse "testje" prg 
       (sto1, sto2) = analyzeCP parsed 
    in putStrLn (show sto2)
