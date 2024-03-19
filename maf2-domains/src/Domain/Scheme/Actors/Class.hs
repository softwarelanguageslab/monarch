module Domain.Scheme.Actors.Class(ActorDomain(..)) where

import Domain.Scheme.Class 
import Data.Kind
import Control.Monad.AbstractM
import Lattice.Class (JoinLattice)

class ActorRef a where 
   -- | The type of actor where the actor reference points to
   type Actor a :: Type

class (SchemeDomain v) => ActorDomain v where
   -- | The type of actor reference included in abtract value `v`
   type ARef v :: Type

   -- | Inject an actor reference in the abstract domain
   aref :: ARef v -> v

   -- | Extract the set of actor references from the abstract domain
   arefs :: (AbstractM m, JoinLattice a) => (ARef v -> m a) -> v -> m  a

   -- | Inject a behavior of an actor in the abstract domain
   beh  :: (Exp v, Env v) -> v

   -- | Extract behaviors from the abstract values in the domain
   withBehs :: (AbstractM m, JoinLattice a) => ((Exp v, Env v) -> m a) -> v -> m a
