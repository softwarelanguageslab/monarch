module Analysis.Monad.FunctionCharacteristics where 


import Lattice ()
import Control.Monad.State ( StateT, MonadState )
import qualified Control.Monad.State as State 
import Control.Monad.Trans.State (runStateT)
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Trans (MonadTrans)
import Control.Monad.Join

class (Monad m) => CharacteristicsM t m where 
    addCharacteristic :: t -> m ()

newtype CharacteristicsT t m a = CharacteristicsT (StateT [t] m a)
    deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadJoinable, MonadState [t])

instance {-# OVERLAPPING #-} (Monad m) => CharacteristicsM t (CharacteristicsT t m) where 
    addCharacteristic x = State.modify (++ [x])

instance (CharacteristicsM t m, Monad (l m), MonadLayer l) => CharacteristicsM t (l m) where 
    addCharacteristic x = upperM $ addCharacteristic x

runWithCharacteristic :: CharacteristicsT t m a -> m (a, [t]) 
runWithCharacteristic (CharacteristicsT m) = runStateT m []