{-# LANGUAGE LambdaCase #-}

module Run.SchemeCounting where 

import Options.Applicative
import Analysis.Scheme.Simple
import Text.Printf
import Data.List (intercalate)
import Data.Map (Map)
import qualified Data.Set as Set
import Analysis.Scheme.Store ()
import qualified Data.Map as Map
import Domain.Scheme.Store
import Data.Print
import Analysis.Scheme (AnlRes)
import Data.TypeLevel.HMap as HMap (size)
import Domain.Scheme.Modular (getSchemeVal)
import Benchmark.Scheme.Programs

printSto :: Map VariableAdr (StoreVal V) -> String
printSto m =
   intercalate "\n" $ map (\(k,v) -> printf "%*s | %s" indent (show k) (show v)) adrs
   where adrs   = Map.toList $ Map.filterWithKey (\case { PrrAdr _ -> const False ; _ -> const True }) m
         indent = maximum (map (length . show . fst) adrs) + 5



values :: AnlRes V -> Map VariableAdr (StoreVal V)
values (sto, _) = sto

analyzeFile :: String -> IO (Map VariableAdr (StoreVal V))
analyzeFile filename = do
    contents <- readFile filename
    let sto = values (runAnalysis contents)
    -- putStrLn $ printSto sto
    -- putStrLn filename
    return sto

getCount :: StoreVal V -> Int 
getCount stoval = 
    let val = Set.toList $ varVals stoval 
        count [] = 0 
        count [v] = HMap.size $ getSchemeVal v
    in count val

countFile :: String -> IO [Int]
countFile filename = do 
    sto <- analyzeFile filename 
    let vals = map snd $ Map.toList $ Map.filterWithKey (\case { PrrAdr _ -> const False ; _ -> const True }) sto 
    let counts = map getCount vals
    return counts 

totalCount :: [Int] -> Map Int Int 
totalCount counts = foldr (\n m -> Map.insertWith (+) n 1 m) Map.empty counts

countBenchmarks :: IO (Map Int Int)
countBenchmarks = do 
    counts <- sequence $ foldr (\benchmark prevCount -> prevCount ++ [countFile benchmark]) [] benchmarks 
    return $ totalCount (concat counts)

benchmarks = allBenchmarks

main ::  IO ()
main = do 
    counts <- countBenchmarks 
    Prelude.print counts