{-# LANGUAGE UndecidableInstances #-}
module Analysis.Symbolic where

import Analysis.Monad 
import Syntax.Scheme
import Analysis.Symbolic.Monad
import qualified Analysis.Symbolic.Semantics as Symbolic
import Control.Monad.Layer
 

------------------------------------------------------------
-- Evaluation function
------------------------------------------------------------

newtype SymbolicEvalT m v a = SymbolicEvalT (m a) deriving (Applicative, Functor, Monad)

instance (Monad m) => MonadLayer (SymbolicEvalT m v) where   
   type Lower (SymbolicEvalT m v) = m
   upperM = SymbolicEvalT 
   lowerM f (SymbolicEvalT m) = SymbolicEvalT (f m)

instance SymbolicM (SymbolicEvalT m v) v => EvalM (SymbolicEvalT m v) v Exp where  
   eval = Symbolic.eval

------------------------------------------------------------
-- Domain instantation
------------------------------------------------------------

type Vlu = ()
type Sto = ()

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

-- | Simple intra-analysis
simpleAnalysis :: Exp -> (Vlu, Sto)
simpleAnalysis = undefined

