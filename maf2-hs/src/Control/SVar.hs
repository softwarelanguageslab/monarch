{-# LANGUAGE AllowAmbiguousTypes, FlexibleInstances #-}
-- State variables. 
-- 
-- A state variable contains some arbitrary state `a` that can be accessed from transactions `T`. 
-- The transactions `T` can interact with the state variable by assigning new values to it, or reading its current value. 
-- These operations are executed within the context of a monad `m`. Many correct instances of such a monad could exists, however they all should satisfy the following properties: 
--
-- Given transactions T₁, T₂, ..., Tᵢ then:
-- (1) if a transaction Tᵢ writes to a state variable `s` then all other transactions `Tₖ` should observe this change. 
-- (2) the write operation is commutative, i.e., it should be able to be executed in any order and still yield the same result.
-- (3) if a transaction Tᵢ writes a value to the state variable subsumed by the current value of the state variable (according to some partial order) then 
--     no transactions should observe the change
module Control.SVar(SM(..)) where

import Data.Dynamic
import Data.Kind

-- A typeclass that keeps track of state variables, called a StateMachine (or SM)
class Ord id => SM m var id where
   type Id m :: Type
   -- | Allocate a new state variable
   alloc :: Typeable a => a -> m (var a)
   -- | Retrieve the current value of the state variable 
   deref :: forall a . Typeable a => var a -> m a
   -- | Modify the current value of the state variable; 
   modify :: forall a . (Typeable a, Eq a) => var a -> (a -> a) -> m ()
   -- | Start a new transaction using the given computation 
   transaction :: id -> m ()

