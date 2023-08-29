module Control.Coroutine(CoroutineT(..), MonadFork(..), runCoroutineT) where

import Control.Monad.Reader
import Control.Monad.Cont
import Control.Monad.State

newtype CoroutineT r m a = CoroutineT {runCoroutineT' :: ContT r (StateT [CoroutineT r m ()] m) a}
    deriving (Functor,Applicative,Monad,MonadCont, MonadIO, MonadReader r')

instance MonadTrans (CoroutineT r) where
   lift = CoroutineT . lift . lift

-- | Used to manipulate the coroutine queue.
getCCs :: Monad m => CoroutineT r m [CoroutineT r m ()]
getCCs = CoroutineT $ lift get

putCCs :: Monad m => [CoroutineT r m ()] -> CoroutineT r m ()
putCCs = CoroutineT . lift . put

-- | Pop and push coroutines to the queue.
dequeue :: Monad m => CoroutineT r m ()
dequeue = do
    current_ccs <- getCCs
    case current_ccs of
        [] -> return ()
        (p:ps) -> do
            putCCs ps
            p

queue :: Monad m => CoroutineT r m () -> CoroutineT r m ()
queue p = do
    ccs <- getCCs
    putCCs (ccs++[p])

-- | Monadic interface for monads that support fork and yield
class (Monad m) => MonadFork m where
   -- | Fork the current computation and run the given one in a subtask
   fork  :: m a -> m ()
   -- | Yield from the current task and schedule another
   yield :: m ()

instance (Monad m) => MonadFork (CoroutineT r m) where
   fork p = callCC $ \k -> do
       queue (k ())
       _ <- p
       dequeue
   yield = callCC $ \k -> do
       queue (k ())
       dequeue

-- | Exhaust passes control to suspended coroutines repeatedly until there isn't any left.
exhaust :: Monad m => CoroutineT r m ()
exhaust = do
    exhausted <- null <$> getCCs
    unless exhausted $ yield >> exhaust

-- | Runs the coroutines in the base monad.
runCoroutineT :: Monad m => CoroutineT r m r -> m r
runCoroutineT = flip evalStateT [] . flip runContT return . runCoroutineT' . (<* exhaust) 

-- Some instances for combining forkable computations with other effects

-- | A reader instance that runs the computation into the context
-- in which it has been forked.
instance (MonadFork m) => MonadFork (ReaderT r m) where
   fork m = ReaderT $ \r -> fork $ runReaderT m r
   yield = lift yield
