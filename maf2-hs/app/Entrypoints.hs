module Entrypoints(run) where

import Options.Applicative
import qualified Run.Interpreter
import qualified Run.Analyzer
import qualified Run.Python

data Command = 
   Interpreter Run.Interpreter.Options 
 | Python Run.Python.Options
 | Analyze Run.Analyzer.Options deriving Show -- Run the interpreter with the given filename

interpreterCommand :: Parser Command 
interpreterCommand = Interpreter <$> Run.Interpreter.options

pythonCommand :: Parser Command
pythonCommand = Python <$> Run.Python.options

analyzeCommand = Analyze <$> Run.Analyzer.options

parseCommand :: Parser Command 
parseCommand = hsubparser $
   (command "eval" (info interpreterCommand ( progDesc "Run a concrete interpreter" ) )) <>
   (command "analyze" (info analyzeCommand ( progDesc "Run an abstract interpreter" ) )) <>
   (command "python" (info pythonCommand ( progDesc "Python analysis subcommand" ) )) 

opts :: ParserInfo Command 
opts = info (parseCommand <**> helper) (fullDesc <> progDesc "MAF: Monadic Analysis Framework")

run :: IO ()
run = do
   command <- execParser opts
   case command of 
      Interpreter options -> Run.Interpreter.main options
      Analyze     options -> Run.Analyzer.main options
      Python      options -> Run.Python.main options
      v                   -> error $ "cannot run command" ++ show v
