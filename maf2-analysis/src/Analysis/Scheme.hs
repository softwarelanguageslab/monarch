module Analysis.Scheme where 

import Analysis.Scheme.Primitives
import Analysis.Environment()
import Control.SVar.ModX
import Syntax.Scheme
import Domain.Scheme (SchemeDomain)

import Data.Map (Map)
import Data.Kind

-----------------------------------------
-- Shorthands
-----------------------------------------

type Program   = Exp            
type Env ctx   = Map String (SchemeAdr ctx) -- ^ the initial environment
type Sto ctx v = Map (SchemeAdr ctx) v      -- ^ non-heap allocated values
data DSto v                                 -- ^ combined store with heap allocated values

-----------------------------------------
-- Store & Environment
-----------------------------------------

-- | Union type of addresses in the store
data SchemeAdr ctx = VarAdr Ide ctx   
                   | PrmAdr String 
                   | VecAdr Exp ctx  
                   | PaiAdr Exp ctx
                   deriving (Eq, Ord)
 

-- | The initial environment used by 
-- the analysis
analysisEnvironment :: Env ctx
analysisEnvironment = initialEnv PrmAdr
 
-- | The initial store
analysisStore :: (Ord ctx) => SchemeDomain v => Env ctx -> Sto ctx v
analysisStore = initialSto

-----------------------------------------
-- ModF
-----------------------------------------

data ModF ctx
data AdrDep ctx = AdrDep (SchemeAdr ctx)

deriving instance (Eq ctx) => Eq (AdrDep ctx)
deriving instance (Ord ctx) => Ord (AdrDep ctx)

instance (Eq ctx, Ord ctx) => ModX (ModF ctx) where 
  -- A component is a closure + a context
  type Component (ModF ctx) = (Exp, Env ctx, ctx)
  -- | Global store
  type State (ModF ctx)     = DSto ctx
  -- | Dependencies are tracked using SVar
  type Dep (ModF ctx)       = AdrDep ctx  
  -- | The analysis of a single component runs the Scheme semantics
  -- on the body of that component
  analyze = undefined

-----------------------------------------
-- Analysis
-----------------------------------------

-- | The result of the analysis
newtype AnalysisResult ctx v = AnalysisResult (State (ModF ctx))

-- | Analyses the given program into an analysis
-- result. It uses the default initial environment
-- as specified in `Analysis.Scheme.Primitives`
analyzeProgram :: forall v ctx wl . 
                  (WorkList wl (Component (ModF ctx)), SchemeDomain v, Ord ctx) 
               => Program -> wl -> AnalysisResult ctx v
analyzeProgram exp initialWl = AnalysisResult $ runModX initialWl undefined

