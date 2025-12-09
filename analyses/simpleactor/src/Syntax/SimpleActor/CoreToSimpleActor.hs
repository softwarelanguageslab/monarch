{-# LANGUAGE PatternSynonyms #-}
-- | Compiler from Core Erlang to the SimpleActor language
module Syntax.SimpleActor.CoreToSimpleActor(
  translate,
  translateModule,
  translateModules,
  moduleExports) where

import Syntax.CoreErlang (Ann(..), Module)
import qualified Syntax.CoreErlang as Core
import Syntax.AST (Exp(..), Lit(..), Pat(..), Binding)
import Syntax.Ide (Ide(..))
import Syntax.Span (Span, pattern Span, SpanOf(..), Position(..))
import Control.Monad.State
import Data.Foldable

------------------------------------------------------------
-- Translation Monad
------------------------------------------------------------

-- | State for the translation process
newtype TransState = TransState {
  freshCounter :: Int  -- Counter for generating fresh variable names
} deriving (Ord, Eq, Show)

-- | Initial translation state
initTransState :: TransState
initTransState = TransState { freshCounter = 0 }

-- | Translation monad
type TransM a = State TransState a

-- | Generate a fresh variable name
freshVar :: String -> TransM Ide
freshVar prefix = do
  st <- get
  let n = freshCounter st
  put st { freshCounter = n + 1 }
  return $ Ide (prefix ++ show n) dummySpan

------------------------------------------------------------
-- Helper functions
------------------------------------------------------------

-- | Throws the error given by the second argument and also
-- reports at which line number the error occured in the analyzed
-- code.
errorAt :: Span -> String -> a
errorAt s msg = error $ msg ++ " at " ++ show s


-- | Extract the underlying value from an annotated node
unAnn :: Ann a -> a
unAnn (Constr a) = a
unAnn (Ann a _) = a

-- | Get a dummy span for generated code
dummySpan :: Span
dummySpan = Span "" (Position 0 0) (Position 0 0)

-- | Retrieve the value of an atom
atomValue :: Core.Atom -> String
atomValue (Core.Atom s _) = s

------------------------------------------------------------
-- Literal Translation
------------------------------------------------------------

-- | Translate Core Erlang literal to SimpleActor expression
-- Returns Exp to properly handle tuples and cons as nested pairs
translateLit :: Core.Lit -> Exp
translateLit lit@(Core.CharLit c _) = Literal (Character c) (spanOf lit)
translateLit lit@(Core.IntegerLit i _) = Literal (Num i) (spanOf lit)
translateLit lit@(Core.FloatLit f _) = Literal (Real (realToFrac f)) (spanOf lit)
translateLit lit@(Core.AtomLit (Core.Atom "true" _) _) = Literal (Boolean True) (spanOf lit)
translateLit lit@(Core.AtomLit (Core.Atom "false" _) _) = Literal (Boolean False) (spanOf lit)
translateLit lit@(Core.AtomLit (Core.Atom str _) _) = Literal (Symbol str) (spanOf lit)
translateLit lit@(Core.StringLit str _) = Literal (String str) (spanOf lit)
translateLit lit@(Core.NilLit _) = Literal Nil (spanOf lit)
translateLit lit@(Core.TupleLit lits _) =
  -- Encode tuple as nested pairs: {a, b, c} => (a, (b, (c, nil)))
  foldr (\l acc -> Pair (translateLit l) acc (spanOf lit))
        (Literal Nil (spanOf lit))
        lits
translateLit lit@(Core.ConsLit hd tl _) =
  -- Encode cons as a pair: [H|T] => (H, T)
  Pair (translateLit hd) (translateLit tl) (spanOf lit)

------------------------------------------------------------
-- Pattern Translation
------------------------------------------------------------

-- | Translate Core Erlang pattern to SimpleActor pattern
translatePat :: Ann Core.Pattern -> Pat
translatePat annPat =
  let pat = unAnn annPat in
  case pat of
    Core.VarPat ide _ -> IdePat (unAnn ide)
    Core.AtomicPat lit _ -> litToPat lit
    Core.TuplePat pats _ ->
      -- Encode tuple pattern as nested pair patterns: {a, b, c} => (a, (b, (c, nil)))
      foldr (PairPat . translatePat)
            (ValuePat Nil)
            pats
    Core.ConsPat hd tl _ ->
      -- Encode cons pattern as pair pattern: [H|T] => (H, T)
      PairPat (translatePat hd) (translatePat tl)
    Core.BinaryPat _ _ ->
      errorAt (spanOf pat) "Binary patterns are not yet supported in CoreToSimpleActor translation"
    Core.MapPat {} ->
      errorAt (spanOf pat) "Map patterns are not yet supported in CoreToSimpleActor translation"
    Core.AliasPat ide innerPat _ ->
      -- Alias patterns: bind both the variable and match the inner pattern
      AliasPat (unAnn ide) (translatePat innerPat)

-- | Convert a Core Erlang literal to a SimpleActor pattern
litToPat :: Core.Lit -> Pat
litToPat (Core.CharLit c _) = ValuePat (Character c)
litToPat (Core.IntegerLit i _) = ValuePat (Num i)
litToPat (Core.FloatLit f _) = ValuePat (Real (realToFrac f))
litToPat (Core.AtomLit (Core.Atom "true"_) _) = ValuePat (Boolean True)
litToPat (Core.AtomLit (Core.Atom "false" _) _) = ValuePat (Boolean False)
litToPat (Core.AtomLit (Core.Atom str _) _) = ValuePat (Symbol str)
litToPat (Core.StringLit str _) = ValuePat (String str)
litToPat (Core.NilLit _) = ValuePat Nil
litToPat (Core.TupleLit lits _) =
  -- Encode tuple literal pattern as nested pairs: {1, 2, 3} => (1, (2, (3, nil)))
  foldr (PairPat . litToPat)
        (ValuePat Nil)
        lits
litToPat (Core.ConsLit hd tl _) =
  -- Encode cons literal pattern as pair: [1|2] => (1, 2)
  PairPat (litToPat hd) (litToPat tl)

------------------------------------------------------------
-- Expression Translation
------------------------------------------------------------

-- | Translate Core Erlang expression to SimpleActor expression
translateExpr :: Ann Core.Expr -> TransM Exp
translateExpr annExpr =
  let expr = unAnn annExpr
      sp = spanOf annExpr
  in case expr of
    -- Basic expressions
    Core.LitExpr lit _ ->
      pure $ translateLit lit

    Core.VarExpr ide _ ->
      pure $ Var (unAnn ide)

    Core.FunExpr params body _ ->
      Lam (map unAnn params) <$> translateExpr body <*> pure sp

    -- Tuple and list construction
    Core.TupleExpr exprs _ ->
      -- Encode tuple as nested pairs: {e1, e2, e3} => (e1, (e2, (e3, nil)))
      foldrM (\e acc -> Pair <$> translateExpr e <*> pure acc <*> pure sp) (Literal Nil sp) exprs

    Core.ConsExpr hd tl _ ->
      -- Encode cons as a pair: [H|T] => (H, T)
      Pair <$> translateExpr hd <*> translateExpr tl <*> pure sp

    Core.ValuesExpr exprs _ ->
      -- Multiple values encoded as nested pairs: <e1, e2, e3> => (e1, (e2, (e3, nil)))
      foldrM (\e acc -> Pair <$> translateExpr e <*> pure acc <*> pure sp) (Literal Nil sp) exprs

    Core.FunNameExpr (Core.Function (Core.Atom name _) arity _) _ ->
      -- Function names are represented as symbols with arity
      pure $ Var (Ide (name ++ "/" ++ show arity) sp)

    -- Let and letrec expressions
    Core.LetExpr vars arg body _ ->
      -- let <vars> = arg in body
      case vars of
        [var] ->
          -- Single variable: straightforward let binding
          (Letrec . (\a -> [(unAnn var, a)]) <$> translateExpr arg) <*> translateExpr body <*> pure sp
        _ -> do
          -- Multiple variables: destructure using pattern matching
          tempVar <- freshVar "_letvals"
          argExpr <- translateExpr arg
          bodyExpr <- translateExpr body
          let pat = foldr (PairPat . IdePat . unAnn) (ValuePat Nil) vars
          pure $ Letrec [(tempVar, argExpr)] (Match (Var tempVar) [(pat, bodyExpr)] sp) sp

    Core.LetRecExpr defs body _ -> do
      -- letrec defs in body
      bindings <- traverse translateFunDef defs
      Letrec bindings <$> translateExpr body <*> pure sp

    -- Application and calls
    Core.ApplyExpr fun args _ ->
      -- apply fun(args)
      App <$> translateExpr fun <*> traverse translateExpr args <*> pure sp

    Core.CallExpr modExpr nameExpr args _ ->
      -- call mod:name(args)
      case (unAnn modExpr, unAnn nameExpr) of
        (Core.LitExpr (Core.AtomLit (Core.Atom modName _) _) _,
         Core.LitExpr (Core.AtomLit (Core.Atom funName _) _) _) -> do
          -- Static call: use qualified application
          translatedArgs <- traverse translateExpr args
          pure $ AppQual (Ide modName sp) (Ide (funName ++ "/" ++ show (length args)) sp) translatedArgs sp
        _ ->
          -- Dynamic calls should not occur in Core Erlang after compilation
          error "Dynamic calls (non-literal module/function names) are not supported"

    -- Case expressions
    Core.CaseExpr arg clauses _ -> do
      -- case arg of clauses end
      scrutinee <- translateExpr arg
      branches <- traverse translateClause clauses
      pure $ Match scrutinee branches sp

    -- Primop expressions
    Core.PrimOpExpr nameExpr args _ ->
      -- primop name(args) => primop("name", args...)
      case unAnn nameExpr of
        Core.LitExpr (Core.AtomLit (Core.Atom primName _) _) _ -> do
          translatedArgs <- traverse translateExpr args
          pure $ AppQual (Ide "primop" sp) (Ide primName sp) translatedArgs sp
        _ ->
          error "Dynamic primop names are not supported"

    -- Sequencing
    Core.SeqExpr arg body _ ->
      -- do arg body => begin arg; body end
      Begin <$> traverse translateExpr [arg, body] <*> pure sp

    -- Receive expressions (not used in modern Core Erlang)
    Core.ReceiveExpr {} ->
      error "Receive expressions are not yet supported in CoreToSimpleActor translation (use primops instead)"

    -- Try/Catch expressions (not yet supported)
    Core.TryExpr {} ->
      error "Try expressions are not yet supported in CoreToSimpleActor translation"

    Core.CatchExpr _ _ ->
      error "Catch expressions are not yet supported in CoreToSimpleActor translation"

    -- Map expressions (not yet supported)
    Core.MapExpr {} ->
      error "Map expressions are not yet supported in CoreToSimpleActor translation"

    -- Binary expressions (not yet supported)
    Core.BinaryExpr _ _ ->
      error "Binary expressions are not yet supported in CoreToSimpleActor translation"

-- | Translate a case clause
translateClause :: Ann Core.Clause -> TransM (Pat, Exp)
translateClause annClause =
  let clauseSpan = spanOf annClause in
  case unAnn annClause of
    Core.Clause pats guard body _ -> do
      let pat = case pats of
            [p] -> translatePat p
            _ -> foldr (PairPat . translatePat) (ValuePat Nil) pats
      bodyExpr <- translateExpr body
      guardedBody <- case unAnn guard of
        Core.LitExpr (Core.AtomLit (Core.Atom "true" _) _) _ ->
          -- No guard, just the body
          pure bodyExpr
        _ -> do
          -- With guard: if guard then body else error
          guardExpr <- translateExpr guard
          pure $ Ite guardExpr bodyExpr (Error (Literal (String "guard_failed") clauseSpan) clauseSpan) clauseSpan
      pure (pat, guardedBody)

-- | Translate a function definition
translateFunDef :: Core.FunDef -> TransM Binding
translateFunDef (Core.FunDef annFun body s) =
  case unAnn annFun of
    Core.Function (Core.Atom name _) arity _ ->
      (Ide (name ++ "/" ++ show arity) s,) <$> translateExpr body

------------------------------------------------------------
-- Module Translation
------------------------------------------------------------

-- | Translate a Core Erlang module into a list of SimpleActor bindings
translate :: Ann Module -> [Binding]
translate annMod =
  let mod' = unAnn annMod
      defs = Core.moduleDefinitions mod'
  in evalState (traverse translateFunDef defs) initTransState

-- | Translate the module into a "module function" that accepts the name
-- of the function as a parameter (a symbol) and returns the function itself
translateModule :: Ann Module -> Exp
translateModule annMod =
  let bds  = translate annMod
      exports = moduleExports annMod
      exportPats = map (\(nam, arity) -> ValuePat (Symbol $ nam ++ "/" ++ show arity)) exports
      exportNames = map (\(nam, arity) -> Var (Ide (nam ++ "/" ++ show arity) dummySpan)) exports
  in Letrec bds (Lam [Ide "$funname" (spanOf annMod)]
                     (Match (Var (Ide "$funname" dummySpan))
                            (zip exportPats exportNames)
                            dummySpan)
                     dummySpan)
                dummySpan

-- | Extract the exports from a Core Erlang module
moduleExports :: Ann Module -> [(String, Int)]
moduleExports annMod =
  let mod' = unAnn annMod
      exports = Core.moduleExports mod'
  in map extractFunctionNameAndArity exports
  where
    extractFunctionNameAndArity annFun =
      case unAnn annFun of
        Core.Function (Core.Atom name _) arity _ -> (name, fromInteger arity)

------------------------------------------------------------
-- Multi-module translation
------------------------------------------------------------

-- | Generates one simple actor program that contains all the modules and inserts
-- a call to the given module and function as the main body. Currently only functions
-- with arity zero are supported for this purpose.
translateModules :: [Ann Module] -- ^ list of modules to translate
                 -> String       -- ^ the name of the module to call
                 -> String       -- ^ the name of the function to call, including its arity
                 -> Exp
translateModules modules modName funName =
    Letrec (zip moduleNames moduleExpr) (App (App (Var (Ide modName dummySpan))
                                                  [Literal (Symbol funName) dummySpan]
                                                  dummySpan)
                                             [] dummySpan)
           dummySpan
  where moduleNames = map (flip Ide dummySpan . atomValue . Core.moduleName . unAnn) modules
        moduleExpr  = map translateModule modules


