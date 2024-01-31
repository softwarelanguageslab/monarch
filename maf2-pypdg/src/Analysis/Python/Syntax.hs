module Analysis.Python.Syntax(
    PyStm, 
    PyExp, 
    PyLhs, 
    PyIde, 
    PyPar, 
    PyArg, 
    PyLit, 
    PyLoc, 
    PyAttr(..),
    attrStr,
    module Syntax.Python
) where 

import Syntax.Python

type PyLoc = SrcSpan
type PyLan = Micro

type PyStm = Stmt PyLoc PyLan
type PyExp = Exp PyLoc PyLan
type PyLhs = Lhs PyLoc PyLan
type PyArg = Arg PyLoc PyLan
type PyPar = Par PyLoc PyLan  
type PyLit = Lit PyLoc PyLan
type PyIde = IdeLex PyLoc 

--
-- 'Special' attributes in Python 
--

 
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