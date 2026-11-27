{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}

-- | A lattice for whether something (e.g., a key in a map, or a column in a
-- DataFrame) is present, together with its value if it may be:
--
-- >            MaybePresent v
-- >            /           \
-- >      Present v        Absent
--
-- 'Present' and 'MaybePresent' carry the value, so something that may be
-- present always has a value, and something that is absent never has one.
module Lattice.PresenceLattice (
   Presence(..),
   presentValue,
   mayBeAbsent,
) where

import Lattice.Class
import Control.DeepSeq (NFData)
import GHC.Generics (Generic)

data Presence v = Present v       -- ^ definitely present, with the given value
                | MaybePresent v  -- ^ maybe present (with the given value), maybe absent
                | Absent          -- ^ definitely absent
   deriving (Eq, Ord, Show, Generic, Functor, Foldable, Traversable)

instance (NFData v) => NFData (Presence v)

-- | The value, if it may be present
presentValue :: Presence v -> Maybe v
presentValue (Present v)      = Just v
presentValue (MaybePresent v) = Just v
presentValue Absent           = Nothing

-- | Forgets that something is definitely present (e.g., because an operation
-- may have removed it), keeping its value
mayBeAbsent :: Presence v -> Presence v
mayBeAbsent (Present v) = MaybePresent v
mayBeAbsent p           = p

instance Joinable v => Joinable (Presence v) where
   join (Present v1)      (Present v2)      = Present (join v1 v2)
   join Absent            Absent            = Absent
   join Absent            (Present v)       = MaybePresent v
   join Absent            (MaybePresent v)  = MaybePresent v
   join (Present v)       Absent            = MaybePresent v
   join (MaybePresent v)  Absent            = MaybePresent v
   join (Present v1)      (MaybePresent v2) = MaybePresent (join v1 v2)
   join (MaybePresent v1) (Present v2)      = MaybePresent (join v1 v2)
   join (MaybePresent v1) (MaybePresent v2) = MaybePresent (join v1 v2)

instance PartialOrder v => PartialOrder (Presence v) where
   leq Absent            Absent            = True
   leq Absent            (MaybePresent _)  = True
   leq (Present v1)      (Present v2)      = leq v1 v2
   leq (Present v1)      (MaybePresent v2) = leq v1 v2
   leq (MaybePresent v1) (MaybePresent v2) = leq v1 v2
   leq _                 _                 = False
