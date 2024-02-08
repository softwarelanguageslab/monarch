{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Python.Infrastructure (
  PyConstant(..), 
  PyPrim(..), 
  PyType(..), 
  name, 
  methods, 
  PyAttr,
  attrStr
) where

import Prelude hiding (True, False, all)

--
-- Finite typeclass
--

-- | A typeclass to enumerate all values of a certain type
class Finite a where
  all :: [a]

instance (Enum a, Bounded a) => Finite a where 
  all = [minBound..maxBound]

--
-- The Python World 
--

-- | Built-in types in Python
data PyType = NoneType
            | BoolType
            | IntType
            | StringType
            | TupleType
            | PrimType
            | BoundType
            | CloType
            | FloatType
  deriving (Eq, Ord, Enum, Bounded, Show) 

-- | The name of a built-in Python type 
name :: PyType -> String
name NoneType   = "NoneType"
name IntType    = "int"
name FloatType  = "float"
name BoolType   = "bool"
name StringType = "str"
name TupleType  = "tuple"
name PrimType   = "primitive"
name CloType    = "function"
name BoundType  = "bound function" 

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
methods _ = [] 



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

-- | Built-in objects in Python 
data PyConstant = Type      -- 'type'
                | Object    -- 'object'
                | None
                | True
                | False
                | TypeObject PyType 
                | TypeName   PyType 
                | TypeMRO    PyType 
                | PrimObject PyPrim 
  deriving (Eq, Ord, Show)

instance Finite PyConstant where
  all = [Type, Object, None, True, False] 
        ++ map TypeObject all 
        ++ map TypeName   all 
        ++ map TypeMRO    all
        ++ map PrimObject all
