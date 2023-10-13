{-# LANGUAGE FlexibleContexts, UndecidableInstances, RankNTypes, FlexibleInstances #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Domain.Python(PyDomain(..), ModularPythonValue, Fun) where

import Data.TypeLevel.Pair
import Data.TypeLevel.HList
import Data.LabeledProduct
import Data.Functor
import Domain.Lattice
import Domain
import Syntax.Python
import Data.Kind
import Control.Monad.Join
import Data.Default
import Control.Monad.Error hiding (mzero)
import Control.Monad hiding (mzero, join)
import qualified Control.Monad as M
import Data.Maybe
import Control.Applicative (liftA2)
import Data.Set (Set)
import qualified Data.Set as Set
import Prelude hiding (div)
import Control.Monad.DomainError
import Domain.Python.ClassDomain

-- | A function that captures its environment 
type Fun a env = ([Par a Micro], Stmt a Micro, env)

class (Ord (Env v), BoolDomain v, NumberDomain v, IntDomain v, ObjectDomain (Vlu o)) => PyDomain v o a | v -> a, v -> o where
   type Env v :: Type -- TODO: this stuff can be shared with Scheme

   -- inject a function in the abstract domain
   fun :: [Par a Micro] -- ^ list of parameters of the function
       -> Stmt a Micro  -- ^ body of the function
       -> Env v         -- ^ captured lexical environment
       -> v

   -- | Synthetic value "returned" from statements
   void :: v

   -- | Injects a `None` value in the abstract domain
   none :: v

   -- | Inserts an `Elipsis` object in the abstract domain
   ellipsis :: v

   -- | Get all functions and primitives from the abstract value and apply the given monad on them
   withProc :: (MonadDomainError m, MonadJoin m) => (Either String ([Par a Micro], Stmt a Micro, Env v) -> m v) -> v -> m v

   -- | Inject an object in the abstract domain
   object :: o -> v

   -- | Inject a primitive in the abstract domain
   primitive :: String -> v

------------------------------------------------------------------------------------------------
 
data Voids       -- ^ synthetic return value for statements 
data Nones       -- ^ None
data Ellipses    -- ^ ...
data Integers    -- ^ integral numbers
data Bools       -- ^ booleans
data Funs        -- ^ a user defined function   
data Primitives  -- ^ a primitive function   
data Strings     -- ^ immutable strings
data Objects     -- ^ pointers to heap allocated objects

type ModularPythonValue i b a optr s env = Products '[
   Voids      :-> (),
   Nones      :-> (),
   Ellipses   :-> (),
   Bools      :-> b,
   Integers   :-> i,
   Funs       :-> Set ([Par a Micro], Stmt a Micro, env),
   Primitives :-> Set String,
   Strings    :-> s,
   Objects    :-> Set optr]

instance Default (ModularPythonValue i b a o s env) where
   def = empty

instance (Ord a, Ord env, Ord o, JoinLattice i, BoolDomain b, JoinLattice s) => Domain ( ModularPythonValue i b a o s env) Bool where
   inject b = insert @Bools (inject @b b) empty

instance (Ord a, Ord o, Ord env, JoinLattice i, JoinLattice s, BoolDomain b) => BoolDomain (ModularPythonValue i b a o s env) where
   -- Python supports converting any value to a boolean through its __bool__ metamethod
   -- hence, only `True` is true (or its top equivalent) and only `False` is false.
   isTrue = isTrue . fromMaybe bottom .  get @Bools
   isFalse = isFalse . fromMaybe bottom . get @Bools
   not = toMod . Domain.not . fromMaybe bottom . get @Bools
      where toMod = singleton @Bools
   boolTop = singleton @Bools boolTop

-- inject a number from the subdomain into the wrapper
numToMod :: i -> ModularPythonValue i b a o s env
numToMod = singleton @Integers

-- Extracts an integer from the abstract domain
int :: ( MonadDomainError m, MonadJoin m, JoinLattice i) => ModularPythonValue i b a o s env -> m i
int = with @(L '[Integers]) (\(i ::: ()) -> maybe mzero return i) (raiseError (DomainError "not an integer"))

instance ( NumberDomain i, JoinLattice i, Boo i ~ b) => NumberDomain (ModularPythonValue i b a o s env) where
   type Boo (ModularPythonValue i b a o s env) = ModularPythonValue i b a o s env
   isZero = (int >=> isZero) >=> return . toMod
      where toMod = singleton @Bools
   random = (int >=> random) >=> return . numToMod
   plus a b = M.join (liftA2 plus (int a) (int b)) <&> numToMod
   minus a b = M.join (liftA2 minus (int a) (int b)) <&> numToMod
   times a b = M.join (liftA2 times (int a) (int b)) <&> numToMod
   div a b = M.join (liftA2 div (int a) (int b)) <&> numToMod
   expt a b = M.join (liftA2 expt (int a) (int b)) <&> numToMod
   lt a b = M.join (liftA2 lt (int a) (int b)) <&> toMod
      where toMod = singleton @Bools
   equals a b = M.join (liftA2 equals (int a) (int b)) <&> toMod
      where toMod = singleton @Bools


instance (Ord a, Ord o, Ord env, IntDomain i, JoinLattice b, JoinLattice s) => Domain (ModularPythonValue i b a o s env) Integer where
   inject = singleton @Integers . inject
instance (Ord a, Ord o, Ord env, IntDomain i, JoinLattice b, JoinLattice s, Boo i ~ b) => IntDomain (ModularPythonValue i b a o s env) where
   type Str (ModularPythonValue i b a o s env) = ModularPythonValue i b a o s env
   type Rea (ModularPythonValue i b a o s env) = ModularPythonValue i b a o s env
   toReal _ = raiseError (DomainError "cannot convert to real")
   toString _ = raiseError (DomainError "cannot conver to string")
   quotient a b = M.join (liftA2 quotient (int a) (int b)) <&> numToMod
   modulo a b = M.join (liftA2 modulo (int a) (int b)) <&> numToMod
   remainder a b = M.join (liftA2 remainder (int a) (int b)) <&> numToMod

instance (Ord a, Ord o, Ord env, IntDomain i, BoolDomain b, Boo i ~ b, ObjectDomain (Vlu o), JoinLattice s) => PyDomain (ModularPythonValue i b a o s env) o a where
   type Env (ModularPythonValue i b a o s env) = env
   fun par suit env =
      singleton @Funs (Set.singleton (par, suit, env))
   void = singleton @Voids ()
   none = singleton @Nones ()
   ellipsis =  singleton @Ellipses ()
   primitive p = singleton @Primitives (Set.singleton p)
   withProc f = with @(L '[Funs, Primitives]) select failure
      where select  (funs ::: primitives ::: ()) =
               mjoin (maybe mzero (Set.foldr (mjoin . f . Right) mzero) funs)
                     (maybe mzero (Set.foldr (mjoin . f . Left)  mzero) primitives)
            failure = raiseError (DomainError "value not a callable")

   object = singleton @Objects . Set.singleton


