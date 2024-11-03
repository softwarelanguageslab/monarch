{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE UndecidableSuperClasses #-}

module Analysis.SimpleActor.Monad
  ( MonadActor,
    MonadMeta(..),
    MonadDynamic(..),
    ifMetaSet,
    MonadSpawn,
    spawn,
    EvalM,
    Error (..),
    ActorError,
    MetaT, 
    DynamicBindingT,
    isMatchError,
    Cmp(..)
  )
where

import Analysis.Monad hiding (EvalM, spawn)
import Analysis.Actors.Mailbox
import Analysis.Scheme.Monad (SchemeDomainM)
import Control.Monad.DomainError
import Control.Monad.Escape
import Control.Monad.Join
import Control.Monad.Layer
import Control.Monad.Reader hiding (mzero)
import Control.Monad.State hiding (mzero)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromMaybe, fromJust)
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Class
import Lattice (BottomLattice (bottom))
import Lattice.Class (Joinable)
import qualified Lattice.Class as L
import Syntax.AST
import qualified Syntax.Ide as Ide
import Analysis.Monad.Fix (MonadFixpoint)
import Data.Kind (Type)
import Domain (SchemeDomain(Env))
import Lattice.Equal (EqualLattice)
import Domain.Core.BoolDomain.Class (BoolDomain (true, false, boolTop))
import Lattice.Split (SplitLattice)
import Syntax.Span (SpanOf(..))
import Syntax.FV
import Analysis.Symbolic.Monad (SymbolicM)
import Domain.Scheme hiding (Exp, Env)
import Domain.Actor
import Analysis.Actors.Monad

------------------------------------------------------------
-- 'Components'
------------------------------------------------------------

data Cmp = FuncBdy  Exp  -- ^ a function call component contains a lambda   
         | ActorExp Exp  -- ^ a newly spawned actor
      deriving (Show, Eq, Ord)

instance SpanOf Cmp where  
   spanOf (FuncBdy e) = spanOf e 
   spanOf (ActorExp e) = spanOf e

instance FreeVariables Cmp where 
   fv (FuncBdy (Lam xs e _)) = Set.union (Set.fromList (map Ide.name xs)) (fv e)
   fv (FuncBdy _) = error "imposible value"
   fv (ActorExp e) = fv e

------------------------------------------------------------
-- Errors
------------------------------------------------------------

-- TODO: BlameErorr should contain label not a string!
data Error = MatchError | InvalidArgument | BlameError String | ArityMismatch Int Int
  deriving (Eq, Ord, Show)

class (SplitLattice e) => SimpleActorErrorDomain e where 
   isMatchError :: (BottomLattice b, BoolDomain b) => e -> b
instance SimpleActorErrorDomain (Set ActorError) where  
   isMatchError es   
      | Set.size es == 0 = bottom
      | Set.size es == 1 && Set.member (ActorError MatchError) es = true 
      | not (Set.member (ActorError MatchError) es) = false
      | otherwise = boolTop
      

------------------------------------------------------------
-- Monad typeclasses
------------------------------------------------------------


-- | Reader-like monadic interface that carries 
-- meta-annotations.
class Monad m => MonadMeta m where 
   isMeta :: m Bool
   withMetaSet :: m a -> m a 
   withMetaUnset :: m a -> m a

-- | Monad for scoped dynamic bindings
-- in the target language (à la Racket "parmetrize")
class Monad m => MonadDynamic α m | m -> α where  
   withExtendedDynamic :: [(String, α)] -> m a -> m a
   lookupDynamic :: String -> m α

type MonadSpawn v (m :: Type -> Type) = (ARef v ~ Pid Exp [Span])

type MonadActor v m = (MonadMailbox v m, MonadSpawn v m, MonadActorLocal v m, MonadMeta m, MonadDynamic (Adr v) m)

------------------------------------------------------------
-- Layered instances
------------------------------------------------------------

instance 
 {-# OVERLAPPABLE #-} 
 (MonadLayer t , 
   Monad (t m),
  MonadMeta m) => 
 MonadMeta (t m) where  
   
  isMeta = upperM isMeta
  withMetaSet = lowerM withMetaSet
  withMetaUnset = lowerM withMetaUnset

instance 
 {-# OVERLAPPABLE #-}
 (MonadLayer t,
  Monad (t m),
  MonadDynamic α m) 
 => MonadDynamic α (t m) where   

 withExtendedDynamic bds = lowerM (withExtendedDynamic bds)
 lookupDynamic = upperM . lookupDynamic

spawn :: EvalM v m => Exp -> (ARef v -> m v) -> m (ARef v)
spawn e f = do 
   ctx <- getCtx
   let s = Pid e ctx
   -- NOTE: we `mjoin` with `return nil` here 
   -- since the computation from `(f s)` might 
   -- not terminate (i.e., return `Bottom`)
   withSelf s (mjoin (f s) (return nil) >> return s)

------------------------------------------------------------
-- Monad
------------------------------------------------------------

-- | Evaluation monad
type EvalM v m =
  ( MonadJoinable m,
    EnvM m (Adr v) (Env v),
    AllocM m Ide (Adr v),
    StoreM (Adr v) v m,
    MonadActor v m,
    MonadEscape m,
    MonadFixpoint m Cmp v,
    CtxM m [Span],
    Domain (Esc m) DomainError,
    Domain (Esc m) Error,
    BottomLattice (Esc m),
    SimpleActorErrorDomain (Esc m),
    SchemeDomainM Exp v m,
    ActorDomain v,
    EqualLattice v,
    Show v,
    SymbolicM (Adr v) m v
  )

------------------------------------------------------------
-- Instances
------------------------------------------------------------

-- | Meta-flag monad
newtype MetaT m a = MetaT (ReaderT Bool m a) 
                  deriving (Applicative, Monad, Functor, MonadTrans, MonadTransControl, MonadLayer, MonadJoinable, MonadReader Bool, MonadCache)

instance (Monad m) => MonadMeta (MetaT m) where
   isMeta = ask
   withMetaSet = local (const True)
   withMetaUnset = local (const False)

ifMetaSet :: MonadMeta m => (m a -> m a) -> m a -> m a
ifMetaSet f ma = isMeta >>= (\b -> if b then f ma else ma)

-- | Dynamic binding monad
newtype DynamicBindingT v m a = DynamicBindingT (ReaderT (Map String (Adr v)) m a)
                              deriving (Applicative, Monad, Functor, MonadTrans, MonadTransControl, MonadLayer, MonadJoinable, MonadCache)

instance (Monad m, α ~ Adr v) => MonadDynamic α (DynamicBindingT v m) where  
   lookupDynamic vr = DynamicBindingT $ asks (fromJust . Map.lookup vr)
   withExtendedDynamic bds (DynamicBindingT ma) = DynamicBindingT $ local (Map.union (Map.fromList bds)) ma
   
------------------------------------------------------------
-- Error abstractions
------------------------------------------------------------

data ActorError = ActorDomainError DomainError | ActorError Error
  deriving (Eq, Ord, Show)

instance Domain (Set ActorError) DomainError where
  inject = Set.singleton . ActorDomainError

instance Domain (Set ActorError) Error where
  inject = Set.singleton . ActorError
