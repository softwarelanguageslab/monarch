module Domain.SimpleActor.Class (ValueDomain(..), Env) where

import Lattice (EqualLattice, BottomLattice)
import Domain.Core.NumberDomain.Class
import Domain.Core.BoolDomain.Class
import Data.Map (Map)
import Data.Set (Set)
import Syntax.AST
import Data.Kind

class (Show v, EqualLattice v, IntDomain v, BoolDomain v, BottomLattice v) => ValueDomain v where
   type Adr  v  :: Type
   type ARef v  :: Type

   -- Constructors
   pair      :: v -> v -> v
   closure   :: Exp -> Env v -> v
   primitive :: String -> v
   actorRef  :: ARef v -> v
   boolean   :: Bool -> v
   number    :: Integer -> v
   symbol    :: String -> v
   nil       :: v
   label     :: Label -> v

   -- Accessors

   closures :: v -> Set (Exp, Env v)
   primitives :: v -> Set String
   actorRefs  :: v -> Set (ARef v)
   pairs :: v -> Set (v, v)
   labels :: v -> Set Label

   -- Predicates
   isClosure    :: BoolDomain b => v -> m b
   isPrimitive  :: BoolDomain b => v -> m b
   isActorRef   :: BoolDomain b => v -> m b
   isPair       :: BoolDomain b => v -> m b
   isBoolean    :: BoolDomain b => v -> m b
   isNumber     :: BoolDomain b => v -> m b
   isSymbol     :: BoolDomain b => v -> m b


-- | A concrete environment
type Env v = Map String (Adr v)
