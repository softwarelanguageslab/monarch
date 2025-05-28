{-# LANGUAGE OverloadedStrings #-}

module Run.PythonInterpreter where

import System.Process
import Options.Applicative


newtype Options = Options String
   deriving Show

options :: Parser Options
options = Options <$>
   strOption (long "filename" <> short 'f' <> help "Name of the file to interpret")

-- Function to evaluate a Python expression

evalPythonFile :: FilePath -> IO String
evalPythonFile filePath = readProcess "python3" [filePath] ""

evalPythonExpression :: String -> IO String
evalPythonExpression expr = readProcess "python3" ["-c", 
                                                    "print(" ++ expr ++ ")"
                                                  ] ""

runPyEval :: Options -> IO ()
runPyEval (Options filename) = do
    contents <- readFile filename
    result <- evalPythonFile filename
    putStrLn result
