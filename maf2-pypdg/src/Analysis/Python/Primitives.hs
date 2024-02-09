{-# LANGUAGE StandaloneKindSignatures #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE PolyKinds #-}

module Analysis.Python.Primitives (
  applyPrim, 
  PyPrmKey(..),
  SPyPrmKey(..),
) where

import Lattice hiding (insert)
import Domain (Domain, BoolDomain, NumberDomain, IntDomain, RealDomain, StringDomain, CPDictionary)
import qualified Domain
import Analysis.Python.Syntax hiding (Dict)
import Analysis.Python.Monad 
import Analysis.Python.Infrastructure hiding (PyConstant(..))
import Analysis.Python.Common 
import Data.TypeLevel.HMap (Assoc, All, ForAllOf, ForAll(..), Dict(..), AllAtKey1, genHKeys, AtKey1, withC_)
import Domain.Core.HMapDomain (HMapDomain)
import qualified Domain.Core.HMapDomain as HMapDomain
import Domain.Core.SeqDomain (SeqDomain)
import qualified Domain.Core.SeqDomain as SeqDomain
import Control.Monad.Join
import Control.Monad.DomainError

import Prelude hiding (lookup, exp, True, False, seq, length, all)
import Data.Singletons.TH
import Control.Monad (liftM2)
import qualified Control.Monad as Monad 
import Data.Maybe (fromJust)
import Data.Kind (Type, Constraint)

data PyPrmKey = IntPrm
              | ReaPrm 
              | BlnPrm
              | StrPrm
              | PrmPrm
              | CloPrm
              | BndPrm
              | TupPrm
              | LstPrm
  deriving (Eq, Ord)

genHKeys ''PyPrmKey

data AbsJoinLattice obj :: k ~> Constraint
type instance Apply (AbsJoinLattice obj) k = JoinLattice (Abs obj k)

class (
    ForAll PyPrmKey (AbsJoinLattice obj),
    IntDomain     (Abs obj IntPrm),
    Domain.Boo    (Abs obj IntPrm) ~ Abs obj BlnPrm, 
    Domain.Rea    (Abs obj IntPrm) ~ Abs obj ReaPrm,
    Domain.Str    (Abs obj IntPrm) ~ Abs obj StrPrm, 
    RealDomain    (Abs obj ReaPrm),
    Domain.Boo    (Abs obj ReaPrm) ~ Abs obj BlnPrm,
    StringDomain  (Abs obj StrPrm)
  ) 
  => 
  PyObj obj where
    type Abs obj (k :: PyPrmKey) :: Type
    has :: forall k b . (BoolDomain b, SingI k) => obj -> b  
    get :: forall k . (SingI k) => obj -> Abs obj k
    from :: forall k . (SingI k) => Abs obj k -> obj 
  -- TODO[?]: could abstract getAttr and setAttr here as well ...

at :: forall (k :: PyPrmKey) obj pyM . (PyM pyM obj, PyObj obj, SingI k) => obj -> pyM (Abs obj k)
at obj = withC_ @(AbsJoinLattice obj) getField s 
  where s = sing @k        
        getField :: JoinLattice (Abs obj k) => pyM (Abs obj k)
        getField = condCP (return $ has @_ @k obj)
                          (return $ get @_ @k obj)
                          (escape WrongType) 

applyPrim :: forall pyM obj . (PyM pyM obj, PyObj obj) => PyPrim -> PyExp -> [PyVal] -> pyM PyVal
-- int primitives
applyPrim IntAdd        = prim2 $ intBinop' Domain.plus 
applyPrim IntSub        = prim2 $ intBinop' Domain.minus
applyPrim IntMul        = prim2 $ intBinop' Domain.times  
applyPrim IntTrueDiv    = prim2 $ intBinop @ReaPrm @ReaPrm intDiv Domain.div 
  where intDiv a b = Monad.join $ liftM2 Domain.div (Domain.toReal a) (Domain.toReal b)
applyPrim IntEq         = prim2 $ intBinop'' @BlnPrm Domain.eq
applyPrim IntNe         = prim2 $ intBinop'' @BlnPrm Domain.ne 
applyPrim IntLt         = prim2 $ intBinop'' @BlnPrm Domain.lt
applyPrim IntGt         = prim2 $ intBinop'' @BlnPrm Domain.gt
applyPrim IntLe         = prim2 $ intBinop'' @BlnPrm Domain.le
applyPrim IntGe         = prim2 $ intBinop'' @BlnPrm Domain.ge 
-- float primitives
applyPrim FloatAdd      = prim2 $ floatBinop @ReaPrm Domain.plus
applyPrim FloatSub      = prim2 $ floatBinop @ReaPrm Domain.minus
applyPrim FloatMul      = prim2 $ floatBinop @ReaPrm Domain.times
applyPrim FloatTrueDiv  = prim2 $ floatBinop @ReaPrm Domain.div    
applyPrim FloatEq       = prim2 $ floatBinop @BlnPrm Domain.eq 
applyPrim FloatNe       = prim2 $ floatBinop @BlnPrm Domain.ne
applyPrim FloatLt       = prim2 $ floatBinop @BlnPrm Domain.lt 
applyPrim FloatGt       = prim2 $ floatBinop @BlnPrm Domain.gt 
applyPrim FloatLe       = prim2 $ floatBinop @BlnPrm Domain.le
applyPrim FloatGe       = prim2 $ floatBinop @BlnPrm Domain.ge 


-- HELPERS FOR THE PRIMITIVES -- 

prim0 :: forall r pyM obj . (PyM pyM obj, PyObj obj, SingI r)  
        => pyM (Abs obj r)                  -- ^ the primitive function
        -> (PyExp -> [PyVal] -> pyM PyVal)  -- ^ the resulting function   
prim0 f pos [] = allocObj pos . from @_ @r =<< f 
prim0 _ _   _  = escape ArityError 

prim1 :: forall a r pyM obj. (PyM pyM obj, PyObj obj, SingI a, SingI r)
        => (Abs obj a -> pyM (Abs obj r))   -- ^ the primitive function
        -> (PyExp -> [PyVal] -> pyM PyVal)  -- ^ the resulting function 
prim1 f pos [a1] = allocObj pos . from @_ @r =<< f =<< at @a =<< deref' a1
prim1 _ _   _    = escape ArityError  

prim2 :: PyM pyM obj
        => (obj -> obj -> pyM obj)          -- ^ the primitive function
        -> (PyExp -> [PyVal] -> pyM PyVal)  -- ^ the resulting function 
prim2 f pos [a1, a2] = do o1 <- deref' a1
                          o2 <- deref' a2
                          r  <- f o1 o2
                          allocObj pos r 
prim2 _ _   _        = escape ArityError  

prim2' :: forall a1 a2 r pyM obj . (PyM pyM obj, PyObj obj, SingI a1, SingI a2, SingI r)
        => (Abs obj a1 -> Abs obj a2 -> pyM (Abs obj r))  -- ^ the primitive function
        -> (PyExp -> [PyVal] -> pyM PyVal)                -- ^ the resulting function 
prim2' f = prim2 $ \a b -> do va <- at @a1 a
                              vb <- at @a2 b
                              from @_ @r <$> f va vb

intBinop :: forall r1 r2 pyM obj . (PyM pyM obj, PyObj obj, SingI r1, SingI r2)
          => (Abs obj IntPrm -> Abs obj IntPrm -> pyM (Abs obj r1))   -- the function for integers
          -> (Abs obj ReaPrm -> Abs obj ReaPrm -> pyM (Abs obj r2))   -- the function for floats
          -> obj -> obj -> pyM obj 
intBinop fi fr o1 o2 = condCP (return $ has @_ @ReaPrm o2)  -- if the second arg is a float ...
                              (do n1 <- at @IntPrm o1       -- ... coerce the first arg to a float as well 
                                  r1 <- Domain.toReal n1
                                  let r2 = get @_ @ReaPrm o2
                                  from @_ @r2 <$> fr r1 r2)
                              (do n1 <- at @IntPrm o1
                                  n2 <- at @IntPrm o2
                                  from @_ @r1 <$> fi n1 n2)

intBinop' :: forall pyM obj . (PyM pyM obj, PyObj obj) 
          => (forall d . NumberDomain d => d -> d -> pyM d) -- a common case: the same function (e.g., from NumberDomain)
          -> obj -> obj -> pyM obj
intBinop' f = intBinop @IntPrm @ReaPrm f f 

intBinop'' :: forall r pyM obj . (PyM pyM obj, PyObj obj, SingI r)
          => (forall d . (NumberDomain d, Domain.Boo d ~ Abs obj BlnPrm) => d -> d -> pyM (Abs obj r)) -- another common case
          -> obj -> obj -> pyM obj
intBinop'' f = intBinop @r @r f f 

floatBinop :: forall r pyM obj . (PyM pyM obj, PyObj obj, SingI r)
          => (Abs obj ReaPrm -> Abs obj ReaPrm -> pyM (Abs obj r))
          -> obj -> obj -> pyM obj
floatBinop f o1 o2 = condCP (return $ has @_ @IntPrm o2)   -- if the second arg is an int ...
                            (do r1 <- at @ReaPrm o1        -- ... coerce it to a float 
                                let n2 = get @_ @IntPrm o2
                                r2 <- Domain.toReal n2
                                from @_ @r <$> f r1 r2)
                            (do r1 <- at @ReaPrm o1
                                r2 <- at @ReaPrm o2
                                from @_ @r <$> f r1 r2)