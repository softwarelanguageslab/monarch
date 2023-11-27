{-# LANGUAGE NamedFieldPuns, LambdaCase #-}
-- | Runs a configurable analysis on the given file
module Run.Analyzer(Options, options, main) where

import Options.Applicative
import Analysis.Scheme.Simple
import Data.DMap
import qualified Data.DMap as DMap
import Text.Printf
import Data.HashMap.Strict (HashMap)
import qualified Data.HashMap.Strict as Map
import Data.List (intercalate)
import Analysis.Monad
import Analysis.Scheme
import qualified Analysis.Scheme.Semantics as Semantics
import Syntax.Scheme
import Data.Map (Map)
import qualified Data.Map as Map2
import Data.Functor.Identity
import Data.Function ((&))
import Analysis.Monad
import Data.Maybe
import Domain.Scheme hiding (Exp)

newtype Options = Options String deriving Show

printSto :: HashMap VariableAdr V -> String
printSto m =
   intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrs
   where adrs   = Map.toList $ Map.filterWithKey (\case { Prm _ -> const False ; _ -> const True }) m
         indent = maximum (map (length . show . fst) adrs) + 5


options :: Parser Options
options =
   Options <$>
      strOption (long "filename" <> short 'f' <> help "the file to analyse")

evalSimple :: Exp -> [DSto K V]
evalSimple e = let res = Semantics.eval @_ @V e 
                      & runEvalT
                      & runErr
                      & runCallBottomT
                      & runEnv env
                      & runSto sto
                      & runAlloc @PaAdr (allocPai @K @_ @V)
                      & runAlloc @VeAdr (allocVec @K @_ @V)
                      & runAlloc @StAdr (allocStr @K @_ @V)
                      & runAlloc @VrAdr (allocVar @K @_ @V) 
                      & runNonDetT
                      & runCtx []
                      & runIdentity
               in map snd res
             where env = analysisEnvironment
                   sto = analysisStore @V env

main :: Options -> IO ()
main (Options filename) = do
     contents <- readFile filename
     let program = fromJust $ parseString contents
     putStr $ intercalate "\n-------\n" $ map (printSto  . (region @VariableAdr @V)) (evalSimple program)

