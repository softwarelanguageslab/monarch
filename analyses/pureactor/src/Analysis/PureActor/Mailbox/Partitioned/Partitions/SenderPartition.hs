{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
module Analysis.PureActor.Mailbox.Partitioned.Partitions.SenderPartition(
    SenderPartition,
    emptySenderPartition,
    senderPartitionWithSelf,
    -- * Lenses for 'SenderPartition'
    self, sent, rcvd, senderData) where

import Language.PureActor.AST (Tag)
import Domain.PureActor (ActorRef)
import Analysis.PureActor.Mailbox.Partitioned (HappensBefore(..))
import Lattice.BottomLiftedLattice (BottomLifted)
import Lattice.Class 
import Lattice.TopLiftedLattice (TopLifted)
import qualified Lattice.TopLiftedLattice as TL
import qualified Lattice.BottomLiftedLattice as BL
import qualified Lattice.Class as L
import qualified Data.Set as Set
import Control.Lens
import Text.Show (showsPrec, showString, shows)
import GHC.Show (showParen)

-- Some experimentation with partitions

------------------------------------------------------------
-- Partition definition
------------------------------------------------------------

-- | This partition encodes data from the sender of the message 
-- (i.e., what the actor reference was of the sender, what message 
-- tags it has received, what message tags it has sent)
data SenderData = SenderData {
        _self :: ActorRef,
        _sent :: Set Tag,
        _rcvd :: Set Tag
    } deriving (Show, Ord, Eq)

$(makeLenses ''SenderData)

instance PartialOrder SenderData where
    -- NOTE: TestData is not actually a lattice with a join operation
    -- as data with different actor reference cannot be joined together, 
    -- the "TopLifted" lattice is what makes it joinable.
    leq d1 d2 =   
           _self d1 == _self d2 
        && _sent d1 `leq` _sent d2
        && _rcvd d1 `leq` _rcvd d2

newtype SenderPartition = SenderPartition (TopLifted (BottomLifted SenderData))
    deriving (Ord, Eq, TopLattice, BottomLattice, PartialOrder)

------------------------------------------------------------
-- Lenses and prisms into partition
------------------------------------------------------------

-- Lens into partition
-- Prism into the inner value of TopLifted (fails on Top)
_topValue :: Prism' (TopLifted a) a
_topValue = prism' TL.Value $ \case
    TL.Value a -> Just a
    TL.Top     -> Nothing

-- Prism into the inner value of BottomLifted (fails on Bottom)
_bottomValue :: Prism' (BottomLifted a) a
_bottomValue = prism' BL.Value $ \case
    BL.Value a -> Just a
    BL.Bottom  -> Nothing

-- Iso for the SenderPartition newtype wrapper
_testPartition :: Iso' SenderPartition (TopLifted (BottomLifted SenderData))
_testPartition = coerced  -- works because it's a newtype

-- Compose into a Traversal' reaching TestData 
senderData :: Traversal' SenderPartition SenderData
senderData = _testPartition . _topValue . _bottomValue

------------------------------------------------------------
-- Auxilary constructors and patterns
------------------------------------------------------------

-- | Matches if the test partition is neither top, nor bottom and matches 
-- it with the 'TestData'.
pattern Value :: SenderData -> SenderPartition
pattern Value a = SenderPartition (TL.Value (BL.Value a))

-- | Create a 'SenderPartition' with the given 'TestData'
value :: SenderData -> SenderPartition
value = SenderPartition . TL.Value . BL.Value

-- | Create an empty partition with the 'self' set to the first argument
senderPartitionWithSelf :: ActorRef -> SenderPartition 
senderPartitionWithSelf self' = value $ SenderData self' Set.empty Set.empty

-- | Create a top partition that is concurrent with every other partition
emptySenderPartition :: SenderPartition 
emptySenderPartition = top

------------------------------------------------------------
-- Type class instances
------------------------------------------------------------

instance Joinable SenderPartition where 
    join a b 
        | bottom == a = b 
        | bottom == b = a 
        | top == a = top 
        | top == b = top 
        | otherwise = case (a, b) of 
            (Value d1, Value d2) -> 
                if _self d1 == _self d2
                then value $ d2 { _sent = L.join (_sent d1) (_sent d2),  _rcvd = L.join (_rcvd d1) (_rcvd d2) }
                else top
            -- the other case is unreachable because of the earlier predicates in the "join" definition
            (_, _) -> error "unreachable"
                    
instance HappensBefore SenderPartition where
  isBefore a b 
    | a == top || b == top = False
    | otherwise = case (a, b) of 
        (Value a', Value b') -> _self a' == _self b' && leq (_sent a') (_sent b') && leq (_rcvd a') (_rcvd b') 
        _ -> False


instance Show SenderPartition where 
    showsPrec d p
        | p == top    = showString "⊤"
        | p == bottom = showString "⊥"
        | otherwise   = case p of
            Value v -> showParen (d > 10) $
              showString "{ self: " . shows (_self v) .
              showString ", sent: "       . shows (_sent v) .
              showString ", rcvd: "       . shows (_rcvd v) .
              showString " }"
            _ -> error "unreachable"
