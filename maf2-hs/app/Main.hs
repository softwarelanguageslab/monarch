{-# LANGUAGE NamedFieldPuns #-}
module Main (main) where


import qualified Entrypoints


-- | Benchmark the given set of parsed programs, and attach the given names to them
-- benchmark :: [Exp] -> [String] -> IO ()
-- benchmark exs names =
--    defaultMain (zipWith (\name ex -> bench name $ whnf analyseProgram ex) names exs)
-- 
-- main' :: IO ()
-- main' = do
--    contents <- mapM readFile allBenchmarks
--    benchmark
--       (map (undefineExp . fromJust . parseSchemeExp) contents)
--       allBenchmarks
-- 

main :: IO ()
main = Entrypoints.run
