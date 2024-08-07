{-# LANGUAGE GADTs #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE PolyKinds #-}

module Analysis.Python.Primitives (applyPrim) where

import Domain.Python.World 
import Domain.Python.Objects

import Domain (NumberDomain)
import qualified Domain.Core.SeqDomain as SeqDomain 
import qualified Domain
import Domain.Python.Syntax hiding (Dict, None)
import Analysis.Python.Monad 
import Analysis.Python.Common 
import Control.Monad.Join
import Control.Monad.DomainError
import Control.Monad.Escape
import Analysis.Python.Objects

import Prelude hiding (lookup, exp, True, False, seq, length, all)
import Control.Monad (liftM2)
import qualified Control.Monad as Monad 
import Data.Singletons.TH
import Analysis.Monad (StoreM(updateWith, lookupAdr, updateAdr))
import Control.Monad ((>=>))

---
--- Primitives implementation
---
      
applyPrim :: forall pyM obj . PyM pyM obj => PyPrim -> PyLoc -> [PyVal] -> pyM PyVal
-- int primitives
applyPrim IntAdd        = prim2'' $ intBinop' Domain.plus 
applyPrim IntSub        = prim2'' $ intBinop' Domain.minus
applyPrim IntMul        = prim2'' $ intBinop' Domain.times  
applyPrim IntTrueDiv    = prim2'' $ intBinop @ReaPrm @ReaPrm intDiv Domain.div 
  where intDiv a b = Monad.join $ liftM2 Domain.div (Domain.toReal a) (Domain.toReal b)
applyPrim IntEq         = prim2'' $ intBinop'' @BlnPrm Domain.eq
applyPrim IntNe         = prim2'' $ intBinop'' @BlnPrm Domain.ne 
applyPrim IntLt         = prim2'' $ intBinop'' @BlnPrm Domain.lt
applyPrim IntGt         = prim2'' $ intBinop'' @BlnPrm Domain.gt
applyPrim IntLe         = prim2'' $ intBinop'' @BlnPrm Domain.le
applyPrim IntGe         = prim2'' $ intBinop'' @BlnPrm Domain.ge 
-- float primitives
applyPrim FloatAdd      = prim2'' $ floatBinop @ReaPrm Domain.plus
applyPrim FloatSub      = prim2'' $ floatBinop @ReaPrm Domain.minus
applyPrim FloatMul      = prim2'' $ floatBinop @ReaPrm Domain.times
applyPrim FloatTrueDiv  = prim2'' $ floatBinop @ReaPrm Domain.div    
applyPrim FloatEq       = prim2'' $ floatBinop @BlnPrm Domain.eq 
applyPrim FloatNe       = prim2'' $ floatBinop @BlnPrm Domain.ne
applyPrim FloatLt       = prim2'' $ floatBinop @BlnPrm Domain.lt 
applyPrim FloatGt       = prim2'' $ floatBinop @BlnPrm Domain.gt 
applyPrim FloatLe       = prim2'' $ floatBinop @BlnPrm Domain.le
applyPrim FloatGe       = prim2'' $ floatBinop @BlnPrm Domain.ge 
-- dictionary primitives
applyPrim DictGetItem   = prim2' @DctPrm @StrPrm $ const $ flip Domain.lookupM
applyPrim DictSetItem   = prim3 $ \_ a1 a2 vlu -> do key <- pyDeref' a2 >>= at @StrPrm 
                                                     mjoinMap (updateDctAdr key vlu) (addrs a1)
                                                     return $ constant None
   where updateDctAdr key vlu adr = condCP (has @DctPrm <$> lookupAdr adr) -- TODO: do the check in the update?
                                           (updateWith (modify @DctPrm $ Domain.update key vlu) 
                                                       (modify @DctPrm $ Domain.updateWeak key vlu) adr)
                                           (escape WrongType)
-- list primitives
applyPrim ListGetItem   = prim2' @LstPrm @IntPrm $ const $ flip SeqDomain.ref 
applyPrim ListSetItem   = prim3 $ \_ a1 a2 vlu -> do idx <- pyDeref' a2 >>= at @IntPrm
                                                     mjoinMap (updateLstIdx idx vlu) (addrs a1)
                                                     return $ constant None
   where updateLstIdx :: Abs obj IntPrm -> PyVal -> ObjAdr -> pyM ()
         updateLstIdx idx vlu adr = do obj  <- lookupAdr adr
                                       lst  <- at @LstPrm obj 
                                       lst' <- SeqDomain.setWeak idx vlu lst    -- TODO: only weak updates until updateWith supports monadic updates ...
                                       let obj' = set @LstPrm lst' obj
                                       updateAdr adr obj'            
applyPrim ListLength    = prim1' @LstPrm $ \loc a -> pyAlloc loc $ from @IntPrm (SeqDomain.length a)  
-- type primitives
applyPrim TypeInit = prim4 $ \loc typ nam sup _ -> do assignAttr (attrStr NameAttr) nam typ
                                                      mro <- computeMRO loc typ sup
                                                      assignAttr (attrStr MROAttr) mro typ 
                                                      return $ constant None
-- object primitives
applyPrim ObjectInit = prim1 $ \_ _ -> return $ constant None 
            
--
-- Primitive helpers 
--

prim0 :: forall pyM obj . PyM pyM obj  
        => (PyLoc -> pyM PyVal)                 -- ^ the primitive function
        -> (PyLoc -> [PyVal] -> pyM PyVal)      -- ^ the resulting function   
prim0 f loc [] = f loc 
prim0 _ _   _  = escape ArityError 

prim1 :: forall pyM obj . PyM pyM obj  
        => (PyLoc -> PyVal   -> pyM PyVal)      -- ^ the primitive function
        -> (PyLoc -> [PyVal] -> pyM PyVal)      -- ^ the resulting function   
prim1 f loc [a] = f loc a  
prim1 _ _   _  = escape ArityError 

prim1' :: forall a pyM obj . (SingI a, PyM pyM obj)  
        => (PyLoc -> Abs obj a -> pyM PyVal)      -- ^ the primitive function
        -> (PyLoc -> [PyVal]   -> pyM PyVal)      -- ^ the resulting function   
prim1' f = prim1 $ \loc -> pyDeref' >=> at @a >=> f loc 

prim2 :: PyM pyM obj
        => (PyLoc -> PyVal -> PyVal -> pyM PyVal)     -- ^ the primitive function
        -> (PyLoc -> [PyVal]        -> pyM PyVal)     -- ^ the resulting function 
prim2 f loc [a1, a2] = f loc a1 a2
prim2 _ _ _          = escape ArityError

prim2' :: forall a1 a2 pyM obj . (SingI a1, SingI a2, PyM pyM obj)
        => (PyLoc -> Abs obj a1 -> Abs obj a2 -> pyM PyVal)     -- ^ the primitive function
        -> (PyLoc -> [PyVal] -> pyM PyVal)                      -- ^ the resulting function 
prim2' f = prim2 $ \loc a1 a2 -> do v1 <- pyDeref' a1 >>= at @a1  
                                    v2 <- pyDeref' a2 >>= at @a2
                                    f loc v1 v2

prim2'' :: PyM pyM obj
        => (obj -> obj -> pyM obj)                      -- ^ the primitive function
        -> (PyLoc -> [PyVal] -> pyM PyVal)              -- ^ the resulting function 
prim2'' f = prim2 $ \loc a1 a2 -> do o1 <- pyDeref' a1
                                     o2 <- pyDeref' a2
                                     res <- f o1 o2
                                     pyAlloc loc res 

prim3 :: PyM pyM obj
        => (PyLoc -> PyVal -> PyVal -> PyVal -> pyM PyVal)     -- ^ the primitive function
        -> (PyLoc -> [PyVal]                 -> pyM PyVal)     -- ^ the resulting function 
prim3 f loc [a1, a2, a3] = f loc a1 a2 a3
prim3 _ _ _              = escape ArityError

prim4 :: PyM pyM obj
        => (PyLoc -> PyVal -> PyVal -> PyVal -> PyVal -> pyM PyVal)     -- ^ the primitive function
        -> (PyLoc -> [PyVal]                          -> pyM PyVal)     -- ^ the resulting function 
prim4 f loc [a1, a2, a3, a4] = f loc a1 a2 a3 a4
prim4 _ _ _                  = escape ArityError

intBinop :: forall r1 r2 pyM obj . (PyM pyM obj, SingI r1, SingI r2)
          => (Abs obj IntPrm -> Abs obj IntPrm -> pyM (Abs obj r1))   -- the function for integers
          -> (Abs obj ReaPrm -> Abs obj ReaPrm -> pyM (Abs obj r2))   -- the function for floats
          -> obj -> obj -> pyM obj 
intBinop fi fr o1 o2 = condCP (return $ has @ReaPrm o2)  -- if the second arg is a float ...
                              (do n1 <- at @IntPrm o1       -- ... coerce the first arg to a float as well 
                                  r1 <- Domain.toReal n1
                                  let r2 = get @ReaPrm o2
                                  from @r2 <$> fr r1 r2)
                              (do n1 <- at @IntPrm o1
                                  n2 <- at @IntPrm o2
                                  from @r1 <$> fi n1 n2)

intBinop' :: forall pyM obj . (PyM pyM obj) 
          => (forall d . NumberDomain d => d -> d -> pyM d) -- a common case: the same function (e.g., from NumberDomain)
          -> obj -> obj -> pyM obj
intBinop' f = intBinop @IntPrm @ReaPrm f f 

intBinop'' :: forall r pyM obj . (PyM pyM obj, SingI r)
          => (forall d . (NumberDomain d, Domain.Boo d ~ Abs obj BlnPrm) => d -> d -> pyM (Abs obj r)) -- another common case
          -> obj -> obj -> pyM obj
intBinop'' f = intBinop @r @r f f

floatBinop :: forall r pyM obj . (PyM pyM obj, SingI r)
          => (Abs obj ReaPrm -> Abs obj ReaPrm -> pyM (Abs obj r))
          -> obj -> obj -> pyM obj
floatBinop f o1 o2 = condCP (return $ has @IntPrm o2)   -- if the second arg is an int ...
                            (do r1 <- at @ReaPrm o1        -- ... coerce it to a float 
                                let n2 = get @IntPrm o2
                                r2 <- Domain.toReal n2
                                from @r <$> f r1 r2)
                            (do r1 <- at @ReaPrm o1
                                r2 <- at @ReaPrm o2
                                from @r <$> f r1 r2)
