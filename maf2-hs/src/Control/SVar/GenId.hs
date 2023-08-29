{-# LANGUAGE FlexibleContexts #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
-- | This module provides an implementation for generating unique identifiers
module Control.SVar.GenId(IdTree, freshId) where

import Domain.Lattice hiding (split)
import Control.Monad.Reader hiding (join, mzero)
import Control.Monad.State hiding (join, mzero)
import Control.Monad.Join
import Data.Functor

-- | Identifiers are numbers
newtype Id = Id Int deriving (Eq, Show, Ord)

-- | A subtree is either bottom (meaning that there is not subtree) or recursively another tree
data SubIdTree = SubIdTree IdTree | Bottom deriving Show

-- | A tree consists of a top element and potential left and right subtrees
data IdTree = IdTree { top :: Id, left ::  SubIdTree, right :: SubIdTree }  deriving Show

-- | Create an initial IdTree
initialTree :: IdTree
initialTree = IdTree (Id 0) Bottom Bottom

-- | Create a fresh identifier
fresh :: IdTree -> IdTree
fresh (IdTree (Id n) l r) = IdTree (Id $ n+1) l r

instance Joinable SubIdTree where
   join Bottom t = t
   join t Bottom = t
   join (SubIdTree t1) (SubIdTree t2) = SubIdTree (join t1 t2)

-- | Two trees can be joined together.
instance Joinable IdTree where
   join (IdTree nam1 l1 r1) (IdTree nam2 l2 r2)
      | nam1 == nam2 = IdTree nam1 (join l1 l2) (join r1 r2)
      | otherwise    = IdTree (max nam1 nam2) (join l1 l2) (join r1 r2)

-- | Returns true if one subtree subsumes the other
subsumesSubTree :: SubIdTree -> SubIdTree -> Bool
subsumesSubTree _ Bottom = True
subsumesSubTree (SubIdTree t1) (SubIdTree t2) = subsumesTree t1 t2
subsumesSubTree _ _ = False

-- | Returns true if one true subsumes the other
subsumesTree :: IdTree -> IdTree -> Bool
subsumesTree (IdTree t1 l1 r1) (IdTree t2 l2 r2)
   | t1 == t2  = subsumesSubTree l1 l2 && subsumesSubTree r1 r2
   | otherwise = False

-- | The set of trees from a lattice
instance JoinLattice IdTree where
   bottom = initialTree
   subsumes = subsumesTree

-- | Monad that generates identifiers 
newtype IdGenT m a = IdGenT (ReaderT (IdTree -> IdTree) (StateT IdTree m) a)
   deriving (Functor, Applicative, Monad, MonadState IdTree, MonadReader (IdTree -> IdTree))

-- | Generate a fresh identifier
freshId :: (Monad m) => IdGenT m IdTree
freshId = modify fresh >> get >>= (\id -> ask <&> ($ id))

--
-- MonadJoin
--

mjoin' :: ( Joinable a, MonadJoin m) => IdGenT m a -> IdGenT m a -> IdGenT m a
mjoin' (IdGenT ma) (IdGenT mb) = IdGenT (mjoin ma mb)

split :: ( MonadJoin m, Joinable a) => IdGenT m a -> IdGenT m a -> IdGenT m a
split ma mb = do
   t <- get
   attach <- ask
   let initialize t = case t of { SubIdTree t -> t ; Bottom -> initialTree }
   let leftAttach  t' = IdTree (top t) (SubIdTree t') (right t)
   let rightAttach t' = IdTree (top t) (left t) (SubIdTree t')
   let returnAndAttach m = do { v <- m ; at <- ask ; modify at ; return v }
   mjoin' (local (const $ attach . leftAttach)  (put (initialize $ left t) >> returnAndAttach ma))
          (local (const $ attach . rightAttach) (put (initialize $ right t) >> returnAndAttach mb))

instance MonadJoin m => MonadJoin (IdGenT m) where
   mjoin = split
   mzero = IdGenT $ lift mzero
