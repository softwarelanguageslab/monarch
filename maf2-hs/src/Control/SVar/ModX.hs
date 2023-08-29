{-# LANGUAGE AllowAmbiguousTypes,  FlexibleInstances,  UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
module Control.SVar.ModX(ModfT, SVar, runModF, ModfComponent(..), WorklistM(..)) where

import Data.Kind
import Control.SVar
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad.Trans
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Dynamic
import Data.Maybe
import Data.Functor (($>))
import Control.Monad.State (StateT, MonadState, gets)
import qualified Control.Monad.State as State
import Control.Monad.Reader
import Control.Monad.Writer
import Control.Monad.Join
import Control.Lens
import Domain.Lattice

--
-- Sequential ModF
--

newtype ModfT id m a = ModfT ((StateT (SeqState id) m) a) deriving (Applicative, Functor, Monad)

instance MonadTrans (ModfT id) where
   lift = ModfT . lift

instance (Monad m) => MonadState (SeqState id) (ModfT id m) where
   get  = ModfT State.get
   put  = ModfT . State.put

instance (MonadJoin m) => MonadJoin (ModfT id m) where
   mjoin (ModfT ma) (ModfT mb) = undefined -- ModfT $ mjoin ma mb
   mzero = lift Control.Monad.Join.mzero

newtype ModfVar a = ModfVar Int deriving (Eq, Ord, Show)
type SVar = ModfVar

data SeqState id = SeqState {
   _fresh :: Int,
   -- The state is kept in a map from unique integers to dynamic values.
   -- Although this introduces some run-time overhead, it is necessary to store
   -- variables of different types. It remains type safe since the user still gets 
   -- a `SVar a` which is typed to an `a` and is therefore impossible to miscast.
   _state :: Map Int Dynamic,
   -- A pointer to the current transaction
   _currentTransaction :: Maybe id,
   -- A mapping from SVar identifiers to transactions, indicating that these 
   -- transactions **depend** on the value of the given SVar
   _dependencies :: Map Int [id],
   -- list of already transactions that can only be triggered with an SVar changes 
   _seen :: Set id,
   -- worklist
   _worklist :: [id]
}

$(makeLenses ''SeqState)

register :: Monad m => Int -> ModfT id m ()
register vrr = do
   current <- gets (fromJust . view currentTransaction)
   State.modify (over dependencies (Map.alter (Just . (current:) . fromMaybe []) vrr))

trigger :: forall (a :: *) id m . (Typeable a, Eq a, Monad m) => Int -> ModfT id m () -> ModfT id m ()
trigger vrr m = do
   old <- gets (fromJust . fromDynamic @a . fromJust . Map.lookup vrr . view state)
   m
   nww <- gets (fromJust . fromDynamic @a . fromJust . Map.lookup vrr . view state)
   if old == nww then return ()
   else ModfT (gets (Map.findWithDefault [] vrr . view dependencies)) >>= (\txs -> ModfT $ State.modify (over worklist (txs++)))

class ModfComponent m where
   type Id m :: Type
   component :: Control.SVar.Id m -> m a

class (Monad m) => WorklistM m id | m -> id where
   -- | Pops the next item of the worklist
   next :: m id
   -- | Checks wether the worklist is empty
   isEmpty :: m Bool

instance (Monad m, Ord id) => SM (ModfT id m) ModfVar id where
   alloc a = do
      ctr <- State.modify (over fresh (+1)) >> gets (view fresh)
      State.modify (over state (Map.insert ctr (toDyn a))) $> ModfVar ctr
   deref (ModfVar num) =
      register num >> gets (fromJust . fromDynamic . fromJust . Map.lookup num . view state)
   modify :: forall a . (Typeable a, Eq a) => ModfVar a -> (a -> a) -> ModfT id m ()
   modify (ModfVar num) f =
      trigger @a num $ State.modify (over state (Map.adjust (toDyn . f . fromJust . fromDynamic) num))
   transaction tid = do
      -- if the computation is already seen, then do not spawn it 
      isMember <- gets (Set.member tid . view seen)
      if isMember then return ()
      else do
         State.modify (over seen (Set.insert tid))
         State.modify (over worklist (tid:))

instance (Monad m) => WorklistM (ModfT id m) id where
   next = do
      wl <- gets (view worklist)
      let (fst:rest) = wl
      State.modify (over worklist (const rest))
      State.modify (over currentTransaction (const $ Just fst))
      return fst

   isEmpty = gets (null . view worklist)

--

instance (WorklistM m id) => WorklistM (ReaderT r m) id where
   next = lift next
   isEmpty = lift isEmpty

instance (WorklistM m id, Monoid w) => WorklistM (WriterT w m) id where
   next = lift next
   isEmpty = lift isEmpty

instance (WorklistM m id) => WorklistM (StateT s m) id where
   next = lift next
   isEmpty = lift isEmpty

--

initialState :: SeqState id
initialState = SeqState {
   _fresh = 0,
   _state = Map.empty,
   _currentTransaction = Nothing,
   _dependencies = Map.empty,
   _seen = Set.empty,
   _worklist = []
}


runModF :: Monad m => ModfT id m a -> m a
runModF (ModfT m) = State.evalStateT m initialState
