module Entrypoints(run) where

import Options.Applicative
import qualified Run.Interpreter
import qualified Run.Scheme
import qualified Run.Python
import qualified Run.Erlang
import qualified Run.Actor
import qualified Run.SchemeCounting

data Command =
   Interpreter Run.Interpreter.Options
 | Python Run.Python.Options
 | PythonRapl
 | Scheme Run.Scheme.Options
 | Actor Run.Actor.Options
 | ParseErlang Run.Erlang.Options
 | SchemeCounting Run.SchemeCounting.Options

 deriving Show

interpreterCommand :: Parser Command
interpreterCommand = Interpreter <$> Run.Interpreter.options

pythonCommand :: Parser Command
pythonCommand = Python <$> Run.Python.options

pythonRaplCommand = pure PythonRapl

analyzeCommand = Scheme <$> Run.Scheme.options

countCommand = SchemeCounting <$> Run.SchemeCounting.options

parseErlangCommand = ParseErlang <$> Run.Erlang.options

parseActorCommand = Actor <$> Run.Actor.options

parseCommand :: Parser Command
parseCommand = hsubparser $
   command "eval"          (info interpreterCommand (progDesc "Run a concrete Scheme interpreter")) <>
   command "scheme"        (info analyzeCommand (progDesc "Scheme analysis subcommand"))            <>
   command "count-scheme"  (info countCommand (progDesc "Scheme HMap experiment subcommand"))     <>
   command "python"        (info pythonCommand (progDesc "Python analysis subcommand"))             <>
   command "python-rapl"   (info pythonRaplCommand (progDesc "Python RAPL (Read-Analyse-Print-Loop) subcommand"))             <>
   command "erlang"        (info parseErlangCommand (progDesc "Erlang parser")) 

opts :: ParserInfo Command
opts = info (parseCommand <**> helper) (fullDesc <> progDesc "Monarch: A MONadic ARCHitecture for Static Analyses through Abstract Definitional Interpreters")

run :: IO ()
run = do
   command <- execParser opts
   case command of
      Interpreter    options -> Run.Interpreter.main options
      Scheme         options -> Run.Scheme.main options
      Python         options -> Run.Python.main options
      PythonRapl             -> Run.Python.runREPL
      ParseErlang    options -> Run.Erlang.main options
      Actor          options -> Run.Actor.main options
      SchemeCounting options -> Run.SchemeCounting.main options
      v                   -> error $ "cannot run command" ++ show v
