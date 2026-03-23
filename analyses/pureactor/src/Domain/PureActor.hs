module Domain.PureActor(
    -- * State space
    Adr(..),
    Env,
    Behavior(..),
    ActorRef(..),
    -- * Abstract values
    Val(..),
    nilValue
  ) where

import Syntax.Span
import Lattice.ConstantPropagationLattice (CP)
import Lattice.Class (PartialOrder(..), Joinable(..), BottomLattice (..))
import Lattice.SetLattice ()
import Lattice.MaybeLattice ()
import Lattice.UnitLattice ()
import qualified Lattice.Class as L
import Lattice.BottomLiftedLattice (BottomLifted)
import Language.PureActor.AST (Literal (..), Expr)
import Domain.Class (Domain(..))


-----------------------------------------
-- State space
-----------------------------------------

-- | Monovariant addresses
newtype Adr = Adr Span
        deriving (Ord, Eq, Show)

type Env = Map String Adr

data Behavior = Behavior Expr Env
              deriving (Ord, Eq, Show)

-- | A finite representation of actor references
newtype ActorRef = ActorRef Span
  deriving (Ord, Eq, Show)

-----------------------------------------
-- Abstract values
-----------------------------------------

-- | Abstraction for program values in PureActor
data Val = Val {
    actors     :: Set ActorRef,
    ints       :: BottomLifted (CP Int),
    bools      :: BottomLifted (CP Bool),
    nil        :: Maybe (),
    behs  :: Set Behavior
  } deriving (Ord, Eq, Show)

instance PartialOrder Val where
  leq v1 v2 = leq (actors v1) (actors v2)
           && leq (ints v1)   (ints v2)
           && leq (bools v1)  (bools v2)
           && leq (behs v1)   (behs v2)

instance Joinable Val where
  join v1 v2 = Val {
      actors = L.join (actors v1) (actors v2),
      ints   = L.join (ints v1)   (ints v2),
      bools  = L.join (bools v1)  (bools v2),
      nil    = L.join (nil v1) (nil v2),
      behs   = L.join (behs v1) (behs v2)
    }

instance BottomLattice Val where
  bottom = Val bottom bottom bottom bottom bottom

instance Domain Val Literal where
  inject = \case IntLit i -> bottom { ints = inject i }
                 BoolLit b -> bottom { bools = inject b }

nilValue :: Val
nilValue =
  bottom { nil = Just () }
