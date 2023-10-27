{-# LANGUAGE FlexibleContexts, FlexibleInstances, UndecidableInstances, AllowAmbiguousTypes #-}
{-# LANGUAGE FunctionalDependencies, ScopedTypeVariables #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
-- | This module provides monadic operations shared between many analyses.
--
-- To make instantiations for combinations of these typeclasses easier, this module also provides an abstraction based on Monad **layers**.
-- These layers corresponds to monads in a monad transformer stack. However, since `MonadTrans` lacks a method for peeling away a single layer
-- from the monad transformer stack, the `MonadLayer` typeclass is used instead. 
--
-- We combine these layers with the `Cap` monad which collects the capabilities of the monad stack into a typelevel list and combines them
-- with monad stack itself. The advantage of this is that we do need to create additional `newtype`s for each element in the monad stack.
-- Instead, we pair the element in the monad stack with a capbility which can be used to distinguish multiple monads of the same type from each-other. 
--
-- To ensure that layers and capabilities remain paired, each layer should correspond to exactly one capability in the list of capabilities. 
--
module Analysis.Monad(
 -- Typeclass interfaces
 EvalM(..),
 StoreM(..),
 EnvM(..),
 AllocM(..),
 CtxM(..),
 CallM(..),
 deref,
 -- Interpretations
 runSto,
 runEnv,
 runCtx,
 runErr,
 runErr',
 runAlloc,
 -- Auxilary type aliases
 SEvalM,
) where

import Analysis.Environment
import Control.Monad.Reader hiding (mzero)
import Control.Monad.Join
import Control.Monad.State hiding (mzero)
import Syntax.Scheme.AST
import Data.Set (Set)
import qualified Data.Set as Set
import Data.TypeLevel.List
import Data.DMap
import Domain
import Analysis.Store hiding (lookupSto, extendSto, updateSto)
import qualified Analysis.Store as Store
import Control.Monad.Layer
import Control.Monad.Trans.Maybe
import Control.Monad.Writer hiding (mzero)
import Control.Monad.Error

----------------------------------------------------------------------------------------------------
-- Typeclasses for monadic analysis functionality
----------------------------------------------------------------------------------------------------

-- | Reading from an environment 
class (Environment env adr) => EnvM m adr env | m -> env, m -> adr where
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
   -- | Runs `m` in the context of the value produced by `(ctx -> ctx)`.

-- | Manipulating the context of the current abstract state
class CtxM m ctx | m -> ctx where
   -- | Changes the current context for the given subcomputation
   withCtx  :: (ctx -> ctx) -> m a -> m a
   -- | Retrieves the current context
   getCtx    :: m ctx

--
-- Store
--

-- | Lookup
lookups :: (JoinLattice a, MonadJoin m) => (adr -> m v) -> (adr -> v -> m a) -> Set adr -> m a
lookups look f = Set.fold (mjoin . deref) Control.Monad.Join.mzero
      where deref adr = look adr >>= f adr

-- 

class (Monad m, Address adr) => StoreM m adr where
   -- | Write to a newly allocated address
   writeAdr  :: adr -> Vlu adr -> m ()
   -- | Update an existing address
   updateAdr :: adr -> Vlu adr -> m ()
   -- | Lookup the value at the given address, returns bottom if the address does not exist
   lookupAdr :: adr -> m (Vlu adr)

deref :: (StoreM m adr, MonadJoin m, JoinLattice a) => (adr -> Vlu adr -> m a) -> Set adr -> m a
deref = lookups lookupAdr

--

class (Monad m) => AllocM m from adr where
   alloc :: from -> m adr

class (Monad m) => CallM m env v where
   call :: (Exp, env) -> m v

class (Monad m) => EvalM m v e  | m -> v where
   eval :: e -> m v
   -- | Runs the evaluation action but return the result of the second argument instead.
   evalReturn :: e -> m v -> m v
   evalReturn e m = eval @_ @v e >> m

----------------------------------------------------------------------------------------------------
-- Instances
----------------------------------------------------------------------------------------------------

newtype EnvT env m a = EnvT { getEnvReader ::  ReaderT env m a } deriving (MonadReader env, Monad, Applicative, MonadLayer, Functor)

instance (Monad m, MonadJoin m) => MonadJoin (EnvT env m) where
   mjoin (EnvT ma) = EnvT . mjoin ma . getEnvReader
   mzero = EnvT mzero

instance {-# OVERLAPPING #-} (Environment env adr, Monad m) => EnvM (EnvT env m) adr env where
   lookupEnv nam = asks (Analysis.Environment.lookup nam)
   withExtendedEnv bds = local (extends bds)
   getEnv = ask
   withEnv = local

instance forall env adr t . (Environment env adr, MonadLayer t, EnvM (Lower t) adr env) => EnvM t adr env where
   lookupEnv = upperM . lookupEnv
   withExtendedEnv bds =  lowerM (withExtendedEnv bds)
   getEnv = upperM getEnv
   withEnv f = lowerM (withEnv f)


runEnv :: forall env m a .  env -> (EnvT env m) a -> m a
runEnv initialEnv (EnvT m) = runReaderT m initialEnv

---

newtype CtxT ctx m a = CtxT { getContextReader :: (ReaderT ctx m a) } deriving (MonadReader ctx, Monad, Applicative, MonadLayer, Functor)
instance {-# OVERLAPPING #-} Monad m => CtxM (CtxT ctx m) ctx where
   getCtx = ask
   withCtx = local
instance (MonadLayer t, CtxM (Lower t) ctx) => CtxM t ctx where
   getCtx =  upperM getCtx
   withCtx f = lowerM (withCtx f)

instance (MonadJoin m) => MonadJoin (CtxT ctx m) where
   mjoin (CtxT ma) = CtxT . mjoin ma . getContextReader
   mzero = CtxT mzero

runCtx :: ctx -> (CtxT ctx m) a -> m a
runCtx initialCtx (CtxT m) = runReaderT m initialCtx

---

---

-- | Provides an error capability to the monadic stack. 
--
-- Errors are recorded by using a writer monad which keeps track of a set of errors,
-- whenever an error occurs the analysis halts by returning `Nothing`.
--
newtype ErrorT m a = ErrorT { runErrorT :: MaybeT (WriterT (Set DomainError) m) a } deriving (Functor, Applicative, Monad)

instance (MonadJoin m) => MonadJoin (ErrorT m) where
   mjoin (ErrorT ma) (ErrorT mb) = ErrorT (mjoin ma mb)
   mzero = ErrorT mzero
instance (Monad m) => MonadLayer (ErrorT m) where
   type Lower (ErrorT m) = m
   lowerM f = ErrorT . MaybeT . WriterT . f . runWriterT . runMaybeT . runErrorT
   upperM = ErrorT . lift . lift

instance {-# OVERLAPPING #-} Monad m => MonadError (ErrorT m) where
   raiseError = ErrorT . lift . tell . Set.singleton >=> (\_ -> ErrorT $ MaybeT $ return Nothing)
instance (MonadJoin m) => MonadDomainError (ErrorT m) where
   raiseError = Control.Monad.Error.raiseError
instance (MonadJoin (t m), MonadTrans t, MonadError m, Monad m, Monad (t m)) => MonadError (t m) where
   raiseError = lift . Control.Monad.Error.raiseError
instance (MonadJoin (t m), MonadTrans t, MonadError (t m), Monad m, Monad (t m)) => MonadDomainError (t m) where
   raiseError = Control.Monad.Error.raiseError

runErr :: (ErrorT m) a -> m (Maybe a, Set DomainError)
runErr = runWriterT . runMaybeT . runErrorT

-- Same as `runErr` but ignores the errors
runErr' :: Functor m => (ErrorT m) a -> m (Maybe a)
runErr' = fmap fst . runErr

---

-- | Keeps track of a store using a state monad
instance {-# OVERLAPPING #-} (Monad m, Hashable adr, JoinLattice (Vlu adr), Address adr, Typeable adr, Typeable (Vlu adr), Has ks (adr :-> Vlu adr)) => StoreM (StateT (DMap ks) m) adr where
   writeAdr adr vlu = modify (Store.extendSto adr vlu)
   updateAdr adr vlu = modify (Store.updateSto adr vlu)
   lookupAdr = gets  . Store.lookupSto
instance (Monad t, Address adr, StoreM (Lower t) adr, MonadLayer t) => StoreM t adr where
   writeAdr adr =  upperM . writeAdr adr
   updateAdr adr =  upperM . updateAdr adr
   lookupAdr  =  upperM .  lookupAdr

runSto :: forall ks l m a . DMap ks -> (StateT (DMap ks) m) a -> m (a, DMap ks)
runSto =  flip runStateT

--
-- Allocator
--

-- | Allocator represented as a function
type Allocator from ctx to = (from -> ctx -> to)

-- Allocator that turns a function into an allocator of the suiteable type
newtype AllocT from ctx to m a = AllocT { getAllocReader :: ReaderT (Allocator from ctx to) m a } deriving (MonadReader (Allocator from ctx to), Monad, Applicative, Functor, MonadLayer)

instance (MonadJoin m) => MonadJoin (AllocT from ctx to m) where
   mjoin (AllocT ma) = AllocT . mjoin ma . getAllocReader
   mzero = AllocT mzero

instance {-# OVERLAPPING #-} (Monad m, CtxM m ctx) => AllocM (AllocT from ctx to m) from to where
   alloc from = do
      ctx <- AllocT $ lift getCtx
      f   <- ask
      return $ f from ctx

instance (Monad m, AllocM (Lower m) from to, MonadLayer m) => AllocM m from to where
   alloc = upperM . alloc

runAlloc :: forall ctx from to m a . Allocator from ctx to -> AllocT from ctx to m a ->  m a
runAlloc allocator (AllocT m) = runReaderT m allocator


--
-- Evaluator
-- 

---- | Evaluation function
--type Evaluator e m v = e -> m v
--
---- | A wrapper for the evaluation function, providing it to the analysis
--newtype EvaluatorT l e v m a = EvaluatorT { runEvaluatorT :: ReaderT (Evaluator e (EvaluatorT l e v m) v) m a }
--   deriving (Monad, Applicative, Functor)
--
--instance (MonadJoin m) => MonadJoin (EvaluatorT l e v m) where
--   mjoin (EvaluatorT ma) (EvaluatorT mb) = EvaluatorT $ mjoin ma mb
--   mzero = EvaluatorT mzero
--
--instance MonadTrans (EvaluatorT l e v) where
--   lift = upperM
--
--instance (Monad m) => MonadLayer (EvaluatorT l e v m) where
--   type Lower (EvaluatorT l e v m) = m
--   upperM = EvaluatorT . lift
--   lowerM f (EvaluatorT m) = EvaluatorT $ lowerM f m
--
--instance (Monad m) => EvalM (EvaluatorT l e v m) v e where
--   eval e = EvaluatorT ask >>= ($ e)

-- runEval :: Evaluator e (EvaluatorT l e v m) v -> (EvaluatorT l e v m) a -> m a
-- runEval eval =  flip runReaderT eval . runEvaluatorT

-- | Alternatively, a structure containing multiple evaluation functions can be used, as long
-- as it contains a function of the correct type
data EvalCap' v
type SEvalM s v m l = (ReaderT s m)

-- instance (Monad m, Select s (e -> (ReaderT s m) v)) => EvalM (ReaderT s m) v e where
--   eval e = ask >>= (($ e) . select)

runEval' :: forall v a l m s . s ->  (ReaderT s m) a -> m a
runEval' = flip runReaderT
