-- {-# LANGUAGE QuantifiedConstraints, FlexibleContexts, FlexibleInstances, AllowAmbiguousTypes, UndecidableInstances #-}
-- {-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE RankNTypes #-}

module Analysis.Python.Monad where --(PyM(..), PyIO(..), PyConfig(..), AnalysisConfig(..), module Analysis.Monad, runIO) where

import Lattice
import Domain.Core 
import Domain.Python
import Control.Monad.Join

import Analysis.Python.Syntax
import Analysis.Python.Objects

import Data.Map (Map)
import qualified Data.Map as Map 

type PyEnv = Map String VarAdr

type PyClo = ([PyPar], PyStm, PyEnv)
type PyPrm = forall m v . AnalysisM m v => [PyVal] -> PyLoc -> m PyVal

data Cmp = MainCmp
         | CallCmp PyStm PyEnv
         | LoopCmp PyExp PyStm PyEnv


class (JoinLattice v,
       BoolDomain v)
       =>
       PyDomain v where
   none :: v
   injectBln :: Bool -> v
   injectBln = inject -- from Booldomain
   injectInt :: Integer -> v
   injectClo :: PyClo -> v
   call :: AnalysisM m v => v 
                         -> (PyClo -> m PyVal) 
                         -> (PyPrm -> m PyVal) -- -> [PyRef] -> PyLoc
                         -> m PyVal

class (Monad m, JoinLattice v) => StoreM m a v | m a -> v where
   extend :: a -> v -> m ()
   update :: a -> v -> m ()
   lookup :: a -> m v

class (Monad m,
       MonadJoin m,
       EnvM m VarAdr PyEnv,
       StoreM m VarAdr PyVal,
       StoreM m ObjAdr v,
       PyDomain v)
       =>
       AnalysisM m v | m -> v where
   returnWith :: PyVal -> m a
   continue :: m a
   break :: m a
   callCmp :: Cmp -> m PyVal 


-- | Reading from an environment 
class EnvM m adr env | m -> env, m -> adr where
   -- | Lookup the address of the given identifier,
   -- may throw an exception if the identifier is not found 
   -- since it means that the program is not well-formed.
   lookupEnv :: String -> m adr
   -- | Extend the environment with the given list of bindings and run the computation
   -- given as an argument in it
   withExtendedEnv :: [(String, adr)] -> m a -> m a
   -- | Retrieves the current environment 
   getEnv :: m env
   -- | Runs function `f` on the environment and to compute the environment to execute `m` in
   withEnv :: {- f -} (env -> env) -> m a -> m a

class (EnvM m adr env) 
        => 
        PyM m env adr where 





















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
