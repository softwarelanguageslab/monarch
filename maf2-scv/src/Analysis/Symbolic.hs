{-# LANGUAGE UndecidableInstances #-}
module Analysis.Symbolic where

import Analysis.Monad 
import Syntax.Scheme
import Analysis.Symbolic.Monad
import Analysis.Monad
import qualified Analysis.Symbolic.Semantics as Symbolic
import Analysis.Scheme.Simple
import Analysis.Scheme hiding (Sto)
import Analysis.Scheme.Store
import Control.Monad.Layer
import Domain.Symbolic.CPDomain
import Domain.Scheme.Store
import qualified Data.Map as Map
import Data.Function ((&))
import Data.Functor.Identity
import Data.Maybe (fromJust)
 
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

runSymbolicEvalT :: SymbolicEvalT m v a -> m a
runSymbolicEvalT (SymbolicEvalT m) = m

------------------------------------------------------------
-- Domain instantation
------------------------------------------------------------

type Vlu = CPSymbolicValue PointerAdr VariableAdr Exp
type Sto = DSto K Vlu

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

-- | Simple intra-analysis
simpleAnalysis :: Exp -> (Vlu, Sto)
simpleAnalysis e = 
                  let ((v, _), store') = Symbolic.eval e
                                         & runSymbolicEvalT 
                                         & runErr
                                         & runCallBottomT
                                         & runStoreT @VrAdr (values  store)
                                         & runStoreT @StAdr (strings store)
                                         & runStoreT @PaAdr (pairs   store)
                                         & runStoreT @VeAdr (vecs    store)
                                         & combineStores
                                         & runAlloc @PaAdr PointerAdr
                                         & runAlloc @VeAdr PointerAdr
                                         & runAlloc @StAdr PointerAdr
                                         & runAlloc @VrAdr Adr
                                         & runCtx []
                                         & runEnv env 
                                         & runIdentity
                  in (fromJust v, store')
    where env    = analysisEnvironment
          store  = analysisStore @Vlu env

