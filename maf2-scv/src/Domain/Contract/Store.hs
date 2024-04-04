module Domain.Contract.Store(MsCAdr(..), FlaAdr(..), MoαAdr(..)) where  

import Syntax.Scheme
import Domain.Scheme.Class hiding (Exp)

data MsCAdr = MsCAdr Exp () deriving (Eq, Ord, Show)
data MoαAdr = MoαAdr Exp () deriving (Eq, Ord, Show)
data FlaAdr = FlaAdr Exp () deriving (Eq, Ord, Show)

instance Address MsCAdr
instance Address MoαAdr
instance Address FlaAdr


