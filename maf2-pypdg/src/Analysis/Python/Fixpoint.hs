{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE RecordWildCards #-}
module Analysis.Python.Fixpoint where

import Analysis.Python.Monad
import Analysis.Python.Common
import Analysis.Python.Infrastructure
import Analysis.Python.Syntax hiding (Return, Break, Continue)

import Analysis.Python.Semantics
import Analysis.Python.Objects.Class
import Analysis.Python.Objects 

import qualified Analysis.Environment as Env

import Control.Monad.Join
import Lattice (JoinLattice(..), Joinable(..), justOrBot)

import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map, (!))
import qualified Data.Map as Map
import Data.Maybe (fromMaybe)
import Control.Monad (liftM)
import qualified Data.Bifunctor as Bi
import Control.Monad.Cont (ap)
import Control.Monad.DomainError
import Control.Monad.Escape 
import Domain (Domain)
import Domain.Class (Domain(inject))
import Control.Monad.Layer (MonadLayer(..))
import Data.Function ((&))
import Prelude hiding (init)
import Debug.Trace (trace)

class WorkList s where
    empty :: s a
    add :: Ord a => a -> s a -> s a
    isEmpty :: s a -> Bool
    first :: s a -> a
    rest :: s a -> s a
    singleton :: Ord a => a -> s a
    singleton = flip add empty
    addAll :: (Ord a, Foldable t) => t a -> s a -> s a
    addAll as s = foldr add s as

instance WorkList Set where
    empty = Set.empty
    add = Set.insert
    isEmpty = Set.null
    first = Set.findMin
    rest = Set.deleteMin

class Store s a v | s -> a v where
    emptySto :: s
    lookupSto :: a -> s -> v
    extendSto :: a -> v -> s -> s
    extendsSto :: [(a,v)] -> s -> s
    extendsSto = flip $ foldr (uncurry extendSto)
    updateSto :: a -> (v -> v) -> (v -> v) -> s -> s

instance (Ord a, JoinLattice v) => Store (Map a v) a v where
    emptySto = Map.empty
    lookupSto s = justOrBot . Map.lookup s
    extendSto = Map.insertWith join
    updateSto a _ fw = Map.update (Just . fw) a

type PySto obj = (Map VarAdr PyVal, Map ObjAdr obj)
type PyRes = Map PyCmp (MayEscape (Set PyEsc) PyVal)

data PyDep = ObjDep ObjAdr
           | VarDep VarAdr
           | ResDep PyCmp
    deriving (Eq, Ord)

initialBds :: [(String, PyVal)]
initialBds = [("type", constant Type)]

initialEnv :: PyEnv
initialEnv = Env.extends (map (\(nam, _) -> (nam, VarAdr nam)) initialBds) Env.empty

initialSto :: JoinLattice obj => PySto obj
initialSto = (extendsSto (map (Bi.first VarAdr) initialBds) emptySto, emptySto)

data Effects = Effects { read :: Set PyDep, write :: Set PyDep, spawn :: Set PyCmp }

readEffect :: PyDep -> Effects
readEffect dep = Effects (Set.singleton dep) Set.empty Set.empty

writeEffect :: PyDep -> Effects
writeEffect dep = Effects Set.empty (Set.singleton dep) Set.empty 

spawnEffect :: PyCmp -> Effects
spawnEffect cmp = Effects Set.empty Set.empty (Set.singleton cmp)

instance Semigroup Effects where
    (Effects r1 w1 s1) <> (Effects r2 w2 s2) = Effects (r1 `Set.union` r2) (w1 `Set.union` w2) (s1 `Set.union` s2)
instance Monoid Effects where
    mempty = Effects Set.empty Set.empty Set.empty

newtype AnalysisM obj a = AnalysisM { run :: PyEnv -> PyRes -> PySto obj -> (a, PySto obj, Effects) }

instance Functor (AnalysisM obj) where
    fmap f m = AnalysisM $ \env res sto -> let (va, sto', effs) = run m env res sto
                                            in (f va, sto', effs)
instance Applicative (AnalysisM obj) where
    pure v = AnalysisM $ \_ _ sto -> (v, sto, mempty)
    (<*>) = ap
instance Monad (AnalysisM obj) where
    return = pure
    m >>= f = AnalysisM $ \env res sto -> let (va, sto', effs) = run m env res sto 
                                              (vb, sto'', effs') = run (f va) env res sto'
                                           in (vb, sto'', effs `mappend` effs')

data PyEsc = Return PyVal 
           | Break 
           | Continue 
           | DomainError DomainError 
           | PyError PyError 
    deriving (Eq, Ord)

instance Monad m => AllocM m PyLoc ObjAdr where
    alloc = return . allocPtr
    
instance Domain (Set PyEsc) DomainError where
    inject = Set.singleton . DomainError
instance Domain (Set PyEsc) PyError where
    inject = Set.singleton . PyError

instance {-# OVERLAPPING #-} EnvM (AnalysisM obj) VarAdr PyEnv where
    getEnv = AnalysisM $ \env _ sto -> (env, sto, mempty)
    lookupEnv s = AnalysisM $ \env _ sto -> (Env.lookup s env, sto, mempty)
    withEnv f m = AnalysisM $ \env res sto -> run m (f env) res sto  

instance MonadJoin (AnalysisM obj) where 
    mzero = AnalysisM $ \_ _ sto -> (bottom, sto, mempty)
    mjoin m1 m2 = AnalysisM $ \env res sto -> 
                                let (v1, sto1, eff1) = run m1 env res sto
                                    (v2, sto2, eff2) = run m2 env res sto1
                                 in (v1 `join` v2, sto2, eff1 `mappend` eff2)

instance {-# OVERLAPPING #-} StoreM (AnalysisM obj) VarAdr PyVal where
    lookup adr = AnalysisM $ \_ _ sto@(vsto, _) -> (lookupSto adr vsto, sto, readEffect (VarDep adr))  
    extend adr vlu = AnalysisM $ \_ _ (vsto, osto) -> ((), (extendSto adr vlu vsto, osto), writeEffect (VarDep adr)) 
    update adr fs fw = AnalysisM $ \_ _ (vsto, osto) -> ((), (updateSto adr fs fw vsto, osto), writeEffect (VarDep adr))

instance {-# OVERLAPPING #-} PyObj obj => StoreM (AnalysisM obj) ObjAdr obj where
    lookup adr = AnalysisM $ \_ _ sto@(_, osto) -> (lookupSto adr osto, sto, readEffect (ObjDep adr))  
    extend adr vlu = AnalysisM $ \_ _ (vsto, osto) -> ((), (vsto, extendSto adr vlu osto), writeEffect (ObjDep adr)) 
    update adr fs fw = AnalysisM $ \_ _ (vsto, osto) -> ((), (vsto, updateSto adr fs fw osto), writeEffect (ObjDep adr))

instance PyObj obj => PyM (MayEscapeT (AnalysisM obj) (Set PyEsc)) obj where
    callCmp cmp = MayEscapeT $ AnalysisM $ \_ res sto -> (justOrBot $ Map.lookup cmp res, sto, spawnEffect cmp)
    returnWith = escape . Return 
    break = escape Break  
    continue = escape Continue  

analyze :: forall obj . PyObj obj => PyPrg -> (MayEscape (Set PyEsc) PyVal, PySto obj)
analyze prg = let (_, sto, _) = runM init initialEnv initialRes initialSto 
               in inter initialWrk initialRes sto initialDep initialVis
    where -- setup 
          initialCmp = MainCmp prg
          initialRes = Map.empty :: PyRes
          initialDep = Map.empty :: Map PyDep (Set PyCmp)
          initialVis = Set.singleton initialCmp
          initialWrk = singleton initialCmp :: Set PyCmp
          -- inter-component analysis
          shouldTrigger (vsto, _) (vsto', _) _ _ (VarDep adr) = lookupSto adr vsto /= lookupSto adr vsto'  
          shouldTrigger (_, osto) (_, osto') _ _ (ObjDep adr) = lookupSto adr osto /= lookupSto adr osto'
          shouldTrigger _ _ res v (ResDep cmp) = justOrBot (Map.lookup cmp res) /= v 
          trigger dep d = fromMaybe Set.empty (Map.lookup d dep)
          register cmp dep d = Map.insertWith Set.union d (Set.singleton cmp) dep
          inter wrk res sto dep vis
            | isEmpty wrk = (res ! initialCmp, sto)
            | otherwise = let cmp = first wrk
                              rst = rest wrk
                              (v,sto',Effects{..}) = intra cmp res sto
                              dep' = foldl (register cmp) dep read 
                              new = Set.filter (\c -> not (Set.member c vis)) spawn
                              vis' = Set.union vis new
                              res' = Map.insertWith join cmp v res
                              tri = foldMap (trigger dep') $ Set.filter (shouldTrigger sto sto' res v) (Set.insert (ResDep cmp) write) 
                              wrk' = addAll rst (new `Set.union` tri)
                            in inter wrk' res' sto' dep' vis'
          -- intra-component analysis
          runM :: MayEscapeT (AnalysisM obj) (Set PyEsc) a -> PyEnv -> PyRes -> PySto obj -> (MayEscape (Set PyEsc) a, PySto obj, Effects)
          runM = run . runMayEscape
          intra :: PyCmp -> PyRes -> PySto obj -> (MayEscape (Set PyEsc) PyVal, PySto obj, Effects)
          intra (MainCmp prg) = 
            runM (exec (programStmt prg) >> return (constant None)) initialEnv 
          intra cmp@(LoopCmp cnd bdy env) = 
            runM (cond (eval cnd >>= isTrue) (exec bdy >> callCmp cmp) (return (constant None))) env
          intra (CallCmp bdy env) =
            runM (exec bdy >> return (constant None)) env


