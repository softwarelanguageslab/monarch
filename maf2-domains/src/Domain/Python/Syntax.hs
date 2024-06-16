module Domain.Python.Syntax(    -- TODO [?]: should this be integrated into Analysis.Python.Infrastructure?
    PyStm, 
    PyExp, 
    PyLhs, 
    PyIde, 
    lexNam,
    PyPar, 
    PyLit, 
    PyLoc, 
    showLoc,
    PyPrg,
    addImplicitReturn,
    module Syntax.Python
) where 

import Syntax.Python
import Language.Python.Common.SrcLocation (startRow, startCol)

type PyLoc = SrcSpan
type PyLan = Micro

type PyPrg = Program PyLoc PyLan
type PyStm = Stmt PyLoc PyLan
type PyExp = Exp PyLoc PyLan
type PyLhs = Lhs PyLoc PyLan
type PyPar = Par PyLoc PyLan  
type PyLit = Lit PyLoc PyLan
type PyIde = IdeLex PyLoc 

lexNam :: PyIde -> String
lexNam = ideName . lexIde

showLoc :: PyLoc -> String
showLoc s = show (startRow s) ++ ":" ++ show (startCol s)

addImplicitReturn :: PyPrg -> PyPrg
addImplicitReturn prg = case programStmt prg of
                            StmtExp _ e loc -> prg { programStmt = Return () (Just e) loc } 
                            _ -> prg 