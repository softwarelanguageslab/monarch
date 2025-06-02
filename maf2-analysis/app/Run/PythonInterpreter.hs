{-# LANGUAGE OverloadedStrings #-}

module Run.PythonInterpreter where
import Options.Applicative
import Interpreter.Python.Eval

newtype Options = Options String
   deriving Show

options :: Parser Options
options = Options <$>
   strOption (long "filename" <> short 'f' <> help "Name of the file to interpret")

runPyEval :: Options -> IO ()
runPyEval (Options filename) = do
    contents <- readFile filename
    result <- evalPythonFile filename
    putStrLn result
