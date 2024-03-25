module Analysis.Contracts.Behavior where 

import Data.Set (Set)
import qualified Data.Set as Set
import Lattice
import Analysis.Monad
import Domain.Scheme.Actors.Contract
import Domain.Core

-- | An abstraction for a behavior contract
-- 'c' is the type of the behavior contract abstraction
-- while 'm' is the type of message abstraction.
-- Parameter 'v' denotes the type of the overall value domain.
--
-- In the concrete semantics the order in which the 
-- message contracts are specified in the behavior contract
-- determines which contract is matched against the message 
-- being received. For example if a contract with tag 'ping'
-- is defined twice in the behavior contract, the first
-- one matches the message being sent. 
--
-- To abstract from this, we provide a function 'matchingContracts'
-- which returns a set of a matching message contracts according 
-- to the abstraction being used. 
-- 
-- For termination, we assume that each contract is behind a pointer
-- that corresponds to its allocation site. 
class BehaviorContract c v ptr | c -> v ptr where
   -- | Create a new behavior contract from the given 
   -- list of message contracts. 
   behaviorContract  :: [ptr] -> c

   -- | Returns all message contracts that (might) match
   -- the given tag.
   matchingContracts :: StoreM storeM t ptr (MessageContract v) => v -> c -> storeM (Set (MessageContract v))


-- | An abstraction of the behavior contract that does not take ordering
-- into account. We do so by representing the behavior contract as a set
-- of pointers to message contracts. 
newtype UnorderedBehaviorContract v ptr = UnorderedBehaviorContract { getMessageContracts ::  Set ptr }
                                      deriving (Ord, Eq, Joinable, JoinLattice)


instance (Ord ptr, Ord v, EqualLattice v) => BehaviorContract (UnorderedBehaviorContract v ptr) v ptr where
   behaviorContract  = UnorderedBehaviorContract . Set.fromList
   matchingContracts t (UnorderedBehaviorContract ms) =
      Set.fromList . filter (isTrue @(CP Bool) . eql t . tag) <$> mapM lookupAdr (Set.toList ms)
