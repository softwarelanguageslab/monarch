{-# LANGUAGE GADTs #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE LambdaCase #-}

{-# OPTIONS_GHC -Wno-unused-top-binds #-}

module Analysis.Python.Primitives (applyPrim) where

import Domain.Python.World
import Domain.Python.Objects

import Lattice
import Domain ( NumberDomain, BoolDomain(..) )
import Domain.Class
import qualified Domain.Core.SeqDomain as SeqDomain
import qualified Domain
import Domain.Python.Syntax hiding (Dict, None)
import Analysis.Python.Monad
import Analysis.Python.Common
import Control.Monad.Join
import Analysis.Python.Objects

import Prelude hiding (lookup, exp, True, False, seq, length, all)
import Control.Monad ( liftM2, (>=>) )
import qualified Control.Monad as Monad
import Data.Singletons.TH
import Data.Functor (($>))
import Control.Monad.Escape (orElse)
import qualified Data.Set as Set
import qualified Data.Map as Map

---
--- Primitives implementation
---

applyPrim :: forall pyM obj vlu . PyM pyM obj vlu => PyPrim -> PyLoc -> [vlu] -> pyM vlu
-- int primitives
applyPrim IntAdd        = prim2'' $ intBinop' Domain.plus
applyPrim IntSub        = prim2'' $ intBinop' Domain.minus
applyPrim IntMul        = prim2'' $ intBinop' Domain.times
applyPrim IntTrueDiv    = prim2'' $ intBinop @ReaPrm @ReaPrm intDiv Domain.div
  where
        intDiv :: Abs obj IntPrm -> Abs obj IntPrm -> pyM (Abs obj ReaPrm)
        intDiv a b = Monad.join $ liftM2 Domain.div (Domain.toReal a) (Domain.toReal b)
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
-- string primitives
applyPrim StringAppend  = prim2' @StrPrm @StrPrm $ \loc s1 s2 -> pyStore loc . from @StrPrm =<< Domain.append s1 s2
-- dictionary primitives
applyPrim DictGetItem   = prim2' @DctPrm @StrPrm $ const $ flip Domain.lookup
applyPrim DictSetItem   = prim3 $ \_ a1 a2 v -> pyDeref'' @StrPrm (\k -> none $ pyAssignInPrm SDctPrm (Domain.updateWeak k) v a1) a2
applyPrim DictKeys      = prim1' @DctPrm $ \loc -> \case
                                                        Domain.CPDict kys dct _ -> if Set.size kys == Map.size dct
                                                                                   then do sts <- mapM (\str -> pyStore (tagAs (DctKey str) loc) $ from' @StrPrm str) (Map.keys dct)
                                                                                           pyStore loc $ from @LstPrm $ SeqDomain.fromList sts
                                                                                   else do str <- pyStore loc $ from @StrPrm (joins $ map Constant $ Map.keys dct)
                                                                                           pyStore loc $ from @LstPrm (SeqDomain.TopList str)
                                                        Domain.TopDict _ _  -> do str <- pyStore loc $ from @StrPrm Top --TODO improve precision (don't reuse loc)
                                                                                  pyStore loc $ from @LstPrm (SeqDomain.TopList str)
-- list primitives
applyPrim ListGetItem   = prim2' @LstPrm @IntPrm $ const $ flip SeqDomain.ref
applyPrim ListSetItem   = prim3 $ \_ a1 a2 v -> pyDeref'' @IntPrm (\i -> none $ pyAssignInPrm SLstPrm (SeqDomain.setWeak i) v a1) a2
applyPrim ListLength    = prim1' @LstPrm $ \loc l -> pyStore loc . from @IntPrm =<< SeqDomain.length l
applyPrim ListIter      = prim1 $ \loc l -> do n <- pyStore (tagAs ItrIdx loc) $ from' @IntPrm @_ @Integer 0
                                               let obj = new' ListIteratorType [(attrStr ListAttr, l), (attrStr IndexAttr, n)] []
                                               pyStore (tagAs ItrLst loc) obj
-- list iterator primitives
applyPrim ListIteratorNext = prim1 $ pyDeref . next
           where
              next :: PyLoc -> ObjAdr -> obj -> pyM vlu
              next loc adr obj = do lst <- getAttr (attrStr ListAttr) obj
                                    idx <- getAttr (attrStr IndexAttr) obj
                                    advance loc adr lst idx `orElse` stopIteration loc
              advance :: PyLoc -> ObjAdr -> vlu -> vlu -> pyM vlu
              advance loc adr = pyDeref2'' @LstPrm @IntPrm $
                                        \l i -> do v <- SeqDomain.ref i l
                                                   n <- Domain.inc i
                                                   idx <- pyStore (tagAs NxtIdx loc) $ from @IntPrm n
                                                   pyAssignAt (attrStr IndexAttr) idx adr
                                                   return v
              stopIteration :: PyLoc -> pyM vlu
              stopIteration loc = pyRaise =<< pyStore (tagAs NxtExc loc) (new' StopIterationExceptionType [] [])
-- type primitives
applyPrim TypeInit = prim4 $ \loc typ nam sup _ -> do pyAssign (attrStr NameAttr) nam typ
                                                      mro <- computeMRO loc typ sup
                                                      pyAssign (attrStr MROAttr) mro typ
                                                      return $ constant None
-- object primitives
applyPrim ObjectInit = prim1 $ \_ _ -> return $ constant None
-- DataFrame primitives
applyPrim DataFrameGetItem = prim2' @DfrPrm @StrPrm $ \loc _ _ -> pyStore loc (from @SrsPrm $ inject ())
applyPrim DataFrameSetItem = prim3 $ \_ a1 a2 a3 -> pyDeref'' @StrPrm (\_ -> none $ pyAssignInPrm SDfrPrm (const return) a3 a1) a2
applyPrim DataFrameEmpty   = prim1' @DfrPrm $ \loc _ -> pyStore loc (from @BlnPrm boolTop)
applyPrim DataFrameRename  = prim2' @DfrPrm @DctPrm $ \loc df _ -> pyStore loc (from @DfrPrm df)
applyPrim DataFrameDropNA  = prim1' @DfrPrm $ \loc df -> pyStore loc (from @DfrPrm df)
applyPrim DataFrameAppend  = prim2' @DfrPrm @DfrPrm $ \loc _ _ -> pyStore loc (from @DfrPrm $ inject ())
applyPrim DataFrameFromSeries = prim1' @SrsPrm $ \loc _ -> pyStore loc (from @DfrPrm $ inject ())
-- Series primitives
applyPrim SeriesAsType    = prim2 $ \_ self _ -> return self
applyPrim SeriesMerge     = prim4 $ \loc self a1 _ _ -> pyDeref2'' @SrsPrm @DfrPrm (\_ df -> pyStore loc (from @DfrPrm df)) self a1

--
-- Primitive helpers 
--

none :: forall pyM obj vlu a . PyM pyM obj vlu => pyM a -> pyM vlu
none = ($> constant None)

prim0 :: forall pyM obj vlu . PyM pyM obj vlu
        => (PyLoc -> pyM vlu)            -- ^ the primitive function
        -> (PyLoc -> [vlu] -> pyM vlu)   -- ^ the resulting function   
prim0 f loc [] = f loc
prim0 _ _   _  = pyError ArityError

prim1 :: forall pyM obj vlu . PyM pyM obj vlu
        => (PyLoc -> vlu   -> pyM vlu)      -- ^ the primitive function
        -> (PyLoc -> [vlu] -> pyM vlu)      -- ^ the resulting function   
prim1 f loc [a] = f loc a
prim1 _ _   _  = pyError ArityError

prim1' :: forall a pyM obj vlu . (SingI a, PyM pyM obj vlu)
        => (PyLoc -> Abs obj a -> pyM vlu)      -- ^ the primitive function
        -> (PyLoc -> [vlu]     -> pyM vlu)      -- ^ the resulting function   
prim1' f = prim1 $ \loc -> pyDeref' (get @a >=> f loc)

prim2 :: PyM pyM obj vlu
        => (PyLoc -> vlu -> vlu -> pyM vlu)     -- ^ the primitive function
        -> (PyLoc -> [vlu]      -> pyM vlu)     -- ^ the resulting function 
prim2 f loc [a1, a2] = f loc a1 a2
prim2 _ _ _          = pyError ArityError

prim2' :: forall a1 a2 pyM obj vlu . (SingI a1, SingI a2, PyM pyM obj vlu)
        => (PyLoc -> Abs obj a1 -> Abs obj a2 -> pyM vlu)   -- ^ the primitive function
        -> (PyLoc -> [vlu] -> pyM vlu)                      -- ^ the resulting function 
prim2' f = prim2 $ \loc -> pyDeref2' (\o1 o2 -> do v1 <- get @a1 o1
                                                   v2 <- get @a2 o2
                                                   f loc v1 v2)

prim2'' :: PyM pyM obj vlu
        => (obj -> obj -> pyM obj)                  -- ^ the primitive function
        -> (PyLoc -> [vlu] -> pyM vlu)              -- ^ the resulting function 
prim2'' f = prim2 $ \loc -> pyDeref2' (\o1 o2 -> pyStore loc =<< f o1 o2)

prim3 :: PyM pyM obj vlu
        => (PyLoc -> vlu -> vlu -> vlu -> pyM vlu)     -- ^ the primitive function
        -> (PyLoc -> [vlu]             -> pyM vlu)     -- ^ the resulting function 
prim3 f loc [a1, a2, a3] = f loc a1 a2 a3
prim3 _ _ _              = pyError ArityError

prim4 :: PyM pyM obj vlu
        => (PyLoc -> vlu -> vlu -> vlu -> vlu -> pyM vlu)     -- ^ the primitive function
        -> (PyLoc -> [vlu]                    -> pyM vlu)     -- ^ the resulting function 
prim4 f loc [a1, a2, a3, a4] = f loc a1 a2 a3 a4
prim4 _ _ _                  = pyError ArityError

intBinop :: forall r1 r2 pyM obj vlu . (PyM pyM obj vlu, SingI r1, SingI r2)
          => (Abs obj IntPrm -> Abs obj IntPrm -> pyM (Abs obj r1))   -- the function for integers
          -> (Abs obj ReaPrm -> Abs obj ReaPrm -> pyM (Abs obj r2))   -- the function for floats
          -> obj -> obj -> pyM obj
intBinop fi fr o1 o2 = condCP (return $ has @ReaPrm o2)  -- if the second arg is a float ...
                              (do n1 <- get @IntPrm o1       -- ... coerce the first arg to a float as well 
                                  r1 <- Domain.toReal n1
                                  let r2 = at @ReaPrm o2
                                  from @r2 <$> fr r1 r2)
                              (do n1 <- get @IntPrm o1
                                  n2 <- get @IntPrm o2
                                  from @r1 <$> fi n1 n2)

intBinop' :: forall pyM obj vlu . (PyM pyM obj vlu)
          => (forall d . NumberDomain d => d -> d -> pyM d) -- a common case: the same function (e.g., from NumberDomain)
          -> obj -> obj -> pyM obj
intBinop' f = intBinop @IntPrm @ReaPrm f f

intBinop'' :: forall r pyM obj vlu . (PyM pyM obj vlu, SingI r)
          => (forall d . (NumberDomain d, Domain.Boo d ~ Abs obj BlnPrm) => d -> d -> pyM (Abs obj r)) -- another common case
          -> obj -> obj -> pyM obj
intBinop'' f = intBinop @r @r f f

floatBinop :: forall r pyM obj vlu . (PyM pyM obj vlu, SingI r)
          => (Abs obj ReaPrm -> Abs obj ReaPrm -> pyM (Abs obj r))
          -> obj -> obj -> pyM obj
floatBinop f o1 o2 = condCP (return $ has @IntPrm o2)   -- if the second arg is an int ...
                            (do r1 <- get @ReaPrm o1        -- ... coerce it to a float 
                                let n2 = at @IntPrm o2
                                r2 <- Domain.toReal n2
                                from @r <$> f r1 r2)
                            (do r1 <- get @ReaPrm o1
                                r2 <- get @ReaPrm o2
                                from @r <$> f r1 r2)
