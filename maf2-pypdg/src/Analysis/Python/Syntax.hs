module Analysis.Python.Syntax(    -- TODO [?]: should this be integrated into Analysis.Python.Infrastructure?
    PyStm, 
    PyExp, 
    PyLhs, 
    PyIde, 
    PyPar, 
    PyArg, 
    PyLit, 
    PyLoc, 
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
