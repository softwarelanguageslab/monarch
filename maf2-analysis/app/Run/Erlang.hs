module Run.Erlang(Options, options, main) where

import Options.Applicative
import Text.Pretty.Simple
import Syntax.Erlang.Compiler
import Syntax.Erlang.Overloader
import Syntax.Erlang.Qualifier
import Syntax.Erlang.Preluder
import Analysis.Erlang.BIF

newtype Options = Options { directory :: String } deriving Show

options = Options <$>
   strOption (long "directory" <> short 'd' <> help "Path to the 'ebin' directory")

main :: Options -> IO ()
main (Options directory) = do
   (modules, graph) <- elixirLibs >>= (`loadFromDir` directory)
   pPrint (qualifyModules $ preludeModules implicitImports $ overloadModules modules)
   pPrint graph

