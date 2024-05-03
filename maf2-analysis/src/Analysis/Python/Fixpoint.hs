{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}

module Analysis.Python.Fixpoint where

import Lattice
import Analysis.Python.Common
import Domain.Python.Objects (PyObjCP)
import Domain.Python.Objects as PyObj  
import Domain.Python.World
import Analysis.Python.Semantics hiding (call)
import Analysis.Python.Monad
import Analysis.Python.Objects
import Analysis.Monad hiding (eval, call)
import Analysis.Monad.ComponentTracking hiding (has)

import Domain.Python.Syntax
import Domain hiding (isTrue)

import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import Prelude hiding (init, read)
import Control.Monad.Reader
import Control.Monad.Identity
import Control.Monad.Escape
import Control.Monad.DomainError
import Data.Function ((&))
import Lattice (EqualLattice (..))
import Control.Lens (Field1(_1))
import Analysis.Python.Escape
import Control.Monad.Join (condsCP)

type family MonadStack (ts :: [(* -> *) -> * -> *]) (m :: * -> *) where
    MonadStack '[] m = m 
    MonadStack (t ': tr) m = t (MonadStack tr m)

---
--- Python analysis fixpoint algorithm
---

type IntraT m = MonadStack '[
                    MayEscapeT (Set PyEsc),
                    AllocT PyLoc () ObjAdr,
                    EnvT PyEnv,
                    CtxT (),
                    JoinT,
                    CacheT
                ] m 

type AnalysisM m obj = (PyObj' obj, 
                        StoreM m VarAdr PyVal,
                        StoreM m ObjAdr obj,
                        MapM PyCmp PyRes m,
                        ComponentTrackingM m  PyCmp,
                        DependencyTrackingM m PyCmp VarAdr,
                        DependencyTrackingM m PyCmp ObjAdr,
                        DependencyTrackingM m PyCmp PyCmp,
                        WorkListM m PyCmp)

type PyCmp = Key (IntraT Identity) PyBdy
type PyRes = Val (IntraT Identity) PyVal 

intra :: forall m obj . AnalysisM m obj => PyCmp -> m ()
intra cmp = cache @(IntraT (IntraAnalysisT PyCmp m)) cmp evalBdy
                & runAlloc (const . allocPtr)
                & runIntraAnalysis cmp 
                

inter :: forall m obj . AnalysisM m obj => PyPrg -> m () 
inter prg = do init                                 -- initialize Python infrastructure
               add ((Main prg, initialEnv), ())     -- add the main component to the worklist
               iterateWL intra                      -- start the analysis 

analyze :: forall obj . PyObj' obj => PyPrg -> (Map PyCmp PyRes, Map ObjAdr obj, Map VarAdr PyVal)
analyze prg = (rsto, osto, vsto)
    where (((_,vsto),osto),rsto) = inter prg
                                    & runWithStore @(Map VarAdr PyVal) @VarAdr
                                    & runWithStore @(Map ObjAdr obj) @ObjAdr
                                    & runWithMapping @PyCmp
                                    & runWithDependencyTracking @PyCmp @VarAdr
                                    & runWithDependencyTracking @PyCmp @ObjAdr
                                    & runWithDependencyTracking @PyCmp @PyCmp
                                    & runWithComponentTracking @PyCmp
                                    & runWithWorkList @(Set PyCmp)
                                    & runIdentity

analyzeREPL :: forall obj . PyObj' obj
    => IO PyPrg         -- a read function
    -> ([obj] -> IO ()) -- a display function
    -> IO ()
analyzeREPL read display = 
    void $ (init >> repl) 
            & runWithStore @(Map VarAdr PyVal) @VarAdr
            & runWithStore @(Map ObjAdr obj) @ObjAdr
            & runWithMapping @PyCmp
            & runWithDependencyTracking @PyCmp @VarAdr
            & runWithDependencyTracking @PyCmp @ObjAdr
            & runWithDependencyTracking @PyCmp @PyCmp
            & runWithComponentTracking @PyCmp
            & runWithWorkList @(Set PyCmp)
    where repl = forever $ do prg <- liftIO read
                              let cmp = ((Main prg, initialEnv), ())
                              add cmp 
                              iterateWL intra 
                              res <- justOrBot <$> Analysis.Monad.get cmp 
                              traverse (mapM lookupAdr . Set.toList . addrs >=> liftIO . display) res                               

---
--- CP instantiation
---

type PyObjCP' = PyObjCP PyVal ObjAdr PyClo

analyzeCP :: PyPrg -> (Map PyCmp (MayEscape (Set PyEsc) PyVal), Map ObjAdr PyObjCP', Map VarAdr PyVal)
analyzeCP = analyze @PyObjCP'