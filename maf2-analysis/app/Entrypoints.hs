module Entrypoints(run) where

import Options.Applicative
import qualified Run.Interpreter
import qualified Run.Analyzer
import qualified Run.Python
import qualified Run.Erlang
import qualified Run.Actor

data Command = 
   Interpreter Run.Interpreter.Options 
 | Python Run.Python.Options
 | Analyze Run.Analyzer.Options 
 | Actor Run.Actor.Options
 | ParseErlang Run.Erlang.Options

 deriving Show 

interpreterCommand :: Parser Command 
interpreterCommand = Interpreter <$> Run.Interpreter.options

pythonCommand :: Parser Command
pythonCommand = Python <$> Run.Python.options

analyzeCommand = Analyze <$> Run.Analyzer.options
parseErlangCommand = ParseErlang <$> Run.Erlang.options

parseActorCommand = Actor <$> Run.Actor.options

parseCommand :: Parser Command 
parseCommand = hsubparser $
   (command "eval" (info interpreterCommand ( progDesc "Run a concrete interpreter" ) )) <>
   (command "analyze" (info analyzeCommand ( progDesc "Run an abstract interpreter" ) )) <>
   (command "python" (info pythonCommand ( progDesc "Python analysis subcommand" ) ))    <>
   (command "erlang" (info parseErlangCommand ( progDesc "Erlang parser" ) )) <>
   (command "actor" (info parseActorCommand ( progDesc "Actor analysis" )))

opts :: ParserInfo Command 
opts = info (parseCommand <**> helper) (fullDesc <> progDesc "MAF: Monadic Analysis Framework")

run :: IO ()
run = do
   command <- execParser opts
   case command of 
      Interpreter options -> Run.Interpreter.main options
      Analyze     options -> Run.Analyzer.main options
      Python      options -> Run.Python.main options
      ParseErlang options -> Run.Erlang.main options
      Actor       options -> Run.Actor.main options
      v                   -> error $ "cannot run command" ++ show v
