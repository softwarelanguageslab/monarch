{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE LambdaCase #-}
-- | Translates a parse tree in Erlang Abstract Format to 
-- an AST that can be used for analysis.
module Syntax.Erlang.Compiler(
      compile,
      compileString,
      moduleInfos,
      loadModules,
      dependencyGraph,
      loadFromDir,
      elixirLibs
   ) where

import Syntax.Erlang.AST hiding (moduleName)
import qualified Syntax.Erlang.AST as AST
import Syntax.Erlang.Parser (Term)
import qualified Syntax.Erlang.Parser as T
import Control.Monad ((>=>))
import Control.Monad.Except
import Syntax.Span
import Control.Lens
import Control.Monad.State
import Data.Maybe (fromJust)
import qualified Syntax.Ide as Ide
import Syntax.Ide (Ide(..))
import System.Directory
import Data.Either (fromRight)
import qualified Data.Map as Map
import System.FilePath
import Text.Printf
import System.Process
import System.IO
import Data.Bifunctor
import Data.Maybe

------------------------------------------------------------
-- Utility functions
------------------------------------------------------------

mapLeft :: (a -> b) -> Either a c -> Either b c
mapLeft f (Left a)  = Left (f a)
mapLeft _ (Right c) = Right c

dup :: a -> (a, a)
dup a = (a, a)

------------------------------------------------------------
-- Compiler
------------------------------------------------------------

-- | The types of errors the compiler can generate
data CompileErrorType = NotAModule       -- ^ thrown when a module was expected
                      | InvalidFunction  -- ^ thrown when the function specification is invalid
                      | InvalidSyntax
                      | NotSupported
                      | UnsupportedClause
                      | ExpectedChar
                      | NotALiteral
                      deriving (Eq, Ord, Show)
-- | A compiler error with an optional location in the source code
data CompileError = CompileError CompileErrorType (Maybe Term) (Maybe Span)
                  | ParseError T.ParseError
                    deriving (Eq, Show)

-- | Raise an error at the given location
raiseAt :: (MonadError CompileError m) => CompileErrorType -> Span -> m a
raiseAt tp = throwError . CompileError tp Nothing . Just

-- | Raise an error at the given location and term
raiseAtTerm :: (MonadError CompileError m) => CompileErrorType -> Term -> m a
raiseAtTerm tp t = throwError (CompileError tp (Just t) (Just (spanOf t)))

-- | Raise an error without passing location information
raise :: (MonadError CompileError m) => CompileErrorType -> m a
raise tp = throwError (CompileError tp Nothing Nothing)

type CompileM m = MonadError CompileError m

-- | Compile the given term to a module.
compileModule :: CompileM m => Term -> m Module
compileModule (T.List ts _) =  Module . catMaybes <$> mapM compileDecl ts
compileModule e = raiseAt NotAModule (spanOf e)

-- | Compile the given term to a FunctionIdentifier.
--
-- These terms have the forms of identifier/arity
compileFnIdentifier :: (CompileM m) => Term -> m FunctionIdentifier
compileFnIdentifier (T.Tuple [T.Atom name _, T.Number arity _] loc) =
   return (FunctionIdentifier name arity loc)
compileFnIdentifier e = raiseAt InvalidSyntax (spanOf e)

-- 
compileDecl :: CompileM m => Term -> m (Maybe Declaration)
compileDecl (T.Tuple [T.Atom "eof" _, _] _) = return Nothing
compileDecl term = Just <$> compileDecl' term

compileDecl' :: CompileM m => Term -> m Declaration
compileDecl' (T.Tuple [T.Atom "attribute" _, _, T.Atom "export" _, T.List fns _] loc) =
   Export <$> mapM compileFnIdentifier fns <*> pure loc
compileDecl' (T.Tuple [T.Atom "attribute" _, _, T.Atom "import" _, T.Tuple [T.Atom name locNam, T.List fns _] _] loc) =
   Import (Ide name locNam) <$> mapM compileFnIdentifier fns <*> pure loc
compileDecl' (T.Tuple [T.Atom "attribute" _, _, T.Atom "module" _, T.Atom name nameSpan] loc) =
   return (ModuleDecl (Ide name nameSpan) loc)
compileDecl' (T.Tuple [T.Atom "attribute" _, _, T.Atom "file" _, T.Tuple [T.Atom file _, T.Number col _] _] loc) =
   return (File file col loc)
compileDecl' (T.Tuple [T.Atom "function" _, _, T.Atom name nameSpan, T.Number arity _, T.List clauses _] loc)=
   Function (FunctionIdentifier name (fromInteger arity) nameSpan) <$> mapM compileClauses clauses <*> pure loc
compileDecl' (T.Tuple [T.Atom "function" _, _, _, _, _] loc) =
   raiseAt InvalidFunction loc
compileDecl' (T.Tuple [T.Atom "attribute" _, _, T.Atom "record" _, T.Tuple [T.Atom name s, _fields] _] loc)=
   return $ Record (Ide name s) [] loc -- TODO
compileDecl' (T.Tuple [T.Atom "attribute" _, _, T.Atom wild _, _] loc)= return (Wild wild loc)
compileDecl' e = raiseAt NotSupported (spanOf e)

-- | Checks if the given term is a character and returns it 
-- if so, otherwise generates "ExpectedChar" error
isChar :: CompileM m => Term -> m Char
isChar (T.Character char _) = return char
isChar e = raiseAt ExpectedChar (spanOf e)

-- | Compile literals
compileLiteral :: CompileM m => Term -> m Literal
compileLiteral (T.Tuple [T.Atom "atom" _, _, T.Atom nam _] loc) =
   return (AtomLit nam loc)
compileLiteral (T.Tuple [T.Atom "char" _, _, T.Character char _] loc) =
   return (CharLit char loc)
compileLiteral (T.Tuple [T.Atom "float" _, _, T.Floating vlu _] loc) =
   return (FloatLit vlu loc)
compileLiteral (T.Tuple [T.Atom "integer" _, _, T.Number vlu _] loc) =
   return (IntLit vlu loc)
compileLiteral (T.Tuple [T.Atom "string" _, _, T.List cs _] loc) =
   StrLit <$> mapM isChar cs <*> pure loc
compileLiteral (T.Tuple [T.Atom "nil" _, _] loc) =
   return (NilLit loc)
-- TODO: support 'bin' literals which are bitstring patterns/values
compileLiteral e = raiseAtTerm NotALiteral e

-- | Compile a pattern from a function head or bindings
compilePattern :: CompileM m => Term -> m Pattern
compilePattern (T.Tuple [T.Atom "var" _, _, T.Atom var varSpan] _) =
   return (VariablePat (Ide var varSpan))
compilePattern (T.Tuple [T.Atom "match" _, _, pat1, pat2] _) =
   CompoundPat <$> compilePattern pat1 <*> compilePattern pat2
compilePattern (T.Tuple [T.Atom "cons" _, _, pat1, pat2] _) =
   ConsPat <$> compilePattern pat1 <*> compilePattern pat2
compilePattern lit = AtomicPat <$> compileLiteral lit

-- | Compile a clause from a function head, or a "case" expression
compileClauses :: CompileM m => Term -> m Clause
compileClauses (T.Tuple [T.Atom "clause" _, _, T.List pats _, T.List guards _, T.List bod _] _) =
   SimpleClause <$> mapM compilePattern pats <*> mapM compileTermAsSequence guards <*> compileSequence bod
compileClauses e = raiseAt UnsupportedClause (spanOf e)

-- | Compiles a list of terms to a list of AST nodes
compileSequence :: CompileM m => [Term] -> m [Expr]
compileSequence = mapM compileExpression

-- | Assumes that the term is a list and compiles it as a sequence
compileTermAsSequence :: CompileM m => Term -> m Body
compileTermAsSequence (T.List es _) = compileSequence es
compileTermAsSequence e = raiseAt InvalidSyntax (spanOf e)

-- | Compiles an atom to an identifier (if it is a valid atom)
compileIdent :: CompileM m => Term -> m Identifier
compileIdent (T.Tuple [T.Atom "atom" _, _, T.Atom nam namSpan] _) =
   return (Ide nam namSpan)
compileIdent e = raiseAt InvalidSyntax (spanOf e)

-- | Compile an association, i.e., K := V or K => V
-- these variations are currently compiled in the same manner
-- as they do not seem to make any semantic difference (TODO: check this)
compileAssoc :: CompileM m => Term -> m (Identifier, Expr)
compileAssoc (T.Tuple [T.Atom "map_field_assoc" _, _, T.Tuple [T.Atom "atom" _, _, T.Atom name loc] _, expr] _) =
   (Ide name loc,) <$> compileExpression expr
compileAssoc (T.Tuple [T.Atom "map_field_exact" _, _, T.Tuple [T.Atom "atom" _, _, T.Atom name loc] _, expr] _) =
   (Ide name loc,) <$> compileExpression expr
compileAssoc e  = raiseAtTerm InvalidSyntax e

-- | Compile term to an expression
compileExpression :: (CompileM m) => Term -> m Expr
compileExpression (T.Tuple [T.Atom "block" _, _, T.List bod _] loc) =
   Block <$> compileSequence bod <*> pure loc
compileExpression (T.Tuple [T.Atom "case" _, _, expr, T.List clauses _] loc) =
   Case <$> compileExpression expr <*> mapM compileClauses clauses <*> pure loc
compileExpression (T.Tuple [T.Atom "catch" _, _, expr] loc) =
   Catch <$> compileExpression expr <*> pure loc
compileExpression (T.Tuple [T.Atom "call" _, _, operator, T.List operands _] loc) =
   Call <$> compileExpression operator <*> compileSequence operands <*> pure loc
compileExpression (T.Tuple [T.Atom "remote" _, _, modName, funName] _) =
   ModVar <$> compileIdent modName <*> compileIdent funName
compileExpression (T.Tuple [T.Atom "if" _, _, T.List clauses _] loc) =
   If <$> mapM compileClauses clauses <*> pure loc
compileExpression (T.Tuple [T.Atom "match" _, _, pat, matchExp] loc) =
   Match <$> compilePattern pat <*> compileExpression matchExp <*> pure False <*> pure loc
compileExpression (T.Tuple [T.Atom "maybe_match" _, _, pat, matchExp] loc) =
   Match <$> compilePattern pat <*> compileExpression matchExp <*> pure True <*> pure loc
compileExpression (T.Tuple [T.Atom "receive" _, _, T.List clauses _] loc) =
   Receive <$> mapM compileClauses clauses <*> pure Nothing <*> pure loc
compileExpression (T.Tuple [T.Atom "receive" _, _, T.List clauses _, afterExp, T.List afterBod _] loc) =
   Receive <$> mapM compileClauses clauses <*> (Just <$> liftA2 (,) (compileExpression afterExp) (compileSequence afterBod)) <*> pure loc
compileExpression (T.Tuple [T.Atom "tuple" _, _, T.List es _] loc) =
   Tuple <$> compileSequence es <*> pure loc
compileExpression (T.Tuple [T.Atom "var" _, _, T.Atom varName varSpan] _) =
   return (Var (Ide varName varSpan))
compileExpression (T.Tuple [T.Atom "cons" _, _, car, cdr] loc) =
   Cons <$> compileExpression car <*> compileExpression cdr <*> pure loc
compileExpression (T.Tuple [T.Atom "op" _, _, T.Atom opr opSpan, e1, e2] loc) =
   Call (Var (Ide opr opSpan)) <$> mapM compileExpression [e1, e2] <*> pure loc
compileExpression (T.Tuple [T.Atom "map" _, _, T.List fields _] loc) =
   MapLiteral <$> mapM compileAssoc fields <*> pure loc
compileExpression (T.Tuple [T.Atom "map" _, _, expr, T.List fields _] loc) =
   MapUpdate <$> compileExpression expr <*> mapM compileAssoc fields <*> pure loc
compileExpression lit = fmap Atomic (compileLiteral lit)

-- | Compile a term that represents a module to an AST node
compile :: Term -> Either CompileError Module
compile = compileModule

-- | Compile a string representing the module to an AST node
compileString :: String -> String -> Either CompileError Module
compileString name = mapLeft ParseError . T.parseErlangTerm name >=> compile


------------------------------------------------------------
-- Post-compilation
------------------------------------------------------------

data PartialModuleInfo = PartialModuleInfo {
      -- | The name of the module
      _moduleName :: Maybe String,
      -- | The module's exports (so far)
      _moduleExports :: [FunctionIdentifier],
      -- | The module's imports (so far), including
      -- remote calls.
      _moduleImports :: [QualifiedIdentifier],
      -- | The module's unqualified imports (through import statements), so far
      _moduleUnqualImports :: [(ModuleName, FunctionIdentifier)],
      -- | The module currently under investigation
      currentModule :: Module
   } deriving (Eq, Ord, Show)


emptyPartialInfo :: Module -> PartialModuleInfo
emptyPartialInfo = PartialModuleInfo Nothing [] [] []

fullModuleInfo :: PartialModuleInfo -> ModuleInfo
fullModuleInfo PartialModuleInfo { .. } = ModuleInfo _moduleExports  _moduleImports _moduleUnqualImports currentModule (fromJust _moduleName)

$(makeLenses ''PartialModuleInfo)

-- | Collects all module information from the given list of modules
moduleInfos :: [Module] -> [ModuleInfo]
moduleInfos =  map (\erlMod  -> fullModuleInfo $ flip execState (emptyPartialInfo erlMod) $ extractInfo $ moduleDeclarations erlMod)
   where extractInfo :: MonadState PartialModuleInfo m => [Declaration] -> m ()
         extractInfo = mapM_ visitDecl
         visitDecl :: MonadState PartialModuleInfo m => Declaration -> m ()
         visitDecl = \case (Import moduleName' idens _) -> modify (over moduleUnqualImports (map (moduleName',) idens ++))
                           (Export items _) -> modify (over moduleExports (items++))
                           (Function _ clauses _) -> mapM_ visitClause clauses
                           (ModuleDecl iden _) -> modify (set moduleName (Just $ Ide.name iden))
                           decl -> return ()
                           -- decl -> error $ "unsupported declaration at " ++ show (spanOf decl)
         visitClause (SimpleClause _ _ bdy) = visitBody bdy
         visitBody :: MonadState PartialModuleInfo m => Body -> m ()
         visitBody = mapM_ visitExpr
         visitExpr :: MonadState PartialModuleInfo m => Expr -> m ()
         visitExpr = \case (Atomic _) -> return ()
                           (Block exs _) -> mapM_ visitExpr exs
                           (Case expr clauses _) -> visitExpr expr >> mapM_ visitClause clauses
                           (Catch expr _) -> visitExpr expr
                           (Call operator operands _) -> visitExpr operator >> mapM_ visitExpr operands
                           (If clauses _) -> mapM_ visitClause clauses
                           (Match _ expr _ _) -> visitExpr expr
                           (Receive clauses timeout _) -> mapM_ visitClause clauses >> maybe (return ()) (\(e, b) -> visitExpr e >> visitBody b) timeout
                           (Tuple exs _) -> mapM_ visitExpr exs
                           (Cons car cdr _) -> visitExpr car >> visitExpr cdr
                           (Var _) -> return ()
                           (ModVar moduleName' ident) -> modify (over moduleImports (QualifiedIdentifier moduleName' ident:))
                           (MapLiteral fields _) ->  mapM_ (visitExpr . snd) fields
                           (MapUpdate expr fields _) -> visitExpr expr >> mapM_ (visitExpr . snd) fields

------------------------------------------------------------
-- Erlang -> EAF 
------------------------------------------------------------

-- | Erlang script to dump the EAF code embedded in a BEAM module
abstractFormatCode :: String -- ^ the name of the module to dump EAF code from
                   -> String -- ^ the resulting Erlang code
abstractFormatCode = printf template
   where template = "{ok,{_,[{abstract_code,{_,AC}}]}} = beam_lib:chunks(\"%s\",[abstract_code]),io:format(\"~p~n\", [AC])."

-- | Computes paths to Elixir libraries
elixirLibs :: IO String
elixirLibs = do
   (_, Just out, _, h) <- createProcess (proc "elixir" ["-e", "IO.puts :code.lib_dir(:elixir)"]) { std_out = CreatePipe }
   contents <- hGetContents out
   putStrLn contents
   _ <- waitForProcess h
   return contents


-- | Dump EAF code from a BEAM file to a file of the same name suffixed with ".ec"
dumpAbstractFormat :: FilePath -- ^ the file to dump the EAF for
                   -> String   -- ^ Erlang libraries path
                   -> IO ()
dumpAbstractFormat modulePath erlLibs = do
      putStrLn modulePath
      (_, Just out, _, h) <- createProcess (proc "erl" ["-noinput", "-eval", abstractFormatCode moduleName', "-s", "init", "stop"]) { std_out = CreatePipe, env = Just [("ERL_LIBS", erlLibs)], cwd = Just moduleDir }
      contents <- hGetContents out
      _ <- waitForProcess h
      outputFile <- openFile (modulePath ++ ".ec") WriteMode
      hPutStr outputFile contents
      hClose outputFile
   where moduleName' = takeBaseName modulePath
         moduleDir   = takeDirectory modulePath


------------------------------------------------------------
-- Erlang project utilities
------------------------------------------------------------

listDirectory' :: FilePath -> IO [FilePath]
listDirectory' dir = map (dir ++) <$> listDirectory dir

-- | Checks whether the given 'FilePath' is a valid Erlang Abstract Format File,
-- it does so by looking at its extension which should be `.ec`
isValidErlangFile :: FilePath -> Bool
isValidErlangFile = (== ".ec") . takeExtension

-- | Checks whether the given 'FilePath' is a valid BEAM module
isValidBeamFile :: FilePath -> Bool
isValidBeamFile = (== ".beam") . takeExtension


-- | Load, parse and compile all Erlang modules in the given directory and place them in a 'Modules' structure
loadModules :: FilePath -> IO Modules
loadModules = listDirectory' >=> fmap (asModules . moduleInfos) . mapM (\filename -> either (error . show) id. compileString filename <$> readFile filename) . filter isValidErlangFile
   where asModules :: [ModuleInfo] -> Modules
         asModules = Modules . Map.fromList . map (\modinfo@ModuleInfo {} -> (AST.moduleName modinfo, modinfo))

-- | Check whether the given module provides the requested function
doesImportResolve :: Modules -> String -> FunctionIdentifier -> Bool
doesImportResolve = undefined

-- | Compute a dependency graph from the given 'Modules' system
dependencyGraph :: Modules -> ModuleDependencies
dependencyGraph = foldr resolveImports emptyDependencyGraph  . Map.toList . allModules
   where resolveImports :: (String, ModuleInfo) -> ModuleDependencies -> ModuleDependencies
         -- TODO: also check whether the module actually exports the identifier
         resolveImports (_, modInfo) =
            let importNames = map (Ide.name . qualifiedName) $ AST.imports modInfo
                unqualNames = map (name . fst) $ AST.unqualifiedImports modInfo
                allNames    = importNames ++ unqualNames
            in flip (foldr (`addDependency` AST.moduleName modInfo)) allNames


-- | Load modules from the given `ebin` directory  (i.e., a directory that contains BEAM files),
-- writes `.ec` version (EAF versions) of the BEAM module to that directory in the process.
loadFromDir :: String -- ^ Erlang library path (e.g., elixirLibs)
            -> String -- ^ the path to the directory containing all beam files
            -> IO (Modules, ModuleDependencies)
loadFromDir erlLibs dir = listDirectory' dir >>= mapM_ (`dumpAbstractFormat` erlLibs ). filter isValidBeamFile >> fmap (second dependencyGraph . dup) (loadModules dir)

