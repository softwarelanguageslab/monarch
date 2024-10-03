{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module Analysis.SimpleActor(ActorCmp, analyze) where

import Analysis.SimpleActor.Monad
import Analysis.SimpleActor.Semantics

import Data.Map (Map)
import Data.Function ((&))
import Data.Functor.Identity

import Analysis.Monad hiding (eval)
import Syntax.AST
import Analysis.Monad.Stack (MonadStack)
import Analysis.Scheme.Prelude (CPActorValue)
import Analysis.Monad.Fix
import Control.Monad.Escape
import qualified Analysis.Scheme.Primitives as P
import Data.Set (Set)
import Domain.Scheme.Actors (Pid(..))
import Prelude hiding (exp)
import Domain.Scheme.Store 
import Domain.Scheme.Class (PaiDom, VecDom, StrDom)
import qualified Data.Map as Map
import Data.Kind (Type, Constraint)
import Control.Monad.Trans (MonadTrans)
import Control.Monad.Layer (MonadLayer)
import Lattice.Class (Joinable, joins, BottomLattice)
import qualified Data.List as List

------------------------------------------------------------
-- Shortcuts
------------------------------------------------------------

type K = [Span]
type ActorRef = Pid Exp K
type ActorEnv = Map String (EnvAdr K)
type ActorVlu = CPActorValue EnvAdr (PaiAdrE Exp) (VecAdrE Exp) (StrAdrE Exp) K Exp
type ActorCmp = Key (IntraT Identity) Exp
type ActorRes = Val (IntraT Identity) ActorVlu
type ActorMai = Map ActorRef (Set ActorVlu)
type ActorSto = Map (EnvAdr K) ActorVlu

type family DependsOn (m :: Type -> Type) (cmp :: Type) (ads :: [Type]) :: Constraint where
      DependsOn m cmp '[] = ()
      DependsOn m cmp (adr : ads) = (DependencyTrackingM m cmp adr, DependsOn m cmp ads) 


type family Unlist (as :: Type) :: Type where 
   Unlist [k] = k

------------------------------------------------------------
-- Monad
------------------------------------------------------------

-- Join elements of a list of elements before 
-- writing them to the result mapping as a singleton list of joined elements.
newtype JoinToResultMap k v m a = JoinToResultMap (MapT k v m a) 
                            deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer)

instance {-# OVERLAPPING #-} (Monad m, Ord k, BottomLattice v, Joinable v) => MapM k [v] (JoinToResultMap k v m) where 
   get = JoinToResultMap . fmap (fmap List.singleton) . get 
   put k = JoinToResultMap . put k . joins

-- | Run the @JoinToResultMap@
runWithJoinToMap :: forall k s v m a . (s ~ [v]) => JoinToResultMap k v m a -> m (a, Map k v)
runWithJoinToMap (JoinToResultMap m) = runWithMapping m

type IntraT m = MonadStack '[
               MayEscapeT (Set ActorError),
               EnvT ActorEnv,
               DynamicBindingT ActorVlu,
               AllocT Ide K (EnvAdr K),
               AllocT Exp K (PaiAdrE Exp K),
               AllocT Exp K (StrAdrE Exp K),
               AllocT Exp K (VecAdrE Exp K),
               CtxT K,
               MetaT, 
               ActorLocalT ActorVlu,
               NonDetT,
               -- JoinT
               CacheT
            ] m

-- TODO: group some constraint into a constraint alias for ModX
type MonadInter m =
      ( MapM ActorCmp ActorRes m,
        WorkListM m ActorCmp,
        ComponentTrackingM m ActorCmp,
        DependsOn m ActorCmp '[ ActorCmp , EnvAdr K, Pid Exp K, PaiAdrE Exp K, VecAdrE Exp K, StrAdrE Exp K ], 
        StoreM (EnvAdr K) ActorVlu m,
        StoreM (PaiAdrE Exp K) (PaiDom ActorVlu) m,
        StoreM (VecAdrE Exp K) (VecDom ActorVlu) m,
        StoreM (StrAdrE Exp K) (StrDom ActorVlu) m,
        MonadMailbox ActorVlu m )

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

intra :: forall m . MonadInter m
 => ActorCmp -> m ()
intra cmp = runFixT @(IntraT (IntraAnalysisT ActorCmp m)) (eval @ActorVlu) cmp
          & runAlloc @Ide @K @(EnvAdr K) EnvAdr
          & runAlloc @Exp @K @(PaiAdrE Exp K) PaiAdr
          & runAlloc @Exp @K @(StrAdrE Exp K) StrAdr
          & runAlloc @Exp @K @(VecAdrE Exp K) VecAdr
          & runIntraAnalysis cmp

initialEnv :: Env K
initialEnv = Map.fromList (fmap (\nam -> (nam, PrmAdr nam)) allPrimitives)

inter :: MonadInter m => Exp -> m ()
inter exp = add (((((exp, initialEnv), Map.empty), []), False), Pid exp []) >> iterateWL intra

analyze :: Exp -> ((((), ActorSto), ActorMai), Map ActorCmp (Unlist ActorRes))
analyze exp =
      let (((((((), sto), _), _), _), mb), mapping) =
              inter exp
            & runStoreT @ActorSto @(EnvAdr K) @ActorVlu (P.initialSto initialEnv)
            & runWithStore @(Map (PaiAdrE Exp K) (PaiDom ActorVlu))
            & runWithStore @(Map (StrAdrE Exp K) (StrDom ActorVlu))
            & runWithStore @(Map (VecAdrE Exp K) (VecDom ActorVlu))
            & runWithMailboxT @ActorVlu
            -- & runWithMapping @ActorCmp @ActorRes
            & runWithJoinToMap @ActorCmp @ActorRes
            & runWithComponentTracking @ActorCmp
            & runWithDependencyTracking @ActorCmp @ActorCmp
            & runWithDependencyTracking @ActorCmp @(EnvAdr K)
            & runWithDependencyTracking @ActorCmp @(PaiAdrE Exp K)
            & runWithDependencyTracking @ActorCmp @(VecAdrE Exp K)
            & runWithDependencyTracking @ActorCmp @(StrAdrE Exp K)
            & runWithDependencyTracking @ActorCmp @ActorRef
            & runWithWorkList @[_]
            & runIdentity
      in ((((), sto), mb), mapping)
