{-# LANGUAGE FlexibleContexts #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
-- | This module provides an implementation for generating unique identifiers
module Control.SVar.GenId(IdTree, IdGenT, initialTree, runIdGenT, freshId) where 

import Domain.Lattice hiding (top, split)
import Control.Monad.Join
import Control.Monad.Reader hiding (join)
import Control.Monad.State hiding (join)

--------------------------------------------------
-- Id trees
--------------------------------------------------

newtype Id = Id Int deriving (Eq, Show, Ord)
data SubIdTree = SubIdTree IdTree | Bottom deriving (Eq, Show, Ord)
data IdTree = IdTree { top :: Id, left ::  SubIdTree, right :: SubIdTree }  deriving (Show, Ord, Eq)

-- | Create an initial IdTree
initialTree :: IdTree
initialTree = IdTree (Id 0) Bottom Bottom

-- | Create a fresh identifier
fresh :: IdTree -> IdTree
fresh (IdTree (Id n) l r) = IdTree (Id $ n+1) l r

type Attach = IdTree -> IdTree
newtype IdGenT m a = IdGenT (ReaderT Attach (StateT IdTree m) a) deriving (Functor, Applicative, Monad, MonadState IdTree, MonadReader Attach)

mjoin' :: (Monad m, Joinable a, MonadJoin m) => IdGenT m a -> IdGenT m a -> IdGenT m a 
mjoin' (IdGenT ma) (IdGenT mb) = IdGenT (mjoin ma mb)

split :: (Monad m, MonadJoin m, Joinable a) => IdGenT m a -> IdGenT m a -> IdGenT m a
split ma mb = do  
   t <- get
   attach <- ask
   let initialize t = case t of { SubIdTree t -> t ; Bottom -> initialTree }
   let leftAttach  t' = IdTree (top t) (SubIdTree t') (right t)
   let rightAttach t' = IdTree (top t) (left t) (SubIdTree t')
   let returnAndAttach m = do { v <- m ; at <- ask ; modify at ; return v }
   mjoin' (local (const $ attach . leftAttach)  (put (initialize $ left t) >> returnAndAttach ma))
          (local (const $ attach . rightAttach) (put (initialize $ right t) >> returnAndAttach mb))

freshId :: (Monad m) => IdGenT m IdTree
freshId = modify fresh >> get >>= (\id -> ask >>= (return . ($ id)))


runIdGenT :: (Monad m) => IdTree -> IdGenT m a -> m (a, IdTree)
runIdGenT initial (IdGenT m) = runStateT (runReaderT m id) initial


instance (Monad m, MonadJoin m) => MonadJoin (IdGenT m) where
   mjoin = split

instance Joinable SubIdTree where
   join Bottom t = t
   join t Bottom = t
   join (SubIdTree t1) (SubIdTree t2) = SubIdTree (join t1 t2)

-- | Two trees can be joined together.
instance Joinable IdTree where
   join (IdTree nam1 l1 r1) (IdTree nam2 l2 r2) 
      | nam1 == nam2 = IdTree nam1 (join l1 l2) (join r1 r2)
      | otherwise    = IdTree (max nam1 nam2) (join l1 l2) (join r1 r2)

instance JoinLattice IdTree where 
   bottom = initialTree -- TODO
   subsumes = undefined -- TODO
