{-# LANGUAGE UndecidableInstances #-}

module Domain.Python.World where

import Data.Finite
import Data.TypeLevel.HMap (All, ForAllOf, ForAll(..), Dict(..), genHKeys)

import Prelude hiding (True, False, all)
import Data.Singletons (Sing)
import GHC.Generics (Generic)
import Control.DeepSeq (NFData)


-- | Built-in types in Python
data PyType = NoneType
            | ObjectType
            | TypeType 
            | BoolType
            | IntType
            | StringType
            | TupleType
            | PrimType
            | BoundType
            | DictionaryType
            | ExceptionType 
            | StopIterationExceptionType
            | CloType
            | FloatType
            | ListType 
            | ListIteratorType
            | FrameType 
            | DatabaseType 
            | DataFrameType
            | SeriesType  
  deriving (Eq, Ord, Enum, Bounded, Show, Generic) 

instance NFData PyType where

-- | The name of a built-in Python type 
name :: PyType -> String
name NoneType         = "NoneType"
name IntType          = "int"
name FloatType        = "float"
name BoolType         = "bool"
name StringType       = "str"
name TupleType        = "tuple"
name PrimType         = "primitive"
name CloType          = "function"
name BoundType        = "bound function" 
name DictionaryType   = "dictionary"
name ListType         = "list"
name ListIteratorType = "list iterator"
name FrameType        = "frame"
name ObjectType       = "object"
name TypeType         = "type"
name ExceptionType    = "Exception"
name StopIterationExceptionType = "StopIteration"
name DatabaseType     = "Database"
name DataFrameType    = "DataFrame"
name SeriesType       = "Series"

-- | The methods of a built-in Python type 
methods :: PyType -> [(PyAttr, PyPrim)]
methods IntType = [(AddAttr,      IntAdd),
                   (SubAttr,      IntSub),
                   (MulAttr,      IntMul),
                   (TrueDivAttr,  IntTrueDiv),
                   (EqAttr,       IntEq),
                   (NeAttr,       IntNe),
                   (LtAttr,       IntLt),
                   (GtAttr,       IntGt),
                   (LeAttr,       IntLe),
                   (GeAttr,       IntGe),
                   (BoolAttr,     IntBool)]
methods FloatType = [(AddAttr,      FloatAdd),
                     (SubAttr,      FloatSub),
                     (MulAttr,      FloatMul),
                     (TrueDivAttr,  FloatTrueDiv),
                     (EqAttr,       FloatEq),
                     (NeAttr,       FloatNe),
                     (LtAttr,       FloatLt),
                     (GtAttr,       FloatGt),
                     (LeAttr,       FloatLe),
                     (GeAttr,       FloatGe),
                     (BoolAttr,     FloatBool)] 
methods NoneType          = [(BoolAttr,     NoneBool)]
methods BoolType          = [(BoolAttr,     BoolBool)]
methods StringType        = [(AddAttr, StringAppend)]
methods TupleType         = [] 
methods PrimType          = []
methods BoundType         = []
methods CloType           = []
methods ListType          = [(GetItemAttr, ListGetItem),
                             (SetItemAttr, ListSetItem),
                             (LenAttr,     ListLength),
                             (IterAttr,    ListIter)]
methods FrameType         = []
methods DictionaryType    = [(GetItemAttr, DictGetItem),
                             (SetItemAttr, DictSetItem),
                             (KeysAttr,    DictKeys)]
methods ObjectType        = [(InitAttr, ObjectInit),
                             (BoolAttr, ObjectBool)]
methods TypeType          = [(InitAttr, TypeInit)]
methods ExceptionType     = []
methods StopIterationExceptionType = [] 
methods ListIteratorType  = [(NextAttr, ListIteratorNext)]
methods DatabaseType      = []
methods DataFrameType     = [(GetItemAttr, DataFrameGetItem),
                             (SetItemAttr, DataFrameSetItem),
                             (EmptyAttr,  DataFrameEmpty),
                             (RenameAttr, DataFrameRename),
                             (DropNAAttr, DataFrameDropNA),
                             (AppendAttr, DataFrameAppend),
                             (FromSeriesAttr, DataFrameFromSeries)]
methods SeriesType        = [(AsTypeAttr, SeriesAsType),
                             (MergeAttr,  SeriesMerge)]

extraMethods :: PyType -> [(PyAttr, XPyPrim)]
extraMethods ObjectType = [(TaintAttr, ObjectTaint)]
extraMethods DatabaseType = [(ReadAttr, DatabaseRead),
                             (WriteAttr, DatabaseWrite)]
extraMethods _ = [] 

-- | Built-in primitives in Python
data PyPrim     = 
                -- integer primitives
                  IntAdd
                | IntMul
                | IntSub
                | IntTrueDiv
                | IntEq
                | IntNe
                | IntLt
                | IntGt
                | IntLe
                | IntGe
                | IntBool
                -- float primitives
                | FloatAdd
                | FloatSub
                | FloatMul
                | FloatTrueDiv
                | FloatEq
                | FloatNe
                | FloatLt
                | FloatGt
                | FloatLe
                | FloatGe
                | FloatBool
                -- dict primitives
                | DictGetItem 
                | DictSetItem
                | DictKeys 
                -- list primitives
                | ListGetItem
                | ListSetItem
                | ListLength
                | ListIter 
                -- string primitives
                | StringAppend 
                -- stringlength?
                -- list iterator primitives
                | ListIteratorNext 
                -- type primitives
                | TypeInit  
                -- object primitives
                | ObjectInit
                | ObjectBool
                -- dataframe primitives
                | DataFrameEmpty
                | DataFrameRename
                | DataFrameDropNA
                | DataFrameGetItem
                | DataFrameSetItem 
                | DataFrameAppend 
                | DataFrameFromSeries
                -- series primitives
                | SeriesAsType 
                | SeriesMerge
                -- 
                | NoneBool
                | BoolBool
  deriving (Eq, Ord, Enum, Bounded, Show, Generic)

instance NFData PyPrim where

-- | Special add-on primitives
data XPyPrim = ObjectTaint 
             | DatabaseRead 
             | DatabaseWrite
  deriving (Eq, Ord, Enum, Bounded, Show, Generic)

instance NFData XPyPrim where

-- | Built-in attributes in Python
data PyAttr = ClassAttr 
            | AddAttr 
            | MulAttr 
            | PowAttr
            | LtAttr
            | GtAttr  
            | EqAttr 
            | GeAttr 
            | LeAttr
            | NeAttr 
            | OrAttr 
            | XorAttr 
            | AndAttr 
            | LShiftAttr
            | RShiftAttr 
            | SubAttr
            | TrueDivAttr
            | FloorDivAttr 
            | MatMulAttr 
            | InvertAttr
            | ModAttr 
            | NameAttr
            | MROAttr 
            | GetItemAttr
            | SetItemAttr
            | InitAttr
            | LenAttr 
            | IterAttr
            | NextAttr 
            | TaintAttr
            | ListAttr 
            | IndexAttr
            | ReadAttr 
            | WriteAttr 
            | EmptyAttr
            | RenameAttr 
            | DropNAAttr
            | AsTypeAttr 
            | KeysAttr 
            | AppendAttr 
            | MergeAttr
            | FromSeriesAttr
            | BoolAttr
  deriving (Eq, Ord, Enum, Bounded)

attrStr :: PyAttr -> String 
attrStr ClassAttr     = "__class__"
attrStr AddAttr       = "__add__"
attrStr SubAttr       = "__sub__"
attrStr MulAttr       = "__mul__"
attrStr TrueDivAttr   = "__truediv__"
attrStr FloorDivAttr  = "__floordiv__"
attrStr PowAttr       = "__pow__"
attrStr MatMulAttr    = "__matmul__"
attrStr InvertAttr    = "__invert__"
attrStr ModAttr       = "__mod__"
attrStr LtAttr        = "__lt__"
attrStr GtAttr        = "__gt__"
attrStr EqAttr        = "__eq__"
attrStr GeAttr        = "__ge__"
attrStr LeAttr        = "__le__"
attrStr NeAttr        = "__ne__"
attrStr OrAttr        = "__or__"
attrStr XorAttr       = "__xor__"
attrStr AndAttr       = "__and__"
attrStr LShiftAttr    = "__lshift__"
attrStr RShiftAttr    = "__rshift__"
attrStr NameAttr      = "__name__"
attrStr MROAttr       = "__mro__"
attrStr GetItemAttr   = "__getitem__"
attrStr SetItemAttr   = "__setitem__"
attrStr InitAttr      = "__init__"
attrStr LenAttr       = "__len__"
attrStr IterAttr      = "__iter__"
attrStr NextAttr      = "__next__"
attrStr TaintAttr     = "__taint__"
attrStr ListAttr      = "__list__"
attrStr IndexAttr     = "__index__"
attrStr ReadAttr      = "read"
attrStr WriteAttr     = "write"
attrStr EmptyAttr     = "empty"
attrStr RenameAttr    = "rename"
attrStr DropNAAttr    = "dropna"
attrStr AsTypeAttr    = "astype"
attrStr KeysAttr      = "keys"
attrStr AppendAttr    = "append"
attrStr MergeAttr     = "merge"
attrStr FromSeriesAttr = "from_series"
attrStr BoolAttr      = "__bool__"

-- | Built-in objects in Python 
data PyConstant = None
                | True
                | False
                | GlobalFrame 
                | TypeObject  PyType 
                | TypeName    PyType 
                | TypeMRO     PyType 
                | PrimObject  PyPrim 
                | XPrimObject XPyPrim
  deriving (Eq, Ord, Show, Generic)

instance NFData PyConstant where

instance Finite PyConstant where
  all = [None, True, False, GlobalFrame] 
        ++ map TypeObject  all 
        ++ map TypeName    all 
        ++ map TypeMRO     all
        ++ map PrimObject  all
        ++ map XPrimObject all 

-- | Built-in primitive fields in Python
data PyPrmKey = IntPrm
              | ReaPrm 
              | BlnPrm
              | StrPrm
              | PrmPrm
              | CloPrm
              | BndPrm
              | TupPrm
              | LstPrm
              | DctPrm
              | DfrPrm 
              | SrsPrm 
  deriving (Eq, Ord, Show, Generic)

instance NFData PyPrmKey where



genHKeys ''PyPrmKey

classFor :: SPyPrmKey k -> PyType
classFor SIntPrm = IntType 
classFor SReaPrm = FloatType
classFor SBlnPrm = BoolType
classFor SStrPrm = StringType
classFor SPrmPrm = PrimType
classFor SCloPrm = CloType
classFor SBndPrm = BoundType
classFor STupPrm = TupleType
classFor SLstPrm = ListType 
classFor SDctPrm = DictionaryType
classFor SDfrPrm = DataFrameType
classFor SSrsPrm = SeriesType

-- | Built-in Python errors
data PyError = AttributeNotFound
             | NotMutable
             | NotCallable
             | ArityError
             | TypeMismatch
             | InvalidMRO
  deriving (Eq, Ord, Show)