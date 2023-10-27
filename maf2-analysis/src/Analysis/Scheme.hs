{-# LANGUAGE UndecidableInstances #-}
module Analysis.Scheme where 

import Prelude hiding (lookup)

import Analysis.Scheme.Primitives
import Analysis.Environment
import Analysis.Scheme.Semantics
import Analysis.Scheme.Monad hiding (eval, allocPai, allocVec, allocStr, allocVar)
import Analysis.Monad hiding (eval, getEnv)
import Control.SVar.ModX
import Syntax.Scheme
import Domain (Address, Vlu)
import Domain.Scheme (SchemeDomain, SchemeConstraints, SchemeAdrs, SAdr, PAdr, VAdr, StoreDefinedFor)
import qualified Domain.Scheme

import Data.DMap (DMap, (:->), fromMap, Hashable)
import Data.Map (Map)
import Data.Kind
import Data.Function ((&))
import Data.Dynamic

import GHC.Generics (Generic)

-----------------------------------------
-- Shorthands
-----------------------------------------

type Program       = Exp            
-- | the initial environment
newtype Env v ctx  = Env { getEnv :: (Map String (VarAdr v ctx)) } deriving (Eq, Ord, Generic, Show)
type Sto ctx v     = Map (VarAdr v ctx) v      -- ^ non-heap allocated values
type DSto ctx v    = DMap (Adrs v ctx)       -- ^ combined store with heap allocated values


-- | Since `Env` is a newtype we have to implement `Environment` for it 
-- and pass it to the underlying wrapped type.
-- 
-- Newtype deriving is not possible here because the `Environment` typeclass
-- is not a unary typeclass (it excepts an additional parameter that denotes what kind of values 
-- the environment stores). 
instance Environment (Env v ctx) (VarAdr v ctx) where 
  empty = Env empty 
  lookup nam = lookup nam . getEnv
  extend nam v = Env . extend nam v . getEnv

instance (Hashable v, Hashable ctx) => Hashable (Env v ctx)  

-----------------------------------------
-- Store & Environment
-----------------------------------------

-- | All address types in the combined store mapped to the value
-- stored at their location.
type Adrs v ctx = (VarAdr v ctx :-> v) ': SchemeAdrs v

-- | A type for representing addresses of variables and primitives
-- in the store 
data VarAdr v ctx = VarAdr Ide ctx
                  | PrmAdr String
                  | RetAdr (Component (ModF v ctx))
                  deriving (Ord, Eq, Show, Generic)

instance (Hashable v, Hashable ctx) => Hashable (VarAdr v ctx)
instance (Ord ctx, Ord v, Show v, Show ctx, Typeable v, Typeable ctx) => Address (VarAdr v ctx) where
  type Vlu (VarAdr v ctx) = v 
 
-- | The initial environment used by 
-- the analysis
analysisEnvironment :: Env v ctx
analysisEnvironment = initialEnv PrmAdr
 
-- | The initial store
analysisStore :: forall v ctx . (Ord ctx, Hashable ctx, Hashable v, Typeable ctx, Typeable v, SchemeDomain v)
              => Env v ctx -> DSto ctx v
analysisStore = fromMap . initialSto @v

-----------------------------------------
-- ModF
-----------------------------------------

data ModF v ctx

-- | Reification of a ModF dependency.
-- 
-- A dependency can be on any addresses of the combined 
-- store. However, since the store contains different **kinds** 
-- of addresses, a dependency must reflext them all.
-- 
-- To this end, we propose a union type that introduces
-- a variant for each address type of the combined store.
data AdrDep v ctx = VarAdrDep (VarAdr v ctx)
                  | PaiAdrDep (PAdr v)
                  | VecAdrDep (VAdr v)
                  | StrAdrDep (SAdr v)

deriving instance (SchemeDomain v, Eq ctx, Eq v) => Eq (AdrDep v ctx)
deriving instance (SchemeDomain v, Ord ctx, Ord v) => Ord (AdrDep v ctx)

class SchemeAlloc ctx v | ctx -> v where 
  allocPai :: Exp -> ctx -> PAdr v 
  allocVec :: Exp -> ctx -> VAdr v 
  allocStr :: Exp -> ctx -> SAdr v 
  allocVar :: Ide -> ctx -> VarAdr v ctx 
  allocCtx :: ctx -> ctx

instance (SchemeDomain v, StoreDefinedFor v, SchemeConstraints v Exp (VarAdr v ctx) (Env v ctx), Typeable v, Typeable ctx, SchemeAlloc ctx v, Hashable v, Hashable ctx, Eq ctx, Ord ctx) => ModX (ModF v ctx) where 
  -- A component is a closure + a context
  type Component (ModF v ctx)  = (Exp, Env v ctx, ctx)
  -- | Global store
  type State (ModF v ctx)      = DSto ctx v
  -- | Dependencies are tracked using SVar
  type Dep (ModF v ctx)        = AdrDep v ctx
  -- | The analysis of a single component runs the Scheme semantics
  -- on the body of that component
  analyze (exp, env, ctx) store = 
       let ((_, _), sto) = (eval exp >>= writeAdr (RetAdr (exp, env, ctx)))
              & runErr
              & runSto store
              & runEnv env
              & runAlloc (allocPai @ctx)
              & runAlloc (allocVec @ctx)
              & runAlloc (allocStr @ctx)
              & runAlloc (allocVar @ctx)
              & runCtx  ctx
       in undefined
  
-----------------------------------------
-- Analysis
-----------------------------------------

-- | The result of the analysis
newtype AnalysisResult v ctx = AnalysisResult (State (ModF v ctx))

-- | Analyses the given program into an analysis
-- result. It uses the default initial environment
-- as specified in `Analysis.Scheme.Primitives`
analyzeProgram :: forall v ctx wl . 
                  (WorkList wl (Component (ModF v ctx)), SchemeDomain v, SchemeConstraints v Exp (VarAdr v ctx) (Env v ctx), StoreDefinedFor v,  Ord ctx, Ord v, Hashable ctx, Hashable v, Typeable ctx, Typeable v, SchemeAlloc ctx v) 
               => Program  -- ^ the program analyse
               -> wl       -- ^ the initial contents of the worklist, can be empty. This function will add the initial component to it. 
               -> (Exp -> ctx) -- ^ context allocation function for a given expression (usually associated with a function call)
               -> AnalysisResult v ctx
analyzeProgram exp initialWl allocCtx = AnalysisResult $ runModX initialWl' (analysisStore @v analysisEnvironment)
  where initialWl' = add (exp, analysisEnvironment, allocCtx exp) initialWl
