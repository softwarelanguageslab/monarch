{-# LANGUAGE OverloadedStrings #-}
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
import qualified GHC.Show as GHC
import qualified Data.Text as T

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
data ActorRef = ActorRef Span | MainRef
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
  deriving (Ord, Eq)

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

-----------------------------------------
-- Constructing values
-----------------------------------------

instance Domain Val Literal where
  inject = \case
    IntLit i -> bottom {ints = inject i}
    BoolLit b -> bottom {bools = inject b}
    NilLit -> bottom { nil = Just () }

instance Domain Val Beh where
  inject b = bottom { behs = Set.singleton b }

instance Domain Val ActorRef where
  inject r = bottom { refs  = Set.singleton r }

nilValue :: Val
nilValue =
  bottom {nil = Just ()}

-----------------------------------------
-- Showing
-----------------------------------------

instance GHC.Show Val where
  show v = toString $ "[ " <> T.intercalate ", " (catMaybes 
    [ showSet "refs" (refs v)
    , showVal "ints" (ints v)
    , showVal "bools" (bools v)
    , showVal "nil" (nil v)
    , showSet "behs" (behs v)
    ]) <> " ]"
    where
      showVal :: (Eq a, BottomLattice a, Show a) => Text -> a -> Maybe Text
      showVal label val = 
        if val == bottom
        then Nothing
        else Just $ label <> " ↦ " <> show val

      showSet :: (Eq (Set a), BottomLattice (Set a), Show a) => Text -> Set a -> Maybe Text
      showSet label val = 
        if val == bottom
        then Nothing
        else Just $ label <> " ↦ { " <> T.intercalate "," (map show (Set.toList val)) <> " }"
