{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
module Analysis.Python.Monad (
  EnvM(..),
  StoreM(..),
  AllocM(..),
  allocVal,
  deref, 
  deref', 
  PyM(..),
  PyCmp(..),
  pyAlloc,
  pyDeref,
  pyDeref',
) where

import Lattice
import Domain.Class 
import Domain.Python.Objects 
import Control.Monad.Join
import Control.Monad.DomainError
import Analysis.Python.Syntax
import Analysis.Python.Common 

import Analysis.Monad
import Domain.Python.World 

import Prelude hiding (lookup)
import Data.Set (Set)
import qualified Data.Set as Set 
import qualified Data.Map as Map 
import Control.Monad.Layer (MonadLayer(..))
import Domain.Core.SeqDomain (CPList)

--
-- TODO: reuse existing for these?
--

class (Monad m, JoinLattice v) => StoreM m a v | m a -> v where
  lookup :: a -> m v
  extend :: a -> v -> m ()
  update :: a -> {- strong update -} (v -> v) -> {- weak update -} (v -> v) -> m ()
  update' :: a -> v -> m ()
  update' a v = update a (const v) (`join` v)

instance (Monad t, JoinLattice v, StoreM (Lower t) a v, MonadLayer t) => StoreM t a v where
   extend adr = upperM . extend adr
   update adr fs fw = upperM $ update adr fs fw 
   lookup = upperM . lookup

class (Monad m) => AllocM m e a | m e -> a where
  alloc :: e -> m a

allocVal :: (StoreM m a v, AllocM m e a) => e -> v -> m a
allocVal e v = do adr <- alloc e
                  extend adr v
                  return adr

deref :: (StoreM m a v, JoinLattice r, MonadJoin m) => (a -> v -> m r) -> Set a -> m r 
deref f = mjoinMap (\a -> lookup a >>= f a)

deref' :: (StoreM m a v, MonadJoin m) => Set a -> m v 
deref' = mjoins . map lookup . Set.toList

--
-- The Python monad 
--

data PyCmp = MainCmp PyPrg  
           | LoopCmp PyExp PyStm PyEnv 
           | CallCmp PyStm PyEnv 
  deriving (Eq, Ord, Show)

class (Monad m,
       MonadJoin m,
       MonadEscape m,
       -- value configuration
       PyObj obj,
       Ref obj ~ PyVal,
       Adr obj ~ ObjAdr,
       Clo obj ~ PyClo, 
       Abs obj TupPrm ~ CPList PyVal,
       Domain (Esc m) PyError,
       Domain (Esc m) DomainError,
       AllocM m PyLoc ObjAdr,
       EnvM m VarAdr PyEnv, 
       StoreM m ObjAdr obj,
       StoreM m VarAdr PyVal)
       =>
       PyM m obj | m -> obj where
  returnWith :: PyVal -> m ()
  break :: m ()
  continue :: m () 
  callCmp :: PyCmp -> m PyVal 

pyDeref :: (JoinLattice a, PyM m obj) => (ObjAdr -> obj -> m a) -> PyVal -> m a
pyDeref f = deref f . addrs 

pyDeref' :: PyM m obj => PyVal -> m obj
pyDeref' = deref' . addrs 

pyAlloc :: PyM m obj => PyLoc -> obj -> m PyVal
pyAlloc loc = fmap injectAdr . allocVal loc



-- import Data.Kind ( Type )
-- import Domain.Python ( PyDomain(Env) )
-- import Control.Monad.Join ( MonadJoin(..), MonadJoinAlternative(..) )
-- import Analysis.Monad hiding (call)
-- import Syntax.Python
-- import Control.Monad.Trans
-- import Control.Monad.State hiding (mzero)
-- import Control.Monad.Layer
-- import Domain
-- import qualified Data.Set as Set
-- import Analysis.IO (IOModel, IOHandle, IOVal, hstdout)
-- import qualified Analysis.IO as AIO
-- import Domain.Python.ClassDomain
-- import Data.Set
-- import Data.Functor.Identity

-- --
-- -- IO
-- --

-- -- | IO model
-- class PyIO m v where
--    -- | Write a value to a specific IO handle.
--    write :: IOHandle v -- ^ The IO handle to write to
--          -> v -- ^ The value to write to the IO handle
--          -> m ()

--    -- | Read a value from a specific IO handle
--    read :: v            -- ^ The IO handle to read from
--         -> m (IOVal v)  -- ^ The result of reading from the IO handle

--    -- | An IO-handle to standard output
--    stdout :: m (IOHandle v)

-- instance {-# OVERLAPPING #-} (PyDomain v o a, MonadJoin m, IOModel mio v v) => PyIO (StateT mio m) v where
--    write hdl v = do
--       wrld  <- get
--       wrld' <- Set.foldr (mjoin . pure) mzero (AIO.write wrld hdl v)
--       put wrld'
--       return ()
--    stdout = gets hstdout

-- instance (MonadLayer m, PyIO (Lower m) v) => PyIO m v where
--    write hdl =  upperM . write hdl
--    stdout    =  upperM stdout

-- runIO :: forall v wrld m a  . IOModel wrld v v => wrld -> (StateT wrld m) a -> m (a, wrld)
-- runIO = flip runStateT

-- --
-- -- Configuration monad
-- -- 

-- -- | Configuration for the Python semantics
-- class PyConfig (m :: Type -> Type) where
--    type PyAdr m :: Type
--    type PyCtx m :: Type
--    type PyObjAdr m :: Type

-- --
-- -- Python analysis monad
-- --

-- -- | Context in which the Python semantics is expressed
-- class (PyConfig m,
--        Analysis.Monad.EnvM m (PyAdr m) (Env v),
--        MonadJoin m,
--        MonadJoinAlternative m,
--        MonadDomainError m,
--        PyDomain v (PyObjAdr m) a,
--        PyIO m v,
--        StoreM m (PyAdr m),
--        StoreM m (PyObjAdr m),
--        OPtr (Vlu (PyObjAdr m)) ~ Set (PyObjAdr m),
--        Vlu (PyAdr m) ~ v,
--        AllocM m (IdeLex a) Identity (PyAdr m),
--        AllocM m (IdeLex a) Identity (PyObjAdr m),
--        Analysis.Monad.EvalM m onlogisch (Stmt SrcSpan Micro),
--        Analysis.Monad.EvalM m v (Exp SrcSpan Micro)) => PyM m v | m -> v where

--    -- | Return from the current basic block with the given value
--    returnWith :: v -> m b
--    -- | Allocate a variable 
--    allocVar ::  IdeLex a -> m (PyAdr m)
--    allocVar = alloc @_ @_ @Identity
--    -- | Evaluate the given expression as the body of a function
--    call :: Stmt a Micro -> m v
--    -- | Dereference the given object pointer 
--    derefObjPtr :: JoinLattice b => (PyObjAdr m -> Vlu (PyObjAdr m) -> b) -> v -> m b
--    derefObjPtr = undefined

-- --
-- -- Configuration
-- --

-- newtype AnalysisConfig (ctx :: Type) (adr :: Type) m a = AnalysisConfig (m a) deriving (Monad, Applicative, Functor)
-- instance MonadTrans (AnalysisConfig ctx adr) where
--    lift = AnalysisConfig

-- instance (Monad m) => MonadLayer (AnalysisConfig ctx adr m) where
--    type Lower (AnalysisConfig ctx adr m) = m
--    upperM = lift
--    lowerM f (AnalysisConfig m) = AnalysisConfig $ f m

-- instance (MonadJoin m) => MonadJoin (AnalysisConfig ctx adr m) where
--    mjoin (AnalysisConfig ma) (AnalysisConfig mb) = AnalysisConfig $ mjoin ma mb
--    mzero = lift mzero

-- type family Adr' m where
--    Adr' (AnalysisConfig _ adr _) = adr
--    Adr' m = (Adr' (Lower m))

-- type family Ctx' m where
--    Ctx' (AnalysisConfig ctx _ _) = ctx
--    Ctx' m = (Ctx' (Lower m))

-- instance PyConfig m where
--    type PyAdr m = Adr' m
--    type PyCtx m = Ctx' m
