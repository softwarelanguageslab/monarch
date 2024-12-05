module Domain.Contract.Store(MsCAdr(..), FlaAdr(..), MoαAdr(..)) where  

import Syntax.Scheme

data MsCAdr k = MsCAdr Exp k deriving (Eq, Ord, Show)
data MoαAdr k = MoαAdr Exp k deriving (Eq, Ord, Show)
data FlaAdr k = FlaAdr Exp k deriving (Eq, Ord, Show)



