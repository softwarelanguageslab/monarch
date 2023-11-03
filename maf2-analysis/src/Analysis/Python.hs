{-# LANGUAGE FlexibleInstances, FlexibleContexts, RankNTypes #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
-- | Construct analyses for Python
module Analysis.Python(analyzeProgram, intraAnalysis, evalTest, Adr(..), PyVlu) where

import Domain
import Analysis.Monad
import Analysis.Python.Monad
import Syntax.Python
import Data.Map (Map)
import Domain.Python.CPDomain
import Data.DMap
import Data.Functor.Identity
import Data.Function ((&))
import Analysis.Python.Semantics as Sem
import GHC.Generics
import Data.TypeLevel.Struct
import qualified Data.DMap as DMap
import Data.Maybe
import Analysis.IO
import Analysis.Python.Primitives

-- | Addresses
data Adr =  
   VarAdr (IdeLex SrcSpan) () | PrmAdr String | ObjAdr (IdeLex SrcSpan) deriving (Show, Eq, Ord, Generic)

instance Address Adr where
   type Vlu Adr = PyVlu

type PyVlu = CPValue Adr SrcSpan

--
-- Components
-- 

-- | Definition of a component
-- * Main: the entrypoint of a component
-- * Call: corresponds to a function call
data Component a =
    Main (Stmt a Micro)
  | Call (Stmt a Micro)


--
-- State
--

type State = ()

--
-- Configuration
-- 

runConfig :: forall c l m a . (AnalysisConfig () Adr m) a -> m a
runConfig (AnalysisConfig m) = m

--
-- Shorthands
--

type Env = Map String Adr
type Sto = DMap '[Adr :-> PyVlu]

--
-- Intra
-- 


intraAnalysis :: Env -> Sto -> Stmt SrcSpan Micro -> ((Maybe PyVlu, OutputIO PyVlu), Sto)
intraAnalysis env sto mod = undefined
--   Sem.eval mod            &
--   runEval' @PyVlu evals   &
--   runConfig               &
--   runErr'                 &
--   runEnv env              &
--   runIO emptyOutputIO     &
--   runSto sto              &
--   runAlloc VarAdr         & 
--   runCtx ()               &
--   runCap                  &
--   runIdentity

analyzeComponent :: Component a -> State -> (Maybe PyVlu, State)
analyzeComponent _ st = undefined

analyzeProgram :: Stmt a Micro -> (Maybe PyVlu, State)
analyzeProgram = undefined

--
-- Test
--

evalTest :: String -> (Maybe PyVlu, OutputIO PyVlu)
evalTest = undefined
-- evalTest :: String -> (Maybe PyVlu, OutputIO PyVlu)
-- evalTest = fst . intraAnalysis env sto . programStmt . fromJust . parse "test.py"
--    where env = initialEnv PrmAdr   
--          sto = DMap.fromMap $ initialSto @PyVlu env
