{-# LANGUAGE GADTs                      #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE UndecidableInstances       #-}
{-# LANGUAGE RankNTypes                 #-}
{-# LANGUAGE ConstraintKinds            #-}
{-# LANGUAGE QuantifiedConstraints      #-}
{-# LANGUAGE AllowAmbiguousTypes        #-}
{-# LANGUAGE PolyKinds                  #-}
{-# LANGUAGE LambdaCase                 #-}

{-# OPTIONS_GHC -Wno-unused-top-binds   #-}


module Analysis.Python.Primitives (applyPrim) where

import Domain.Python.World
import Domain.Python.Objects

import Lattice
import Domain ( NumberDomain, BoolLattice(..), boolTop)
import Domain.Class ()
import qualified Domain.Core.SeqDomain as SeqDomain
import qualified Domain
import Domain.Python.Syntax hiding (Dict, None)
import Analysis.Python.Monad.Class
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
import qualified Data.List as List
import Data.TypeLevel.HMap (Sigma((:&:)))
import qualified Lattice.BottomLiftedLattice as BL
import Domain.Python.Objects.DataFrame
import qualified Lattice.ConstantPropagationLattice as CP
import Data.Maybe (listToMaybe, isJust, mapMaybe)
import Lattice.PresenceLattice (Presence(..), presentValue)
import Control.Applicative ((<|>))

---
--- Primitives implementation
---

-- | Calls a Python value (e.g., a closure) with the given positional arguments, at the given call site
type Caller pyM vlu = PyLoc -> vlu -> [vlu] -> pyM vlu

-- | The implementation of a primitive, applied to a 'Caller' for calling
-- Python values, its keyword arguments and its positional arguments
type PrimFn pyM vlu = PyLoc -> Caller pyM vlu -> [(String, vlu)] -> [vlu] -> pyM vlu

applyPrim :: forall pyM obj vlu . PyM pyM obj vlu => PyPrim -> PrimFn pyM vlu
-- int primitives
applyPrim IntAdd        = prim2'' $ intBinop' (Domain.plus @_ @(Abs obj BlnPrm))
applyPrim IntSub        = prim2'' $ intBinop' (Domain.minus @_ @(Abs obj BlnPrm))
applyPrim IntMul        = prim2'' $ intBinop' (Domain.times @_ @(Abs obj BlnPrm))
applyPrim IntTrueDiv    = prim2'' $ intBinop @ReaPrm @ReaPrm intDiv (Domain.div @_ @(Abs obj BlnPrm))
  where
        intDiv :: Abs obj IntPrm -> Abs obj IntPrm -> pyM (Abs obj ReaPrm)
        intDiv a b = Monad.join $ liftM2 (Domain.div @_ @(Abs obj BlnPrm)) (Domain.toReal @_ @(Abs obj BlnPrm) @(Abs obj StrPrm) a) 
                                                                           (Domain.toReal @_ @(Abs obj BlnPrm) @(Abs obj StrPrm) b)
applyPrim IntBool       = prim1'' @IntPrm @BlnPrm (\o -> Domain.ne o (Domain.inject (0::Integer)))
applyPrim IntEq         = prim2'' $ intBinop'' @BlnPrm Domain.eq
applyPrim IntNe         = prim2'' $ intBinop'' @BlnPrm Domain.ne
applyPrim IntLt         = prim2'' $ intBinop'' @BlnPrm Domain.lt
applyPrim IntGt         = prim2'' $ intBinop'' @BlnPrm Domain.gt
applyPrim IntLe         = prim2'' $ intBinop'' @BlnPrm Domain.le
applyPrim IntGe         = prim2'' $ intBinop'' @BlnPrm Domain.ge
-- float primitives
applyPrim FloatAdd      = prim2'' $ floatBinop @ReaPrm (Domain.plus @_ @(Abs obj BlnPrm))
applyPrim FloatSub      = prim2'' $ floatBinop @ReaPrm (Domain.minus @_ @(Abs obj BlnPrm))
applyPrim FloatMul      = prim2'' $ floatBinop @ReaPrm (Domain.times @_ @(Abs obj BlnPrm))
applyPrim FloatTrueDiv  = prim2'' $ floatBinop @ReaPrm (Domain.div @_ @(Abs obj BlnPrm))
applyPrim FloatEq       = prim2'' $ floatBinop @BlnPrm Domain.eq
applyPrim FloatNe       = prim2'' $ floatBinop @BlnPrm Domain.ne
applyPrim FloatLt       = prim2'' $ floatBinop @BlnPrm Domain.lt
applyPrim FloatGt       = prim2'' $ floatBinop @BlnPrm Domain.gt
applyPrim FloatLe       = prim2'' $ floatBinop @BlnPrm Domain.le
applyPrim FloatGe       = prim2'' $ floatBinop @BlnPrm Domain.ge
applyPrim FloatBool     = prim1'' @ReaPrm @BlnPrm (\o -> Domain.ne o (Domain.inject (0::Double)))
-- string primitives
applyPrim StringAppend  = prim2' @StrPrm @StrPrm $ \loc s1 s2 -> pyStore loc . from @StrPrm =<< Domain.append @_ @(Abs obj BlnPrm) @(Abs obj IntPrm) @(CP Char) s1 s2
applyPrim StringEq      = prim2' @StrPrm @StrPrm $ \loc _ _ -> pyStore loc (from @BlnPrm boolTop) -- TODO: StringDomain does not support equality yet
-- dictionary primitives
applyPrim DictGetItem   = prim2' @DctPrm @StrPrm $ const $ flip Domain.lookup
applyPrim DictSetItem   = prim3 $ \_ a1 a2 v -> pyDeref'' @StrPrm (\k -> none $ pyAssignInPrm SDctPrm (Domain.updateWeak k) v a1) a2
applyPrim DictKeys      = prim1' @DctPrm $ \loc -> \case
                                                        Domain.CPDict kys dct _ -> if Set.size kys == Map.size dct
                                                                                   then do sts <- mapM (\str -> pyStore (tagAs (DctKey str) loc) $ from' @StrPrm str) (Map.keys dct)
                                                                                           pyStore loc $ from @LstPrm $ SeqDomain.fromList sts
                                                                                   else do str <- pyStore loc $ from @StrPrm (joins1 $ map Constant $ Map.keys dct)     -- we know its not empty, because if |dct| == 0, then |kys| == 0 too 
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
                                                   n <- Domain.inc @_ @(Abs obj BlnPrm) @(Abs obj StrPrm) @(Abs obj ReaPrm) i
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
applyPrim ObjectBool = prim1 $ \_ _ -> return $ constant True
-- DataFrame primitives
--
-- Columns are references (see "Domain.Python.Objects.DataFrame"). Primitives
-- that keep columns copy these references without dereferencing them, so that
-- the result does not depend on columns that it does not read.
applyPrim DataFrameGetItem = prim2 $ \loc a1 a2 -> pyDeref'' @DfrPrm (\df -> pyDeref' (getWithIndex loc df) a2) a1
        where
             getWithIndex :: PyLoc -> DataFrame vlu -> obj -> pyM vlu
             getWithIndex loc df idx = condCP (return $ has @StrPrm idx)                    -- df["c"]: the column itself, if it is in df
                                              (get @StrPrm idx >>= \col -> fromPresence (lookupColumn col df))
                                              (condCP (return $ has @LstPrm idx)            -- df[["a", "b"]]: a DataFrame with those columns
                                                      (get @LstPrm idx >>= pyDerefN' @StrPrm (\names -> pyStore loc $ from @DfrPrm $ selectColumns names df) . listElements)
                                                      (condCP (return $ has @SrsPrm idx)    -- df[mask]: a row filter on the condition 'mask'
                                                              (pyStore loc $ from @DfrPrm df)
                                                              -- any other index: pandas looks it up as a column label,
                                                              -- but columns are only named by strings here, so it is
                                                              -- not a column. Note that pandas also supports indices
                                                              -- that are not modelled here (e.g., slices of rows and
                                                              -- callables), which then raise this error as well.
                                                              (pyError KeyError)))
applyPrim DataFrameSetItem = prim3 $ \_ a1 a2 a3 -> pyDeref'' @StrPrm (\col -> none $ pyAssignInPrm SDfrPrm (\v -> return . setColumn col v) a3 a1) a2
applyPrim DataFrameEmpty        = prim1' @DfrPrm          $ \loc _        -> pyStore loc (from @BlnPrm boolTop)
applyPrim DataFrameRename       = prim2' @DfrPrm @DctPrm  $ \loc df _     -> pyStore loc (from @DfrPrm $ collapse (rowsIndependent df) [df])
-- dropna(subset=[...]) is a row filter whose condition reads the columns in 'subset' (or all columns)
applyPrim DataFrameDropNA       = \loc _ kwa -> \case
                                       [a1] -> pyDeref'' @DfrPrm (\df -> withSubset kwa (pyDerefN (const $ pyStore loc $ from @DfrPrm df) . readColumns df)) a1
                                       _    -> pyError ArityError
        where -- the names of the columns in 'subset', where 'Top' stands for all columns
              withSubset :: [(String, vlu)] -> ([CP String] -> pyM vlu) -> pyM vlu
              withSubset kwa k = maybe (k [Top]) (pyDeref'' @LstPrm (pyDerefN' @StrPrm k . listElements)) (List.lookup "subset" kwa)
              readColumns :: DataFrame vlu -> [CP String] -> [vlu]
              readColumns df names
                | Top `elem` names = allColumns df
                | otherwise        = mapMaybe (presentValue . flip lookupColumn df) names
-- df.drop removes columns or rows from a DataFrame:
--
--   * df.drop(columns=names)              removes the columns with these names
--   * df.drop(labels, axis=1 / "columns") removes the columns named by 'labels'
--   * df.drop(labels) (axis=0 / "index")  removes the rows with these labels
--   * df.drop(index=labels)               removes the rows with these labels
--
-- where 'names' and 'labels' are a single name or a list of names, and
-- 'labels' can be passed positionally or as a keyword argument.
--
-- Like in pandas, passing both 'labels' and 'columns' (or 'index'), or none of
-- 'labels', 'index' and 'columns', raises a ValueError. A label that is not in
-- the DataFrame raises a KeyError (unless errors="ignore"). Whether a label is
-- in the DataFrame is not known statically, so every drop may raise it.
--
-- Removing a column removes its values (and hence their taint) from the
-- resulting DataFrame. Removing rows does not change the abstract DataFrame:
-- which rows are removed depends on their labels, not on the data in the
-- DataFrame, and a Series abstracts all its rows by a single element.
applyPrim DataFrameDrop         = \loc _ kwa -> \case
                                       (self:pos) -> pyDeref'' @DfrPrm (dropFrom loc kwa (listToMaybe pos)) self
                                       _          -> pyError ArityError
        where -- | The result of dropping from the given DataFrame, given the keyword
              -- arguments and the first positional argument ('labels'), if any
              dropFrom :: PyLoc -> [(String, vlu)] -> Maybe vlu -> DataFrame vlu -> pyM vlu
              dropFrom loc kwa pos df =
                 case (List.lookup "columns" kwa, List.lookup "labels" kwa <|> pos) of
                    -- like pandas: "Cannot specify both 'labels' and 'index'/'columns'"
                    (Just _, Just _)     -> pyError ValueError
                    -- drop(columns=...) (possibly with index=...): 'axis' is only used to
                    -- interpret 'labels', so pandas ignores it here, even if it is 0 or
                    -- "index". 'index' names the rows to drop, and rows are not modelled
                    -- in the abstract DataFrame, so it is ignored.
                    (Just cols, Nothing) -> mayMissLabels $ withNames cols dropCols
                    -- drop(labels, axis=...): 'axis' decides whether 'labels' names columns or rows
                    (Nothing, Just lbls) -> mayMissLabels $ withAxis kwa (withNames lbls dropCols) keepRows
                    -- drop(index=...): 'index' names the rows to drop, and rows are not
                    -- modelled in the abstract DataFrame, so it stays the same
                    (Nothing, Nothing)
                       | isJust (List.lookup "index" kwa) -> mayMissLabels keepRows
                       -- drop(): "Need to specify at least one of 'labels', 'index' or 'columns'"
                       | otherwise                        -> pyError ValueError
                 where store          = pyStore loc . from @DfrPrm
                       dropCols names = store (dropColumns names df)
                       keepRows       = store df
                       -- the given result, joined with the KeyError raised if a label is
                       -- not in the DataFrame, unless that error is ignored (errors="ignore")
                       mayMissLabels m = m `mjoin` maybe keyError (pyDeref'' @StrPrm raisesOn) (List.lookup "errors" kwa)
                       raisesOn (CP.Constant "ignore") = mbottom
                       raisesOn _                      = keyError
                       keyError = pyError KeyError

              -- | Calls the continuation with the column names in the given value,
              -- which is either a single name or a list of names
              withNames :: vlu -> ([CP String] -> pyM vlu) -> pyM vlu
              withNames v k = pyDeref' (\o -> condCP (return $ has @StrPrm o)
                                                     (get @StrPrm o >>= k . pure)                               -- a single name
                                                     (get @LstPrm o >>= pyDerefN' @StrPrm k . listElements)) v  -- a list of names

              -- | Continues with the first computation if the 'axis' keyword argument
              -- selects the columns (1 or "columns"), and with the second if it
              -- selects the rows (0 or "index", the default). If the axis is not
              -- known precisely, both computations are joined.
              withAxis :: [(String, vlu)] -> pyM vlu -> pyM vlu -> pyM vlu
              withAxis kwa cols rows = maybe rows (pyDeref' axis) (List.lookup "axis" kwa)
                 where axis o = condCP (return $ has @IntPrm o)
                                       -- an integer axis: 1 for the columns
                                       (get @IntPrm o >>= \n -> cond (Domain.eq @_ @(Abs obj BlnPrm) n (Domain.inject (1 :: Integer))) cols rows)
                                       -- a named axis: "columns" for the columns
                                       (get @StrPrm o >>= \case CP.Constant "columns" -> cols
                                                                CP.Constant _         -> rows
                                                                CP.Top                -> mjoin cols rows)
applyPrim DataFrameAppend       = prim2' @DfrPrm @DfrPrm  $ \loc df1 df2  -> pyStore loc (from @DfrPrm $ collapse (rowsIndependent df1 `Domain.or` rowsIndependent df2) [df1, df2])
applyPrim DataFrameFromSeries   = prim1 $ \loc s -> pyDeref'' @SrsPrm (\srs -> pyStore loc $ from @DfrPrm $ fromColumns (seriesRowsIndependent srs) [] (BL.Value s)) s
-- df.map(f) calls f on an element of each column, and each column of the result is a new Series of these results
applyPrim DataFrameMap          = \loc caller _ -> \case
                                       [a1, f] -> pyDeref'' @DfrPrm (mapDataFrame loc caller f) a1
                                       _       -> pyError ArityError
        where mapDataFrame :: PyLoc -> Caller pyM vlu -> vlu -> DataFrame vlu -> pyM vlu
              mapDataFrame loc caller f df = do
                 -- the presence of each column stays the same
                 named <- Map.traverseWithKey (\col -> traverse (mapColumn caller loc col f)) (namedColumns df)
                 dflt  <- case defaultColumn df of
                             BL.Value c -> BL.Value <$> mapColumn caller loc "" f c
                             BL.Bottom  -> return BL.Bottom
                 pyStore loc $ from @DfrPrm $ df { namedColumns = named, defaultColumn = dflt }
applyPrim DataFrameRemoveOutliers = prim4 $ \loc a1 _ _ _ -> pyDeref'' @DfrPrm (pyStore loc . from @DfrPrm . collapse Domain.false . pure) a1
applyPrim DataFrameApplyAverage = prim3 $ \loc a1 _ _   -> pyDeref'' @DfrPrm (pyStore loc . from @DfrPrm . collapse Domain.false . pure) a1
applyPrim DataFrameApplyStatsPerMovement = prim3 $ \loc a1 _ _  -> pyDeref'' @DfrPrm (pyStore loc . from @DfrPrm . collapse Domain.false . pure) a1
applyPrim DataFrameCalcIncDiff = prim2 $ \loc a1 _ -> pyDeref'' @DfrPrm (pyStore loc . from @DfrPrm . collapse Domain.false . pure) a1
applyPrim DataFrameWindowedPrim1 = \loc _ _ -> \case
                                             (dfr:_) -> pyDeref'' @DfrPrm (pyStore loc . from @DfrPrm . collapse Domain.false . pure) dfr
                                             _       -> pyError ArityError
applyPrim DataFrameWindowedPrim2 = \loc _ _ -> \case
                                             (df1:df2:_) -> pyDeref2'' @DfrPrm @DfrPrm (\d1 d2 -> pyStore loc (from @DfrPrm $ collapse Domain.false [d1, d2])) df1 df2
                                             _           -> pyError ArityError
applyPrim DataFrameWindowedPrim3 = \loc _ _ -> \case
                                             (df1:df2:df3:_) -> pyDeref2'' @DfrPrm @DfrPrm (\d1 d2 -> pyDeref'' @DfrPrm (\d3 -> pyStore loc (from @DfrPrm $ collapse Domain.false [d1, d2, d3])) df3) df1 df2
                                             _               -> pyError ArityError
-- the DataFrameGroupBy object and its iterator keep the columns of the grouped DataFrame
applyPrim DataFrameGroupBy = prim2 $ \loc dfr _ -> pyDeref'' @DfrPrm (\df -> pyStore loc (new' DataFrameGroupByType [] [SDfrPrm :&: collapse Domain.false [df]])) dfr
applyPrim DataFrameGroupByIter = prim1 $ \loc dfg -> pyDeref'' @DfrPrm (\df -> pyStore loc (new' DataFrameGroupByIteratorType [] [SDfrPrm :&: df])) dfg
applyPrim DataFrameGroupByIteratorNext = prim1 $ \loc -> pyDeref'' @DfrPrm $ \df -> pyStore loc (from @DfrPrm df)
                                                                         `mjoin`
                                                                          pyStore (tagAs NxtExc loc) (new' StopIterationExceptionType [] [])
-- Series primitives
applyPrim SeriesAsType  = prim2 $ \_ self _ -> return self
applyPrim SeriesMerge   = prim4 $ \loc self a1 _ _ -> pyDeref2'' @SrsPrm @DfrPrm (\_ df -> pyStore loc (from @DfrPrm $ setColumn Top self $ collapse (rowsIndependent df) [df])) self a1
-- comparing a Series results in a (boolean) Series that depends on both operands
applyPrim SeriesCompare = prim2 $ \loc self other -> pyDeref'' @SrsPrm (\srs -> pyDeref' (const $ compareResult loc srs) other) self
        where compareResult :: PyLoc -> Series vlu -> pyM vlu
              compareResult loc srs = do
                 el <- pyStore (tagAs (SrsElm "") loc) (from @BlnPrm boolTop)
                 pyStore loc (from @SrsPrm (Series (seriesRowsIndependent srs) el))
-- s.map(f) calls f on an element of the Series, and results in a new Series of these results
applyPrim SeriesMap     = \loc caller _ -> \case
                                [self, f] -> mapColumn caller loc "" f self
                                _         -> pyError ArityError
applyPrim SeriesAdd     = seriesArithmetic AddAttr
applyPrim SeriesSub     = seriesArithmetic SubAttr
applyPrim SeriesMul     = seriesArithmetic MulAttr
applyPrim SeriesTrueDiv = seriesArithmetic TrueDivAttr
-- other primitives
applyPrim NoneBool = prim1 $ \_ _ -> return $ constant False
applyPrim BoolBool = prim1'' @BlnPrm @BlnPrm return
applyPrim RandomNumber = prim0 (\loc -> pyStore loc $ from @IntPrm top)
--
-- Primitive helpers 
--

none :: forall pyM obj vlu a . PyM pyM obj vlu => pyM a -> pyM vlu
none = ($> constant None)

prim0 :: forall pyM obj vlu . PyM pyM obj vlu
        => (PyLoc -> pyM vlu)            -- ^ the primitive function
        -> PrimFn pyM vlu   -- ^ the resulting function   
prim0 f loc _ _ [] = f loc
prim0 _ _ _ _   _  = pyError ArityError

prim1 :: forall pyM obj vlu . PyM pyM obj vlu
        => (PyLoc -> vlu   -> pyM vlu)      -- ^ the primitive function
        -> PrimFn pyM vlu      -- ^ the resulting function   
prim1 f loc _ _ [a] = f loc a
prim1 _ _ _ _   _  = pyError ArityError

-- | version of prim1 that derefs the argument
prim1' :: forall a pyM obj vlu . (SingI a, PyM pyM obj vlu)
        => (PyLoc -> Abs obj a -> pyM vlu)      -- ^ the primitive function
        -> PrimFn pyM vlu      -- ^ the resulting function   
prim1' f = prim1 $ \loc -> pyDeref' (get @a >=> f loc)
-- | version of prim1 that derefs the argument and stores the result + the function is on part of the object
prim1'' :: forall a b pyM obj vlu . (SingI a, SingI b, PyM pyM obj vlu)
        => (Abs obj a -> pyM (Abs obj b))           -- ^ the primitive function
        -> PrimFn pyM vlu              -- ^ the resulting function 
prim1'' f = prim1 $ \loc -> pyDeref' 
                                (\o -> do v <- get @a o 
                                          res <- f v 
                                          let resO = from @b res 
                                          pyStore loc resO)

prim2 :: PyM pyM obj vlu
        => (PyLoc -> vlu -> vlu -> pyM vlu)     -- ^ the primitive function
        -> PrimFn pyM vlu     -- ^ the resulting function 
prim2 f loc _ _ [a1, a2] = f loc a1 a2
prim2 _ _ _ _ _          = pyError ArityError
-- | version of prim2 that derefs the arguments
prim2' :: forall a1 a2 pyM obj vlu . (SingI a1, SingI a2, PyM pyM obj vlu)
        => (PyLoc -> Abs obj a1 -> Abs obj a2 -> pyM vlu)   -- ^ the primitive function
        -> PrimFn pyM vlu                      -- ^ the resulting function 
prim2' f = prim2 $ \loc -> pyDeref2' (\o1 o2 -> do v1 <- get @a1 o1
                                                   v2 <- get @a2 o2
                                                   f loc v1 v2)
-- | version of prim2 that derefs the arguments and stores the results
prim2'' :: PyM pyM obj vlu
        => (obj -> obj -> pyM obj)                  -- ^ the primitive function
        -> PrimFn pyM vlu              -- ^ the resulting function 
prim2'' f = prim2 $ \loc -> pyDeref2' (\o1 o2 -> pyStore loc =<< f o1 o2)

prim3 :: PyM pyM obj vlu
        => (PyLoc -> vlu -> vlu -> vlu -> pyM vlu)     -- ^ the primitive function
        -> PrimFn pyM vlu     -- ^ the resulting function 
prim3 f loc _ _ [a1, a2, a3] = f loc a1 a2 a3
prim3 _ _ _ _ _              = pyError ArityError

prim4 :: PyM pyM obj vlu
        => (PyLoc -> vlu -> vlu -> vlu -> vlu -> pyM vlu)     -- ^ the primitive function
        -> PrimFn pyM vlu     -- ^ the resulting function 
prim4 f loc _ _ [a1, a2, a3, a4] = f loc a1 a2 a3 a4
prim4 _ _ _ _ _                  = pyError ArityError

intBinop :: forall r1 r2 pyM obj vlu . (PyM pyM obj vlu, SingI r1, SingI r2)
          => (Abs obj IntPrm -> Abs obj IntPrm -> pyM (Abs obj r1))   -- the function for integers
          -> (Abs obj ReaPrm -> Abs obj ReaPrm -> pyM (Abs obj r2))   -- the function for floats
          -> obj -> obj -> pyM obj
intBinop fi fr o1 o2 = condCP (return $ has @ReaPrm o2)      -- if the second arg is a float ...
                              (do n1 <- get @IntPrm o1       -- ... coerce the first arg to a float as well 
                                  r1 <- Domain.toReal @_ @(Abs obj BlnPrm) @(Abs obj StrPrm)  n1
                                  let r2 = at @ReaPrm o2
                                  from @r2 <$> fr r1 r2)
                              (do n1 <- get @IntPrm o1
                                  n2 <- get @IntPrm o2
                                  from @r1 <$> fi n1 n2)

intBinop' :: forall pyM obj vlu . (PyM pyM obj vlu)
          => (forall d . NumberDomain d (Abs obj BlnPrm) => d -> d -> pyM d) -- a common case: the same function (e.g., from NumberDomain)
          -> obj -> obj -> pyM obj
intBinop' f = intBinop @IntPrm @ReaPrm f f

intBinop'' :: forall r pyM obj vlu . (PyM pyM obj vlu, SingI r)
          => (forall d . (NumberDomain d (Abs obj BlnPrm)) => d -> d -> pyM (Abs obj r)) -- another common case
          -> obj -> obj -> pyM obj
intBinop'' f = intBinop @r @r f f

floatBinop :: forall r pyM obj vlu . (PyM pyM obj vlu, SingI r)
          => (Abs obj ReaPrm -> Abs obj ReaPrm -> pyM (Abs obj r))
          -> obj -> obj -> pyM obj
floatBinop f o1 o2 = condCP (return $ has @IntPrm o2)   -- if the second arg is an int ...
                            (do r1 <- get @ReaPrm o1        -- ... coerce it to a float 
                                let n2 = at @IntPrm o2
                                r2 <- Domain.toReal @_ @(Abs obj BlnPrm) @(Abs obj StrPrm) n2
                                from @r <$> f r1 r2)
                            (do r1 <- get @ReaPrm o1
                                r2 <- get @ReaPrm o2
                                from @r <$> f r1 r2)

-- | All elements that the given list may contain
listElements :: SeqDomain.CPList v -> [v]
listElements (SeqDomain.CPList vs _ _) = vs
listElements (SeqDomain.TopList v)     = [v]

-- | The value of a column with the given presence. Looking up a column that
-- may not be in the DataFrame raises a KeyError.
fromPresence :: PyM pyM obj vlu => Presence vlu -> pyM vlu
fromPresence (Present v)      = return v
fromPresence (MaybePresent v) = return v `mjoin` pyError KeyError
fromPresence Absent           = pyError KeyError


-- | Calls the given function on the element of the given column (a reference
-- to a Series), and results in a reference to a new Series of the results.
--
-- The function is called while the column is dereferenced, so that it is
-- analysed in the taint context of the column, and each column has its own
-- call site, so that the calls for different columns are analysed separately.
mapColumn :: forall pyM obj vlu . PyM pyM obj vlu => Caller pyM vlu -> PyLoc -> String -> vlu -> vlu -> pyM vlu
mapColumn caller loc col f column = pyDeref'' @SrsPrm (\srs -> do
      result <- caller (tagAs (DfrCol col) loc) f [seriesElement srs]
      pyDeref' (\_ -> pyStore (tagAs (DfrCol col) loc) (from @SrsPrm (srs { seriesElement = result }))) result) column


-- | An arithmetic operator on a Series (e.g., @s * other@), where the other
-- operand is a Series or a single value. The result is a new Series whose
-- element is the result of the operator on the element of the Series and the
-- element of the other operand (or the other operand itself). It depends on
-- both operands.
seriesArithmetic :: forall pyM obj vlu . PyM pyM obj vlu => PyAttr -> PrimFn pyM vlu
seriesArithmetic op loc caller _ = \case
      [self, other] -> pyDeref'' @SrsPrm (\srs -> pyDeref' (apply srs other) other) self
      _             -> pyError ArityError
   where apply :: Series vlu -> vlu -> obj -> pyM vlu
         apply srs other otherObj = do
            rhs <- condCP (return $ has @SrsPrm otherObj) (seriesElement <$> get @SrsPrm otherObj) (return other)
            mtd <- lookupAttr (tagAs SrsBnd loc) (attrStr op) (seriesElement srs)
            el  <- caller (tagAs (SrsElm "") loc) mtd [rhs]
            pyStore loc (from @SrsPrm (srs { seriesElement = el }))
