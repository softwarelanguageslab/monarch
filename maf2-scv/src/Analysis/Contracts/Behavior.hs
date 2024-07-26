{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE UndecidableInstances #-}

-- TODO: this is more of a domain module, but
-- due to the matchingContracts function
-- (which requires a store to be executed)
-- it is in the analysis. See if we can move this.
module Analysis.Contracts.Behavior where

import Domain (inject)
import Analysis.Monad
import Data.Kind
import Data.Set (Set)
import qualified Data.Set as Set
import Data.TypeLevel.HMap (Assoc)
import Domain.Core
import Domain.Scheme.Actors.Contract
import Domain.Scheme.Modular
import Lattice
import qualified Data.TypeLevel.HMap as HMap
import Data.List (intercalate)

-- |  An abstraction for a behavior contract
--  'c' is the type of the behavior contract abstraction
--  while 'm' is the type of message abstraction.
--  Parameter 'v' denotes the type of the overall value domain.
--
--  In the concrete semantics the order in which the
--  message contracts are specified in the behavior contract
--  determines which contract is matched against the message
--  being received. For example if a contract with tag 'ping'
--  is defined twice in the behavior contract, the first
--  one matches the message being sent.
--
--  To abstract from this, we provide a function 'matchingContracts'
--  which returns a set of a matching message contracts according
--  to the abstraction being used.
--
--  For termination, we assume that each contract is behind a pointer
--  that corresponds to its allocation site.
class (Ord (MAdr c)) => BehaviorContract c where
  type MAdr c :: Type

  -- | Create a new behavior contract from the given
  -- list of message contracts.
  behaviorContract :: [MAdr c] -> c

  -- | Checks whether the given value is a bheavior contract
  isBehaviorContract :: BoolDomain b => c -> b

  -- | Returns all message contracts that (might) match
  -- the given tag.
  matchingContracts :: (EqualLattice v, Ord v, StoreM storeM (MAdr c) (MessageContract v)) => v -> c -> storeM (Set (MessageContract v))

-- | An abstraction of the behavior contract that does not take ordering
-- into account. We do so by representing the behavior contract as a set
-- of pointers to message contracts.
newtype UnorderedBehaviorContract ptr = UnorderedBehaviorContract {getMessageContracts :: Set ptr}
  deriving (Ord, Eq, Joinable, PartialOrder, BottomLattice, Meetable)

instance (Show ptr) => Show (UnorderedBehaviorContract ptr) where
   show (UnorderedBehaviorContract ms) = "behavior/c {" ++ intercalate "," (map show (Set.toList ms)) ++ "}"

instance Ord ptr => BehaviorContract (UnorderedBehaviorContract ptr) where
  type MAdr (UnorderedBehaviorContract ptr) = ptr
  behaviorContract = UnorderedBehaviorContract . Set.fromList
  isBehaviorContract v 
    | v == bottom = bottom
    | otherwise = inject True -- trivially true
  matchingContracts t (UnorderedBehaviorContract ms) =
    Set.fromList . filter (isTrue @(CP Bool) . eql t . tag) <$> mapM lookupAdr (Set.toList ms)

------------------------------------------------------------
-- Instance for ModularSchemeValue
------------------------------------------------------------

type IsBehaviorContract m = (
   IsSchemeValue m,
   BehaviorContract (Assoc BeCConf m),
   MAdr (Assoc BeCConf m) ~ MAdr (SchemeVal m))
     

instance (IsBehaviorContract m) => BehaviorContract (SchemeVal m) where
  type MAdr (SchemeVal m) = (Assoc PMeConf m)

  behaviorContract = SchemeVal . HMap.singleton @BeCKey . behaviorContract 
  isBehaviorContract = hasType BeCKey
  matchingContracts t = maybe (return Set.empty) (matchingContracts t) . HMap.get @BeCKey . getSchemeVal

