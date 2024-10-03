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
   isClosure    :: (Monad m, BoolDomain b) => v -> m b
   isPrimitive  :: (Monad m, BoolDomain b) => v -> m b
   isActorRef   :: (Monad m, BoolDomain b) => v -> m b
   isPair       :: (Monad m, BoolDomain b) => v -> m b
   isBoolean    :: (Monad m, BoolDomain b) => v -> m b
   isNumber     :: (Monad m, BoolDomain b) => v -> m b
   isSymbol     :: (Monad m, BoolDomain b) => v -> m b


-- | A concrete environment
type Env v = Map String (Adr v)
