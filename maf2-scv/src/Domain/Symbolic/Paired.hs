{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE PolyKinds #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}
-- | Symbolic version of the Scheme domain
module Domain.Symbolic.Paired where

import Lattice (EqualLattice(..))
import Domain
import Control.Monad.Join
import Data.Map (Map)
import qualified Data.List as List
import Symbolic.AST
import Syntax.Span
import Domain.Symbolic.Class
import Lattice.Class
import Data.Kind
import qualified Data.Set as Set
import Domain.Actor
import Control.DeepSeq
import Data.HashMap.Strict (HashMap)
import Lattice.Trace (Trace (..))

--------------------------------------------------
-- Declaration
--------------------------------------------------

newtype SymbolicVal (exp :: Type) (k :: Type) (i :: Type) (v :: Type) = SymbolicVal { proposition :: Proposition i  } 
                    deriving (Eq, Ord, NFData)


instance Show i => Show (SymbolicVal exp k i v) where  
   show = show . proposition

--------------------------------------------------
-- Lattice instances
--------------------------------------------------

instance (Ord i, Eq i) => Joinable (SymbolicVal exp k i v) where
   join (SymbolicVal Bottom) (SymbolicVal p2) = SymbolicVal p2
   join (SymbolicVal p1) (SymbolicVal Bottom) = SymbolicVal p1
   join (SymbolicVal p1) (SymbolicVal p2) 
      | p1 == p2 = SymbolicVal p1 
      | otherwise = SymbolicVal (Fresh (Set.union (variables p1) (variables p2)))

instance BottomLattice (SymbolicVal exp k n v) where
   bottom = SymbolicVal Bottom

instance (Eq i) => PartialOrder (SymbolicVal exp k i v) where
   subsumes _ (SymbolicVal Bottom) = True
   subsumes (SymbolicVal p1) (SymbolicVal p2) = p1 == p2

instance TopLattice (SymbolicVal exp k n v) where  
   top = SymbolicVal (Fresh Set.empty)

instance Meetable (SymbolicVal exp k i v) where 
   meet = error "TODO: meet is not implemented"

------------------------------------------------------------
-- AddressWithCtx
------------------------------------------------------------

-- NOTE: Propositions currently don't have contexts, but might
-- have in the future through symbolic variables i

instance AddressWithCtx ctx (SymbolicVal exp k i v) where
   replaceCtx = const id

------------------------------------------------------------
-- Traceability
------------------------------------------------------------

instance (Ord adr) => Trace adr (SymbolicVal exp k i v) where
   trace = const Set.empty


------------------------------------------------------------
-- NumberDomain instance
------------------------------------------------------------

simplifyArith :: String -> (forall a . Num a => a -> a -> a) -> Proposition i -> Proposition i -> Proposition i
simplifyArith _ f (Literal (Num n1)) (Literal (Num n2)) = Literal $ Num $ f n1 n2
simplifyArith _ f (Literal (Rea n1)) (Literal (Rea n2)) = Literal $ Rea $ f n1 n2
simplifyArith _ f (Literal (Rea n1)) (Literal (Num n2)) = Literal $ Rea $ f n1 (fromInteger n2)
simplifyArith _ f (Literal (Num n1)) (Literal (Rea n2)) = Literal $ Rea $ f (fromInteger n1) n2
simplifyArith op _ n1 n2 = Predicate op [n1, n2]

simplifyBool :: String -> (forall a . (Ord a, Num a) => a -> a -> Bool) -> Proposition i -> Proposition i -> Proposition i
simplifyBool _ f (Literal (Num n1)) (Literal (Num n2)) = Literal $ Boo $ f n1 n2
simplifyBool _ f (Literal (Rea n1)) (Literal (Rea n2)) = Literal $ Boo $ f n1 n2
simplifyBool _ f (Literal (Rea n1)) (Literal (Num n2)) = Literal $ Boo $ f n1 (fromInteger n2)
simplifyBool _ f (Literal (Num n1)) (Literal (Rea n2)) = Literal $ Boo $ f (fromInteger n1) n2
simplifyBool op _ n1 n2 = Predicate op [n1, n2]

instance (Eq i, Ord i) => NumberLattice (SymbolicVal exp k i v)
                                       {- bln -} (SymbolicVal exp k i v)  where
   isZero (SymbolicVal n) = return $ SymbolicVal $ Predicate "zero?/v" [n]
   random _ = return $ SymbolicVal (Fresh Set.empty)
   plus (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ simplifyArith "+/v" (+) n1 n2
   minus (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ simplifyArith "-/v" (-) n1 n2
   times (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ simplifyArith "*/v" (*) n1 n2
   div (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "//v" [n1, n2]
   expt = error "unsupported"
   lt (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ simplifyBool "</v" (<) n1 n2
   eq (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ simplifyBool ">/v" (>) n1 n2

------------------------------------------------------------
-- IntDomain instance
------------------------------------------------------------

instance (Ord i, Eq i) => Domain (SymbolicVal exp k i v) Integer where
   inject = SymbolicVal . Literal . Num

type instance StrDom (SymbolicVal exp k i v) = (StrDom v)

-- TODO: Str SymbolicVal is problematic here since it needs to refer 
-- to something that actually implements the string domain, perhaps
--  it is best to move toString into the string domain? Although
--  this creates an unnecesary dependency from the string domain
--  to the numeric domains.
instance (Eq i, Ord i, StrDom v ~ vs) => IntLattice (SymbolicVal exp k i v)
                                    {- bln -} (SymbolicVal exp k i v)
                                    {- str -} vs
                                    {- rea -} (SymbolicVal exp k i v) where
   toReal (SymbolicVal n1) = return $ SymbolicVal $ Predicate "as-real/v" [n1]
   toString = undefined
   quotient (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "quotient/v" [n1, n2]
   modulo (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "modulo/v" [n1, n2]
   remainder (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "remainder/v" [n1, n2]


------------------------------------------------------------
-- RealDomain instance
------------------------------------------------------------

instance (Eq i, Ord i) => Domain (SymbolicVal exp k i v) Double where
   inject n = SymbolicVal $ Literal (Rea n)

instance (Eq i, Ord i) => RealLattice (SymbolicVal exp k i v)
                                     {- bln -} (SymbolicVal exp k i v)
                                     {- int -} (SymbolicVal exp k i v)  where
   toInt (SymbolicVal n1)   = return $ SymbolicVal $ Predicate "as-int/v"   [n1]
   ceiling (SymbolicVal n1) = return $ SymbolicVal $ Predicate "ceiling/v"  [n1]
   floor (SymbolicVal n1)   = return $ SymbolicVal $ Predicate "floor/v"    [n1]
   round (SymbolicVal n1)   = return $ SymbolicVal $ Predicate "round/V"    [n1]
   log (SymbolicVal n1)     = return $ SymbolicVal $ Predicate "log/v"      [n1]
   sin (SymbolicVal n1)     = return $ SymbolicVal $ Predicate "sin/v"      [n1]
   asin (SymbolicVal n1)    = return $ SymbolicVal $ Predicate "asin/v"     [n1]
   cos (SymbolicVal n1)     = return $ SymbolicVal $ Predicate "cos/v"      [n1]
   acos (SymbolicVal n1)    = return $ SymbolicVal $ Predicate "acos/v"     [n1]
   tan (SymbolicVal n1)     = return $ SymbolicVal $ Predicate "tan/v"      [n1]
   atan (SymbolicVal n1)    = return $ SymbolicVal $ Predicate "atan/v"     [n1]
   sqrt (SymbolicVal n1)    = return $ SymbolicVal $ Predicate "sqrt/v"     [n1]

------------------------------------------------------------
-- BoolDomain instance
------------------------------------------------------------

instance (Eq i, Ord i) => Domain (SymbolicVal exp k i v) Bool where
   inject n = SymbolicVal $ Literal (Boo n)

instance (Eq i, Ord i) => BoolLattice (SymbolicVal exp k i v) where
   isTrue  = const False -- unknown status of whether it is fale or true, so neither is
   isFalse = const False
   not (SymbolicVal v) = SymbolicVal $ Predicate "not/v" [v]
   or  (SymbolicVal a) (SymbolicVal b)  = SymbolicVal $ simplify $ Predicate "or?/v" [a, b]
   and (SymbolicVal a) (SymbolicVal b) = SymbolicVal $ simplify $ Predicate "and?/v"  [a, b]

------------------------------------------------------------
-- CharDomain instance
------------------------------------------------------------

instance (Eq i, Ord i) => Domain (SymbolicVal exp k i v) Char where
   inject c = SymbolicVal $ Literal (Cha c)

instance (Eq i, Ord i) => CharLattice (SymbolicVal exp k i v)
                                     {- int -} (SymbolicVal exp k i v)  where
   downcase  (SymbolicVal c) = return $ SymbolicVal $ Predicate "downcase/v" [c]
   upcase    (SymbolicVal c) = return $ SymbolicVal $ Predicate "upcase/v"   [c]
   charToInt (SymbolicVal c) = return $ SymbolicVal $ Predicate "as-int/v"   [c]
   isLower   (SymbolicVal _) = mbottom 
   isUpper   (SymbolicVal _) = mbottom
   charEq _ _                = mbottom
   charLt _ _                = mbottom
   charEqCI _ _              = mbottom
   charLtCI _ _              = mbottom


------------------------------------------------------------
-- SchemeDomain instance
------------------------------------------------------------

type ForAllAdress (c :: Type -> Constraint) v = (c (Adr v))

instance (Ord exp, Ord k, Show exp, ForAllAdress Show v, ForAllAdress Eq v, ForAllAdress Ord v, Show k, Eq i, Ord i) => SchemeDomain (SymbolicVal exp k i v) where
   type Adr  (SymbolicVal exp k i v) = Adr v

   type Exp (SymbolicVal exp k i v)  = exp
   type Env (SymbolicVal exp k i v)  = HashMap String (Adr v)

   pptr      = const bottom
   vptr      = const bottom
   sptr      = const bottom
   pptrs     = return . const bottom
   vptrs     = return . const bottom
   sptrs     = return . const bottom
   injectClo = const bottom
   clos      = const bottom
   nil       = SymbolicVal $ Literal Nil
   unsp      = SymbolicVal $ Literal Unsp
   prim      = SymbolicVal . Function . (++"/v")
   prims     = const bottom
   withProc  = const . const mbottom
   isInteger = SymbolicVal . simplify . Predicate "integer?/v" . List.singleton . proposition 
   isReal    = SymbolicVal . simplify . Predicate "real?/v" . List.singleton . proposition 
   isChar    = SymbolicVal . simplify . Predicate "character?/v" . List.singleton . proposition 
   isVecPtr  = const bottom -- SymbolicVal . simplify . Predicate "vector?/v" . List.singleton . proposition 
   isStrPtr  = SymbolicVal . simplify . Predicate "string?/v" . List.singleton . proposition 
   isSymbol  = SymbolicVal . simplify . Predicate "symbol?/v" . List.singleton . proposition 
   isPaiPtr  = SymbolicVal . simplify . Predicate "pair?/v" . List.singleton . proposition 
   isClo     = const bottom -- SymbolicVal . simplify . Predicate "closure?/v" . List.singleton . proposition 
   isBool    = SymbolicVal . simplify . Predicate "boolean?/v" . List.singleton . proposition 
   isNil     = SymbolicVal . simplify . Predicate "null?/v" . List.singleton . proposition 
   isUnsp    = SymbolicVal . simplify . Predicate "unsp?/v" . List.singleton . proposition 
   isPrim    = const bottom -- SymbolicVal . simplify . Predicate "primitive?/v" . List.singleton . proposition 
   symbols   = const bottom
   symbol    = SymbolicVal . Literal . Sym

------------------------------------------------------------
-- Actor domain
------------------------------------------------------------

-- | Constraints that have to be satisfied for 
class SymbolicARef a where 
   -- | Compute the symbolic identity of the given value
   identity :: a -> Proposition i

instance (SpanOf exp) => SymbolicARef (Pid exp ctx) where
   identity EntryPid   = Literal $ Actor Nothing
   identity (Pid e _)  = Literal $ Actor (Just $ spanOf e)

-- | An instance of the actor domain is defined for symbolic
-- values is defined if the actor reference used in the underlying 
-- Scheme domain supports representing its identity as a proposition
instance (ActorDomain v, SymbolicARef (ARef v), SchemeValue (PairedSymbolic v exp k i)) => ActorDomain (PairedSymbolic v exp k i) where
   type ARef (PairedSymbolic v exp k i) = (ARef v)
   
   aref ref' = SchemePairedValue (aref ref', SymbolicVal $ identity ref')
   arefs f   = arefs f . leftValue 
   arefs'    = arefs'  . leftValue

   -- TODO: do we need to symbolically represent a behavior as well?

   -- XXX: the constraint is problematic in `ActorDomain` we actually **want** 
   -- a `Boo` type family member so that limit it to a symbolic domain here.
   isActorRef v = isActorRef (leftValue v)
   -- SchemePairedValue (isActorRef (leftValue v), SymbolicVal $ Predicate "actor?/v" [proposition $ rightValue v])

------------------------------------------------------------
-- Symbolic value
------------------------------------------------------------

instance (EqualLattice v, BottomLattice v, BoolDomain v, SchemeValue (PairedSymbolic v exp k i), Ord i) => SymbolicValue (PairedSymbolic v exp k i) i where
   type Abstract (PairedSymbolic v exp k i) = v 
   type Symbolic (PairedSymbolic v exp k i) = SymbolicVal exp k i v

   combine         = curry SchemePairedValue
   abstractValue   = leftValue
   symbolicValue   = rightValue

   ap f ags res =
      SchemePairedValue (leftValue res, SymbolicVal $ Application (proposition $ rightValue f) (map (proposition . rightValue) ags))
   assertTrue (SchemePairedValue (l, SymbolicVal r)) =
      SchemePairedValue (l, SymbolicVal $ simplify $ IsTrue r)
   assertFalse (SchemePairedValue (l, SymbolicVal r)) =
      SchemePairedValue (l, SymbolicVal $ simplify $ IsFalse r)
   symbolic (SchemePairedValue (_, SymbolicVal r)) = r
   var idx vlu =
      SchemePairedValue (leftValue vlu, SymbolicVal $ Variable idx)
   equal a b = 
      SchemePairedValue (eql (leftValue a) (leftValue b), SymbolicVal (Predicate "equal?/v" [proposition $ rightValue a, proposition $ rightValue b]))
   unsymbolic (SchemePairedValue (v, _)) = 
      SchemePairedValue (v, SymbolicVal (Fresh Set.empty)) 

------------------------------------------------------------
-- Equality
------------------------------------------------------------

instance (EqualLattice v) => EqualLattice (PairedSymbolic v exp k i) where 
   -- TODO: we might want to introduce a symbolic constraint here,
   -- but we cannot do this currently since a generic 'b' is expected
   -- that satisfies BoolDomain
   eql a b = 
      eql (leftValue a) (leftValue b)

------------------------------------------------------------
-- Tracing
------------------------------------------------------------

------------------------------------------------------------
-- Pairing with other Scheme value
------------------------------------------------------------

type PairedSymbolic v expr k i = SchemePairedValue v (SymbolicVal expr k i v)
