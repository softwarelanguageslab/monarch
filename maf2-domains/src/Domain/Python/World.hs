{-# LANGUAGE UndecidableInstances #-}

module Domain.Python.World where

import Data.Finite
import Data.TypeLevel.HMap (All, ForAllOf, ForAll(..), Dict(..), genHKeys)

import Prelude hiding (True, False, all)
import Data.Singletons (Sing)


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
  deriving (Eq, Ord, Enum, Bounded, Show) 

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
                   (GeAttr,       IntGe)]
methods FloatType = [(AddAttr,      FloatAdd),
                     (SubAttr,      FloatSub),
                     (MulAttr,      FloatMul),
                     (TrueDivAttr,  FloatTrueDiv),
                     (EqAttr,       FloatEq),
                     (NeAttr,       FloatNe),
                     (LtAttr,       FloatLt),
                     (GtAttr,       FloatGt),
                     (LeAttr,       FloatLe),
                     (GeAttr,       FloatGe)] 
methods NoneType          = []
methods BoolType          = []
methods StringType        = []
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
                             (SetItemAttr, DictSetItem)]
methods ObjectType        = [(InitAttr, ObjectInit)]
methods TypeType          = [(InitAttr, TypeInit)]
methods ExceptionType     = []
methods StopIterationExceptionType = [] 
methods ListIteratorType  = [(NextAttr, ListIteratorNext)]

extraMethods :: PyType -> [(PyAttr, XPyPrim)]
extraMethods ObjectType = [(TaintAttr, ObjectTaint)]
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
                -- dict primitives
                | DictGetItem 
                | DictSetItem
                -- list primitives
                | ListGetItem
                | ListSetItem
                | ListLength
                | ListIter 
                -- list iterator primitives
                | ListIteratorNext 
                -- type primitives
                | TypeInit  
                -- object primitives
                | ObjectInit
  deriving (Eq, Ord, Enum, Bounded, Show)

-- | Special add-on primitives
data XPyPrim = ObjectTaint 
  deriving (Eq, Ord, Enum, Bounded, Show)

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
  deriving (Eq, Ord, Show)

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
  deriving (Eq, Ord, Show)

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

-- | Built-in Python errors
data PyError = AttributeNotFound
             | NotMutable
             | NotCallable
             | ArityError
             | TypeMismatch
             | InvalidMRO
  deriving (Eq, Ord, Show)