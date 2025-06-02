module Interpreter.Python.Eval (evalPythonFile, evalPythonExpression, evalPythonProgram) where 

import System.Process
import Domain.Python.Syntax (PyPrg)

-- Functions to evaluate Python expressions and files

evalPythonFile :: FilePath -> IO String
evalPythonFile filePath = readProcess "python3" [filePath] ""

evalPythonExpression :: String -> IO String
evalPythonExpression expr = readProcess "python3" ["-c", 
                                                    "print(" ++ expr ++ ")"
                                                  ] ""

evalPythonProgram :: String -> IO String 
evalPythonProgram prg = do 
    writeFile "./programs/python/_temp.py" prg
    evalPythonFile "./programs/python/_temp.py"