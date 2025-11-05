module Interpreter.Python.Eval (evalPythonFile, evalPythonExpression, evalPythonProgram) where 

import System.Process
import System.IO
import System.IO.Temp
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
    withSystemTempFile "test.py" (\file hdl -> do
        hPutStr hdl prg
        evalPythonFile file)
