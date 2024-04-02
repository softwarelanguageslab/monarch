module Domain.Python.Syntax(    -- TODO [?]: should this be integrated into Analysis.Python.Infrastructure?
    PyStm, 
    PyExp, 
    PyLhs, 
    PyIde, 
    lexNam,
    PyPar, 
    PyArg, 
    PyLit, 
    PyLoc, 
    PyPrg,
    module Syntax.Python
) where 

import Syntax.Python

type PyLoc = SrcSpan
type PyLan = Micro

type PyPrg = Program PyLoc PyLan
type PyStm = Stmt PyLoc PyLan
type PyExp = Exp PyLoc PyLan
type PyLhs = Lhs PyLoc PyLan
type PyArg = Arg PyLoc PyLan
type PyPar = Par PyLoc PyLan  
type PyLit = Lit PyLoc PyLan
type PyIde = IdeLex PyLoc 

lexNam :: PyIde -> String
lexNam = ideName . lexIde