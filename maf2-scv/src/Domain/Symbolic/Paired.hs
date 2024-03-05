{-# LANGUAGE UndecidableInstances #-}
-- | Symbolic version of the Scheme domain
module Domain.Symbolic.Paired where

import Lattice (Joinable(..), JoinLattice(..))
import qualified Syntax.Scheme as Scheme (Exp)
import Domain
import Domain.Scheme.Class
import Control.Monad.Join
import Data.Map (Map)
import Domain.Scheme.Derived.Pair
import Symbolic.AST
import Domain.Symbolic.Class

--------------------------------------------------
-- Declaration
--------------------------------------------------

newtype SymbolicVal ptr sptr vptr pptr = SymbolicVal Proposition deriving (Eq, Ord, Show)

--------------------------------------------------
-- Lattice instances
--------------------------------------------------

instance Joinable (SymbolicVal ptr sptr vptr pptr) where
   join (SymbolicVal Bottom) (SymbolicVal p2) = SymbolicVal p2
   join (SymbolicVal p1) (SymbolicVal Bottom) = SymbolicVal p1
   join (SymbolicVal p1) (SymbolicVal p2) = SymbolicVal (Choice p1 p2)

instance JoinLattice (SymbolicVal ptr sptr vptr pptr) where
   bottom = SymbolicVal Bottom
   subsumes _ (SymbolicVal Bottom) = True
   subsumes (SymbolicVal p1) (SymbolicVal p2) = p1 == p2

------------------------------------------------------------
-- NumberDomain instance
------------------------------------------------------------

instance NumberDomain (SymbolicVal ptr sptr vptr pptr) where
   type Boo (SymbolicVal ptr sptr vptr pptr) = (SymbolicVal ptr sptr vptr pptr)
   isZero (SymbolicVal n) = return $ SymbolicVal $ Predicate "zero?/v" [n]
   random _ = return $ SymbolicVal Fresh
   plus (SymbolicVal n1) (SymbolicVal n2) =
      return $ SymbolicVal $ Predicate "+/v" [n1, n2]
   minus (SymbolicVal n1) (SymbolicVal n2) = 
      return $ SymbolicVal $ Predicate "-/v" [n1, n2]
   times (SymbolicVal n1) (SymbolicVal n2) = 
      return $ SymbolicVal $ Predicate "*/v" [n1, n2]
   div (SymbolicVal n1) (SymbolicVal n2) = 
      return $ SymbolicVal $ Predicate "//v" [n1, n2]
   expt = error "unsupported"
   lt (SymbolicVal n1) (SymbolicVal n2) = 
      return $ SymbolicVal $ Predicate "</v" [n1, n2]
   eq (SymbolicVal n1) (SymbolicVal n2) = 
      return $ SymbolicVal $ Predicate "=/v" [n1, n2]

------------------------------------------------------------
-- IntDomain instance
------------------------------------------------------------

instance Domain (SymbolicVal ptr sptr vptr pptr) Integer where
   inject = SymbolicVal . Literal . Num

instance IntDomain (SymbolicVal ptr sptr vptr pptr) where
   type Str (SymbolicVal ptr sptr vptr pptr) = ()
   -- TODO: Str SymbolicVal is problematic here since it needs to refer 
   -- to something that actually implements the string domain, perhaps
   --  it is best to move toString into the string domain? Although
   --  this creates an unnecesary dependency from the string domain
   --  to the numeric domains.
   type Rea (SymbolicVal ptr sptr vptr pptr) = SymbolicVal ptr sptr vptr pptr
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

instance Domain (SymbolicVal ptr sptr vptr pptr) Double where  
   inject n = SymbolicVal $ Literal (Rea n)

instance RealDomain (SymbolicVal ptr sptr vptr pptr) where   
   type IntR (SymbolicVal ptr sptr vptr pptr) = SymbolicVal ptr sptr vptr pptr
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

instance Domain (SymbolicVal ptr sptr vptr pptr) Bool where
   inject n = SymbolicVal $ Literal (Boo n)

instance BoolDomain (SymbolicVal ptr sptr vptr pptr) where
   isTrue  = const False -- we unknown status of whether it is fale or true, so neither is
   isFalse = const False
   not (SymbolicVal v) = SymbolicVal $ Predicate "not/v" [v]
   boolTop = SymbolicVal Fresh


------------------------------------------------------------
-- CharDomain instance
------------------------------------------------------------

instance Domain (SymbolicVal ptr sptr vptr pptr) Char where  
   inject c = SymbolicVal $ Literal (Cha c)

instance CharDomain (SymbolicVal ptr sptr vptr pptr) where
   type IntC (SymbolicVal ptr sptr vptr pptr) = SymbolicVal ptr sptr vptr pptr
   downcase  (SymbolicVal c) = return $ SymbolicVal $ Predicate "downcase/v" [c]
   upcase    (SymbolicVal c) = return $ SymbolicVal $ Predicate "upcase/v"   [c]
   charToInt (SymbolicVal c) = return $ SymbolicVal $ Predicate "as-int/v"   [c]
   isLower   (SymbolicVal _) = return bottom 
   isUpper   (SymbolicVal _) = return bottom
   charEq _ _                = return bottom
   charLt _ _                = return bottom
   charEqCI _ _              = return bottom
   charLtCI _ _              = return bottom

------------------------------------------------------------
-- SchemeDomain instance
------------------------------------------------------------

instance (Address ptr,
          Address sptr,
          Address vptr,
          Address pptr) => SchemeDomain (SymbolicVal ptr sptr vptr pptr) where
   type Adr (SymbolicVal ptr sptr vptr pptr)  = ptr
   type PAdr (SymbolicVal ptr sptr vptr pptr) = pptr
   type SAdr (SymbolicVal ptr sptr vptr pptr) = sptr
   type VAdr (SymbolicVal ptr sptr vptr pptr) = vptr

   type Exp (SymbolicVal ptr sptr vptr pptr)  = Scheme.Exp
   type Env (SymbolicVal ptr sptr vptr pptr)  = Map String ptr

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
   prim      = SymbolicVal . Variable
   prims     = const bottom
   withProc  = const . const mzero
   isInteger = const False
   isReal    = const False
   isChar    = const False
   isVecPtr  = const False
   isStrPtr  = const False
   isPaiPtr  = const False
   isClo     = const False
   isBool    = const False
   isNil     = const False
   isUnsp    = const False
   isPrim    = const False

------------------------------------------------------------
-- Symbolic value
------------------------------------------------------------

instance (SchemeValue (PairedSymbolic v ptr var)) => SymbolicValue (PairedSymbolic v ptr var) where  
   ap = undefined
   assertTrue (SchemePairedValue (l, (SymbolicVal r))) = 
      SchemePairedValue (l, SymbolicVal $ IsTrue r)
   assertFalse (SchemePairedValue (l, (SymbolicVal r))) = 
      SchemePairedValue (l, SymbolicVal $ IsFalse r)
   symbolic (SchemePairedValue (l, SymbolicVal r)) = r

------------------------------------------------------------
-- Pairing with other Scheme value
------------------------------------------------------------

type PairedSymbolic v ptr var = SchemePairedValue v (SymbolicVal var ptr ptr ptr)
