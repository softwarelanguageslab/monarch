-- | Benchmarks for the ASE paper
module ASE.Benchmark where

-- Syntax
import Syntax.AST
import Syntax.Simplifier
import Syntax.Compiler

-- Analyses
import qualified Analysis.ASE.Smallstep as SmallStep
import qualified Analysis.ASE.WidenedStates as SmallStepWidened


-- Haskell-related
import Control.DeepSeq
import Control.Monad

benchmarkPrograms = [
      "games_snake.rkt",
      "games_tetris.rkt",
      "games_zombie.rkt",
      "mochi_fold-div.rkt",
      "mochi_hors.rkt",
      "mochi_hrec.rkt",
      "mochi_l-zipunzip.rkt",
      "mochi_map-foldr.rkt",
      "mochi_mappend.rkt",
      "mochi_mem.rkt",
      "mochi_mult.rkt",
      "mochi_neg.rkt",
      "mochi_nth0.rkt",
      "mochi_r-file.rkt",
      "mochi_r-lock.rkt",
      "mochi_reverse.rkt",
      "mochi_sum.rkt",
      "mochi_zip.rkt",
      "sergey_blur.rkt",
      "sergey_eta.rkt",
      "sergey_kcfa2.rkt",
      "sergey_kcfa3.rkt",
      "sergey_loop2.rkt",
      "sergey_mj09.rkt",
      "sergey_sat.rkt",
      "softy_append.rkt",
      "softy_cpstak.rkt",
      "softy_last-pair.rkt",
      "softy_last.rkt",
      "softy_length-acc.rkt",
      "softy_length.rkt",
      "softy_member.rkt",
      "softy_recursive-div2.rkt",
      "softy_subst.rkt",
      "softy_tak.rkt"
   ]

-- | Loads a program from disk, translates it to a simpler form amenable for verification, parses and compiles it
loadProgram :: String -> IO Exp
loadProgram = readFile >=> translate >=> return . either (error . ("error while parsing" ++)) id . parseFromString

-- | A polymorphic analysis result, no information about this 
-- analysis result is known, except that it can be inspected 
-- and evaluated using `deepseq`.
data AnalysisResult where  
   AnalysisResult :: NFData a => a -> AnalysisResult

analysisConfigurations :: [(String, Exp -> IO AnalysisResult)]
analysisConfigurations = concatMap (\k -> [
      ("smallstep, k = " ++ show k, fmap AnalysisResult . SmallStep.analyze k),
      ("widened per state, k = " ++ show k, fmap AnalysisResult . SmallStepWidened.analyze k)
   ]) [1..5]


-- | Run the timing benchmarks over the set of programs
benchmarkTime :: [String] -- ^ the programs to run the benchmark on
              -> String   -- ^ the name of the file to output the benchmark results to 
              -> IO ()
benchmarkTime = undefined

