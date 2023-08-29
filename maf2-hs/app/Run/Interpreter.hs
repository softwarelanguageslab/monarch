module Run.Interpreter(main, Options, options) where

import Syntax.Scheme.AST
import Syntax.Scheme.Undefiner
import Options.Applicative
import Interpreter.Scheme
import System.IO
import Data.Maybe

newtype Options = Options (Maybe String) deriving Show

options :: Parser Options 
options = 
   Options <$> 
      option (maybeReader $ Just . Just)
             (long "filename" <> short 'f' <> value Nothing <> help "Name of the file to analyse")

repl :: IO ()
repl = do
   putStr "> "
   hFlush stdout
   line <- getLine
   if line == ":q" then return () else do
      let expr = undefineExp $ fromJust $ parseSchemeExp line
      let (result, _) = runInterpreter expr
      print result 
      repl

main :: Options -> IO ()
main (Options Nothing) = do 
   putStrLn "MAF REPL\nNote that each new expression is a new enviroment."
   repl 

main (Options (Just filename)) = 
   (undefineExp . fromJust . parseSchemeExp <$> readFile filename) >>= pure . runInterpreter >>= print . fst
