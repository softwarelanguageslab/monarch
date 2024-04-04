module Domain.Contract.Store(MsCAdr(..), FlaAdr(..), MoαAdr(..)) where  

import Syntax.Scheme
import Domain.Scheme.Class hiding (Exp)

data MsCAdr k = MsCAdr Exp k deriving (Eq, Ord, Show)
data MoαAdr k = MoαAdr Exp k deriving (Eq, Ord, Show)
data FlaAdr k = FlaAdr Exp k deriving (Eq, Ord, Show)

instance (Show k, Ord k) => Address (MsCAdr k)
instance (Show k, Ord k) => Address (MoαAdr k)
instance (Show k, Ord k) => Address (FlaAdr k)


