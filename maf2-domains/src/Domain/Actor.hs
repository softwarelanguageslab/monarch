module Domain.Actor(Pid(..), ActorDomain(..)) where

import Data.Kind
import qualified Data.Set as Set
import Control.Monad.AbstractM
import Lattice.Class (Lattice, BottomLattice)
import Lattice.Trace (Trace(..))
import Data.Set (Set)
import Domain.Core.BoolDomain.Class (BoolDomain)
import GHC.Generics
import Control.DeepSeq
import Syntax.Span (SpanOf (spanOf))

-- | Generic representation of actor references, 
-- parametrized by their spawn site and an optional context.
data Pid e ctx
  = Pid e ctx
  | EntryPid
  deriving (Ord, Eq, Generic)

instance (SpanOf e) => Show (Pid e ctx) where
  show EntryPid = "entry"
  show (Pid e _) = show $ spanOf e

instance Ord adr => Trace adr (Pid e ctx) where
  trace = const Set.empty
instance (NFData e, NFData ctx) => NFData (Pid e ctx)

-- | A generic domain for use in Actor based languages.
-- This domain is minimal, as it only contains process identifiers (indicated by type @ARef v@). Messages are not explicitly modelled, and are assumed to be values of the analyzed programming language. For more complex actor languages such as AmbientTalk, more advanced, specific domains, can be used.
class (Ord (ARef v)) => ActorDomain v where
   -- | The type of actor reference included in abtract value `v`
   type ARef v :: Type

   -- | Inject an actor reference in the abstract domain
   aref :: ARef v -> v

   -- | Extract the set of actor references from the abstract domain
   arefs :: (AbstractM m, Lattice a) => (ARef v -> m a) -> v -> m  a

   -- | Check if the given actor value is an actor reference
   isActorRef :: (BoolDomain b, BottomLattice b) => v -> b

   -- | Extract the set of actor references from the abstract value 
   -- by returning a set of their abstract values
   arefs' :: v -> Set (ARef v)

