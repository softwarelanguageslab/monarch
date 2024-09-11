module Domain.Scheme.Actors.Class(ActorDomain(..), Pid(..)) where

import Domain.Scheme.Class 
import Data.Kind
import Control.Monad.AbstractM
import Lattice.Class (Lattice)
import Data.Set (Set)
import Domain.Core.NumberDomain (Boo)

-- | Representation of actor references, 
-- parametrized by their spawn site.
data Pid e ctx
  = Pid e ctx
  | EntryPid
  deriving (Ord, Eq, Show)

-- TODO: should split this into multiple type classes 
-- since not all actor languages have behaviors. 
-- For example, in Erlang processes are spawned 
-- using a lambda. 
-- | Extension of the Scheme domain with actor references
-- and behaviors.
class (SchemeDomain v) => ActorDomain v where
   -- | The type of actor reference included in abtract value `v`
   type ARef v :: Type

   -- | Inject an actor reference in the abstract domain
   aref :: ARef v -> v

   -- | Extract the set of actor references from the abstract domain
   arefs :: (AbstractM m, Lattice a) => (ARef v -> m a) -> v -> m  a

   -- | Check if the given actor value is an actor reference
   isActorRef :: v -> Boo v

   -- | Extract the set of actor references from the abstract value 
   -- by returning a set of their abstract values
   arefs' :: v -> Set (ARef v)

   -- | Inject a behavior of an actor in the abstract domain
   beh  :: (Exp v, Env v) -> v

   -- | Extract behaviors from the abstract values in the domain
   withBehs :: (AbstractM m, Lattice a) => ((Exp v, Env v) -> m a) -> v -> m a
