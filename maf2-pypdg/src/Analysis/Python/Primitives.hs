{-# LANGUAGE StandaloneKindSignatures #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Analysis.Python.Primitives (applyPrim) where

import Lattice hiding (insert)
import Domain (Domain, BoolDomain, NumberDomain, IntDomain, RealDomain, StringDomain, CPDictionary)
import qualified Domain
import Analysis.Python.Syntax hiding (Dict)
import Analysis.Python.Monad 
import Analysis.Python.Infrastructure
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

type PyPrm obj m = (HMapDomain obj m,
                    AllAtKey1  JoinLattice m, 
                    IntDomain     (Assoc IntPrm m),
                    Domain.Boo    (Assoc IntPrm m) ~ Assoc BlnPrm m, 
                    Domain.Rea    (Assoc IntPrm m) ~ Assoc ReaPrm m,
                    Domain.Str    (Assoc IntPrm m) ~ Assoc StrPrm m,
                    RealDomain    (Assoc ReaPrm m),
                    Domain.Boo    (Assoc ReaPrm m) ~ Assoc BlnPrm m,
                    StringDomain  (Assoc ReaPrm m))

applyPrim :: (PyM pyM obj, PyPrm obj m) => PyPrim -> PyExp -> [PyVal] -> pyM PyVal
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

from :: forall (k :: PyPrmKey) obj m . (PyPrm obj m, SingI k) => Assoc k m -> obj
from = HMapDomain.singleton @_ @_ @_ @k sing  

get :: forall (k :: PyPrmKey) m obj pyM . (PyM pyM obj, PyPrm obj m, SingI k) => obj -> pyM (Assoc k m)
get obj = withC_ @(AtKey1 JoinLattice m) getField s 
  where s = sing @k
        getField :: JoinLattice (Assoc k m) => pyM (Assoc k m)
        getField = condCP (return $ HMapDomain.member s obj)
                          (return $ fromJust $ HMapDomain.lookup s obj)
                          (escape WrongType)

has :: forall (k :: PyPrmKey) b obj m . (PyPrm obj m, BoolDomain b, SingI k) => obj -> b
has = HMapDomain.member (sing @k)

prim0 :: forall r pyM obj m . (PyM pyM obj, PyPrm obj m, SingI r)  
        => pyM (Assoc r m)                  -- ^ the primitive function
        -> (PyExp -> [PyVal] -> pyM PyVal)  -- ^ the resulting function   
prim0 f pos [] = allocObj pos . from @r =<< f 
prim0 _ _   _  = escape ArityError 

prim1 :: forall a r pyM obj m . (PyM pyM obj, PyPrm obj m, SingI a, SingI r)
        => (Assoc a m -> pyM (Assoc r m))   -- ^ the primitive function
        -> (PyExp -> [PyVal] -> pyM PyVal)  -- ^ the resulting function 
prim1 f pos [a1] = allocObj pos . from @r =<< f =<< get @a =<< deref' a1
prim1 _ _   _    = escape ArityError  

prim2 :: PyM pyM obj
        => (obj -> obj -> pyM obj)          -- ^ the primitive function
        -> (PyExp -> [PyVal] -> pyM PyVal)  -- ^ the resulting function 
prim2 f pos [a1, a2] = do o1 <- deref' a1
                          o2 <- deref' a2
                          r  <- f o1 o2
                          allocObj pos r 
prim2 _ _   _        = escape ArityError  

prim2' :: forall a1 a2 r pyM obj m . (PyM pyM obj, PyPrm obj m, SingI a1, SingI a2, SingI r)
        => (Assoc a1 m -> Assoc a2 m -> pyM (Assoc r m))  -- ^ the primitive function
        -> (PyExp -> [PyVal] -> pyM PyVal)                -- ^ the resulting function 
prim2' f = prim2 $ \a b -> do va <- get @a1 a
                              vb <- get @a2 b
                              from @r <$> f va vb

intBinop :: forall r1 r2 pyM obj m .  (PyM pyM obj, PyPrm obj m, SingI r1, SingI r2)
          => (Assoc IntPrm m -> Assoc IntPrm m -> pyM (Assoc r1 m))   -- the function for integers
          -> (Assoc ReaPrm m -> Assoc ReaPrm m -> pyM (Assoc r2 m))   -- the function for floats
          -> obj -> obj -> pyM obj 
intBinop fi fr o1 o2 = condCP (return $ has @ReaPrm o2)  -- if the second arg is a float ...
                              (do n1 <- get @IntPrm o1   -- ... coerce the first arg to a float as well 
                                  r1 <- Domain.toReal n1
                                  r2 <- get @ReaPrm o2
                                  from @r2 <$> fr r1 r2)
                              (do n1 <- get @IntPrm o1
                                  n2 <- get @IntPrm o2
                                  from @r1 <$> fi n1 n2)

intBinop' :: forall pyM obj m . (PyM pyM obj, PyPrm obj m) 
          => (forall d . NumberDomain d => d -> d -> pyM d) -- a common case: the same function (e.g., from NumberDomain)
          -> (obj -> obj -> pyM obj)
intBinop' f = intBinop @IntPrm @ReaPrm f f 

intBinop'' :: forall r pyM obj m . (PyM pyM obj, PyPrm obj m, SingI r)
          => (forall d . (NumberDomain d, Domain.Boo d ~ Assoc BlnPrm m) => d -> d -> pyM (Assoc r m)) -- another common case
          -> (obj -> obj -> pyM obj)
intBinop'' f = intBinop @r @r f f 

floatBinop :: forall r pyM obj m . (PyM pyM obj, PyPrm obj m, SingI r)
          => (Assoc ReaPrm m -> Assoc ReaPrm m -> pyM (Assoc r m))
          -> obj -> obj -> pyM obj
floatBinop f o1 o2 = condCP (return $ has @IntPrm o2)   -- if the second arg is an int ...
                            (do r1 <- get @ReaPrm o1    -- ... coerce it to a float 
                                n2 <- get @IntPrm o2
                                r2 <- Domain.toReal n2
                                from @r <$> f r1 r2)
                            (do r1 <- get @ReaPrm o1
                                r2 <- get @ReaPrm o2
                                from @r <$> f r1 r2)