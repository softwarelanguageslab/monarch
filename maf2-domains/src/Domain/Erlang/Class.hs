module Domain.Erlang.Class(ErlangDomain(..)) where

import Syntax.Erlang
import Data.Kind

import Domain.Core
import Lattice (JoinLattice)
import Control.Monad.AbstractM

type Clo v = (Env v, [Clause])

class (NumberDomain v, IntDomain v) => ErlangDomain v where
   type Pid v :: Type
   type Env v :: Type

   -- | Inject a pid into the abstract domain
   pid :: Pid v -> v

   -- | Inject a clojure in the abstract domain
   clo :: Clo v -> v

   -- | Inject a symbol in the abstract domain
   symbol :: String -> v

   -- | Inject "nil" into the domain
   nil :: v

   -- | Returns true if the value is possibly "nil"
   isNil :: v -> Bool

   -- | Run the given function with all pids
   pids :: (JoinLattice a, AbstractM m) => (Pid v -> m a) -> v -> m a

   -- | Run the given monadic code with the 
   -- closures inside the given abstract value
   clos :: (JoinLattice a, AbstractM m) => (Clo v -> m a) -> v  -> m a

   -- | Extract all symbols from the abstract domain
   symbols :: (JoinLattice a, AbstractM m) => (String -> m a) -> v -> m a 
