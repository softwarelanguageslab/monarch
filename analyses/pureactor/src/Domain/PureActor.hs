module Domain.PureActor
  ( -- * State space
    Adr (..),
    Env,
    Beh (..),
    ActorRef (..),

    -- * Abstract values
    Val (..),
    nilValue,
  )
where

import Domain.Class (Domain (..))
import Language.PureActor.AST (Literal (..))
import Language.PureActor.AST qualified as Syntax
import Lattice.BottomLiftedLattice (BottomLifted)
import Lattice.Class (BottomLattice (..), Joinable (..), PartialOrder (..))
import Lattice.Class qualified as L
import Lattice.ConstantPropagationLattice (CP)
import Lattice.MaybeLattice ()
import Lattice.SetLattice ()
import Lattice.UnitLattice ()
import Syntax.Ide (Ide)
import Syntax.Span
import qualified Data.Set as Set

-----------------------------------------
-- State space
-----------------------------------------

-- | Monovariant addresses
newtype Adr = Adr Span
  deriving (Ord, Eq, Show)

type Env = Map String Adr

data Beh = Beh Ide Syntax.Handlers Env
  deriving (Ord, Eq, Show)

-- | A finite representation of actor references
newtype ActorRef = ActorRef Span
  deriving (Ord, Eq, Show)

-----------------------------------------
-- Abstract values
-----------------------------------------

-- | Abstraction for program values in PureActor
data Val = Val
  { refs :: Set ActorRef,
    ints :: BottomLifted (CP Int),
    bools :: BottomLifted (CP Bool),
    nil :: Maybe (),
    behs :: Set Beh
  }
  deriving (Ord, Eq, Show)

instance PartialOrder Val where
  leq v1 v2 =
    leq (refs v1) (refs v2)
      && leq (ints v1) (ints v2)
      && leq (bools v1) (bools v2)
      && leq (behs v1) (behs v2)

instance Joinable Val where
  join v1 v2 =
    Val
      { refs = L.join (refs  v1) (refs v2),
        ints = L.join (ints v1) (ints v2),
        bools = L.join (bools v1) (bools v2),
        nil = L.join (nil v1) (nil v2),
        behs = L.join (behs v1) (behs v2)
      }

instance BottomLattice Val where
  bottom = Val bottom bottom bottom bottom bottom

instance Domain Val Literal where
  inject = \case
    IntLit i -> bottom {ints = inject i}
    BoolLit b -> bottom {bools = inject b}

instance Domain Val Beh where
  inject b = bottom { behs = Set.singleton b }

instance Domain Val ActorRef where
  inject r = bottom { refs  = Set.singleton r }

nilValue :: Val
nilValue =
  bottom {nil = Just ()}
