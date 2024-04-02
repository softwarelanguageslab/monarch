{-# LANGUAGE FlexibleContexts, FlexibleInstances, UndecidableInstances, AllowAmbiguousTypes, PolyKinds #-}
{-# LANGUAGE FunctionalDependencies, ScopedTypeVariables #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE LambdaCase #-}
-- | This module provides monadic operations shared between many analyses.
--
-- To make instantiations for combinations of these typeclasses easier, this module also provides an abstraction based on Monad **layers**.
-- These layers corresponds to monads in a monad transformer stack. However, since `MonadTrans` lacks a method for peeling away a single layer
-- from the monad transformer stack, the `MonadLayer` typeclass is used instead. 
--
module Analysis.Monad(
 -- Typeclass interfaces
 StoreM(..),
 EvalM(..),
 EnvM(..),
 AllocM(..),
 CtxM(..),
 CallM(..),
 AssertM(..),
 deref,
 store,
 -- Implementations
 runStoreT,
 runStoreT',
 runEnv,
 runCtx,
 runAlloc,
 runCallBottomT,
 runNonDetT,
 runIdentityDebug,
 runJoinT,
 runSpanT,
 -- Types for implementations
 NonDetT,
 JoinT,
 StoreT'
) where

import Analysis.Environment
import Control.Monad.Reader hiding (mzero)
import Control.Monad.Join
import Control.Monad.State hiding (mzero)
import Control.Monad.State.SVar (SVar)
import qualified Control.Monad.State.SVar as SVar
import Control.Monad.DomainError
import Syntax.Scheme.AST
import Data.Set (Set)
import qualified Data.Set as Set
import Domain hiding (Exp)
import Lattice
import qualified Analysis.Store as Store
import Control.Monad.Layer
import Control.Monad.Trans.Maybe
import Control.Monad.Writer hiding (mzero)
import GHC.TypeError
import Data.Functor.Identity
import Data.Map (Map)
import qualified Data.Map as Map
import ListT
import Control.Applicative (liftA2)
import Control.Monad.Identity (IdentityT (runIdentityT))
import Syntax.Span

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
lookups look f = Set.fold (mjoin . deref') Control.Monad.Join.mzero
      where deref' adr = look adr >>= f adr

-- 

class (Monad m) => StoreM m adr v | m adr -> v where
   -- | Write to a newly allocated address
   writeAdr  :: adr -> v -> m ()
   -- | Update an existing address
   updateAdr :: adr -> v -> m ()
   -- | Lookup the value at the given address, returns bottom if the address does not exist
   lookupAdr :: adr -> m v

deref :: forall m adr v a t . (StoreM m adr v, MonadJoin m, JoinLattice a) => (adr -> v -> m a) -> Set adr -> m a
deref = lookups lookupAdr

-- | Store the given value in the store using the an address
-- allocator on the monadic stack.
store :: forall m from t adr v . (AllocM m from adr, StoreM m adr v) => from -> v -> m adr
store from v = alloc @_ @_ @adr from >>= (\adr -> writeAdr adr v >> pure adr)

--

class (Monad m) => AllocM m from adr  where
   alloc :: from -> m adr

class (Monad m) => CallM m env v where
   call :: (Exp, env) -> m v

class (Monad m) => EvalM m v e  | m -> v where
   eval :: e -> m v

-- | Adds location information to the context
class SpanM m where   
   withSpan  :: Span -> m a -> m a
   usingSpan :: (Span -> a) -> m a

instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, SpanM m) => SpanM (t m) where 
   withSpan s m = lowerM (withSpan s) m
   usingSpan    = upperM   . usingSpan

-- | Assert that certain conditions hold on the given value
-- and give an assertion error if they do not.
class (Monad m, SpanM m, MonadJoin m, MonadEscape m) => AssertM m where   
   assert :: JoinLattice v => (Domain (Esc m) e) => (v -> CP Bool) -> (Span -> e) -> v -> m v
   assert b e v = cond (pure $ b v) (pure v) (escape =<< usingSpan e) 

-- Auto instance
instance {-# OVERLAPPABLE #-} (Monad m, SpanM m, MonadJoin m, MonadEscape m) => AssertM m
   

----------------------------------------------------------------------------------------------------
-- Instances
----------------------------------------------------------------------------------------------------

newtype IdentityDebug a b = IdentityDebug (Identity b) deriving (Applicative, Monad, Functor)
instance MonadJoin (IdentityDebug a) where
   mzero = IdentityDebug mzero
   mjoin (IdentityDebug ma) (IdentityDebug mb) = IdentityDebug $ mjoin ma mb

runIdentityDebug :: IdentityDebug a b -> b
runIdentityDebug (IdentityDebug m) = runIdentity m

--

newtype EnvT env m a = EnvT { getEnvReader ::  ReaderT env m a } deriving (MonadReader env, MonadJoin, Monad, Applicative, MonadLayer, MonadTrans, Functor)

instance {-# OVERLAPPING #-} (Environment env adr, Monad m) => EnvM (EnvT env m) adr env where
   lookupEnv nam = asks (Analysis.Environment.lookup nam)
   withExtendedEnv bds = local (extends bds)
   getEnv = ask
   withEnv = local

instance forall env adr t m . (Environment env adr, Monad m, MonadLayer t, EnvM m adr env) => EnvM (t m) adr env where
   lookupEnv = upperM . lookupEnv
   withExtendedEnv bds =  lowerM (withExtendedEnv bds)
   getEnv = upperM getEnv
   withEnv f = lowerM (withEnv f)

runEnv :: forall env m a .  env -> (EnvT env m) a -> m a
runEnv initialEnv (EnvT m) = runReaderT m initialEnv

---

newtype CtxT ctx m a = CtxT { getContextReader :: ReaderT ctx m a } deriving (MonadReader ctx, Monad, Applicative, MonadLayer, MonadTrans, Functor)
instance {-# OVERLAPPING #-} Monad m => CtxM (CtxT ctx m) ctx where
   getCtx = ask
   withCtx = local
instance (MonadLayer t, Monad m, CtxM m ctx) => CtxM (t m) ctx where
   getCtx =  upperM getCtx
   withCtx f = lowerM (withCtx f)

instance (MonadJoin m) => MonadJoin (CtxT ctx m) where
   mjoin (CtxT ma) = CtxT . mjoin ma . getContextReader
   mzero = CtxT mzero

runCtx :: ctx -> (CtxT ctx m) a -> m a
runCtx initialCtx (CtxT m) = runReaderT m initialCtx

---

---


newtype StoreT adr v m a = StoreT { getStoreT :: StateT (Map adr v) m a }
                              deriving (Applicative, Functor, Monad, MonadState (Map adr v), MonadLayer, MonadTrans)

instance (MonadJoin m, Ord adr, Eq v, Joinable v) => MonadJoin (StoreT adr v m) where
   mjoin (StoreT ma) (StoreT mb) = StoreT $ mjoin ma mb
   mzero = StoreT mzero

instance {-# OVERLAPPING #-} (Monad m, JoinLattice v, Ord adr) => StoreM (StoreT adr v m) adr v where
   writeAdr adr vlu = modify (Store.extendSto adr vlu)
   updateAdr adr vlu = modify (Store.updateSto adr vlu)
   lookupAdr = gets  . Store.lookupSto

instance (Monad (t m), StoreM m adr v, MonadLayer t) => StoreM (t m) adr v where
   writeAdr adr =  upperM . writeAdr adr
   updateAdr adr =  upperM . updateAdr adr
   lookupAdr  =  upperM .  lookupAdr

runStoreT :: forall t adr v m a . Map adr v -> StoreT adr v m a -> m (a, Map adr v)
runStoreT initialSto = flip runStateT initialSto . getStoreT

---

newtype StoreT' adr v m a = StoreT' { getStoreT' :: StateT (Map adr (SVar v)) m a }
                              deriving (Applicative, Functor, Monad, MonadState (Map adr (SVar v)), MonadLayer, MonadTrans)

instance {-# OVERLAPPING #-} (Monad m, SVar.MonadStateVar m, JoinLattice v, Ord adr) => StoreM (StoreT' adr v m) adr v where
   writeAdr adr vlu =
      gets (Map.lookup adr) >>=
         maybe (SVar.new vlu >>= (\var -> modify (Map.insert adr var) >> void (SVar.modify (const (Just vlu)) var)))
               (void . SVar.modify joinOld)
       where joinOld vlu' = if subsumes vlu' vlu then Nothing else Just (Lattice.join vlu vlu')
   updateAdr = writeAdr
   lookupAdr adr =
         gets (Map.lookup adr) >>= maybe (SVar.depend bottom >>= insert) SVar.read
      where insert var = modify (Map.insert adr var) >> return bottom

instance (MonadJoin m, Ord adr, Eq v, Joinable v) => MonadJoin (StoreT' adr v m) where
   mjoin (StoreT' ma) (StoreT' mb) = StoreT' $ mjoin ma mb
   mzero = StoreT' mzero

runStoreT' :: forall adr v m a . Map adr (SVar v) -> StoreT' adr v m a -> m (a, Map adr (SVar v))
runStoreT' initial = flip runStateT initial . getStoreT'

--
-- Allocator
--

-- | Allocator represented as a function
type Allocator from ctx to = (from -> ctx -> to)

-- Allocator that turns a function into an allocator of the suiteable type
newtype AllocT from ctx t to m a = AllocT { getAllocReader :: ReaderT (Allocator from ctx to) m a } deriving (MonadReader (Allocator from ctx to), Monad, Applicative, Functor, MonadLayer, MonadTrans)

instance (MonadJoin m) => MonadJoin (AllocT from ctx t to m) where
   mjoin (AllocT ma) = AllocT . mjoin ma . getAllocReader
   mzero = AllocT mzero

instance {-# OVERLAPPING #-} (Monad m, CtxM m ctx) => AllocM (AllocT from ctx t to m) from to where
   alloc from = do
      ctx <- AllocT $ lift getCtx
      f   <- ask
      return $ f from ctx

instance (Monad (l m), AllocM m from to, MonadLayer l) => AllocM (l m) from to where
   alloc = upperM . alloc @m @from @to


runAlloc :: forall t from ctx to m a . Allocator from ctx to -> AllocT from ctx t to m a ->  m a
runAlloc allocator (AllocT m) = runReaderT m allocator


-- 
-- CallM 
-- 

instance (Monad (t m), CallM m env v, MonadLayer t) => CallM (t m) env v where
   call = upperM . call

-- | Mock instance that ignores the call and always
-- returns bottom.
newtype CallBottomT v m a = CallBottomT { _getCallBottomT :: IdentityT m a }
                        deriving (Applicative, Functor, Monad, MonadJoin, MonadLayer, MonadTrans)

instance {-# OVERLAPPING #-} (Monad m, JoinLattice v) => CallM (CallBottomT v m) env v where
   call _ = CallBottomT $ return bottom

runCallBottomT :: CallBottomT v m a -> m a
runCallBottomT (CallBottomT ma) = runIdentityT ma

--
-- JoinT
--

-- | Join multiple paths together by joining their 
-- state together using a JoinLattice, anything 
-- below this on the stack will not be joined together and 
-- is assumed to be global across all paths
newtype JoinT m a = JoinT { _getJoinT :: IdentityT m a } deriving (Applicative, Monad, MonadLayer, MonadTrans, Functor)

instance (Monad m) => MonadJoin (JoinT m) where
   mzero = return bottom
   mjoin = liftA2 Lattice.join

runJoinT :: JoinT m a -> m a
runJoinT (JoinT ma) = runIdentityT ma

-- 
-- NonDetT
-- 

-- | Useful for running the computation non-deterministically 
-- and defering join to the end.
newtype NonDetT m a = NonDetT (ListT m a) deriving (Functor, Applicative, Monoid, MonadLayer, MonadTrans, Semigroup, Monad)

instance (Monad m) => MonadJoin (NonDetT m) where
   mzero = mempty
   mjoin (NonDetT ma) (NonDetT mb) = NonDetT $ ma `mplus` mb

runNonDetT :: Monad m => NonDetT m a -> m [a]
runNonDetT (NonDetT ma) = uncons ma >>= fix'
   where fix' Nothing         = return []
         fix' (Just (x, mxs)) = fmap (x:) (uncons mxs >>= fix')

--
-- SpanT
--

newtype SpanT m a = SpanT (ReaderT Span m a) deriving (Functor, Applicative, Monad, MonadLayer, MonadTrans, MonadReader Span)

instance (Monad m) => SpanM (SpanT m) where
   withSpan  s = local (const s)
   usingSpan f = asks f

runSpanT :: SpanOf e => e -> SpanT m a -> m a 
runSpanT e (SpanT m) = runReaderT m (spanOf e)
