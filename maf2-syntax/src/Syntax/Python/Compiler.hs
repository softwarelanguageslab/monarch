{-# LANGUAGE FlexibleContexts, LambdaCase, UndecidableInstances, ConstraintKinds, FlexibleInstances #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE TypeOperators #-}
-- | Reduced Python Syntax and its compiler
module Syntax.Python.Compiler(compile, parse, lexical) where


import Syntax.Python.AST
import Data.Functor
import Data.Maybe
import Control.Monad.Writer
import Control.Monad.Reader
import Control.Monad.State
import Control.Applicative ((<|>), liftA2)
import Syntax.Python.Parser (parseFile, SrcSpan)
import Language.Python.Common.AST hiding (Conditional, Pass, Continue, Break, Return, Call, Var, Bool, Tuple, Global, NonLocal)
import qualified Language.Python.Common.AST as AST
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Bitraversable
import Control.Monad.Cond
import Language.Python.Common.SrcLocation (spanning)
import Language.Python.Common (Span)


todo :: String -> a
todo = error . ("COMPILER ERROR: " ++)

-------------------------------------------------------------------------------
-- From String to AST
-------------------------------------------------------------------------------

-- | Parse a Python file to an AST
parse :: String  -- ^ filename
      -> String  -- ^ contents
      -> Maybe (Program SrcSpan AfterLexicalAddressing)
parse nam = parseFile nam >=> (\ex -> return $ uncurry (flip runLexical) $ runWriter (runReaderT (compile ex) Nothing))


data CompileError = Custom String

-------------------------------------------------------------------------------
-- Simplification phase
-------------------------------------------------------------------------------

-- | Simplification phase monad
type SimplifyM m a = (MonadReader (Maybe (Ide a)) m, MonadWriter [Ide a] m)

blockify :: MonadWriter [Ide a] m => m ([Ide a] -> Exp a AfterSimplification) -> m (Exp a AfterSimplification)
blockify mf = do
   (f, ides) <- censor (const []) (listen mf)
   return $ f ides

-- | Generate a (potentially namespaced) lhs pattern
namespacedLhs :: (SimplifyM m a) => Ide a -> m (Lhs a AfterSimplification)
namespacedLhs nam = ask >>= lhs
   where lhs (Just v) = return (IdePat (NamespacedIde nam v))
         lhs Nothing  = tell [nam] >> pure (IdePat nam)

-- | Generate an assignment
assign :: (SimplifyM m a) => Ide a -> Exp a AfterSimplification -> m (Stmt a AfterSimplification)
assign nam e = namespacedLhs nam <&> flip (Assg ()) e

-- | Compile Python programs into the reduced Python syntax
compile :: (SimplifyM m SrcSpan) => Module SrcSpan -> m (Program SrcSpan AfterSimplification)
compile (Module stmts) = (pure . Program) . makeSeq =<< mapM compileStmt  stmts

-- | Compile a statement in the Python reduced syntax
compileStmt :: (SimplifyM m SrcSpan) => Statement SrcSpan -> m (Stmt SrcSpan AfterSimplification)
compileStmt (Fun nam ags _ bdy a)         = assign (Ide nam) =<< compileFun ags bdy a
compileStmt (While cnd bdy els a)         = Loop () (compileExp cnd) <$> compileSequence bdy <*> pure a
compileStmt (AsyncFun def _)              = error "not supported AsyncFun"
compileStmt (AST.Conditional grds els a)  = Conditional () <$> mapM (\(exp, st) -> fmap (compileExp exp,) (compileSequence st)) grds <*> compileSequence els <*> pure a
compileStmt (StmtExpr e a)                = pure (StmtExp () (compileExp e) a)
compileStmt (Import items _)              = error "import not supported"
compileStmt (FromImport items _ _)        = error "import not supported"
compileStmt (For vrs gen bdy els _)       = todo "for expressions"
compileStmt (Class nam ags bdy a)         = do
   assignment <- tell [Ide nam] >> (assign (Ide nam) =<< compileClassInstance a (ident_string nam) ags)
   ltt <- Let () [] <$> compileClassBdy (Ide nam) bdy
   return $ makeSeq [assignment, ltt]
compileStmt (Assign to expr _)            = Assg () <$> compileLhs to <*> return (compileExp expr)
compileStmt (AugmentedAssign to op exp a) = compileStmt (Assign [to] (BinaryOp (translateOp op) to exp a) a)
compileStmt (Decorated decs def _)        = todo "eval decorated function"
compileStmt (AST.Return expr a)           = pure $ Return () (fmap compileExp expr) a
compileStmt (Raise expr _)                = todo "eval raise statement"
compileStmt (With ctx bdy _)              = todo "eval with statement"
compileStmt (AsyncWith stmt _)            = todo "eval async with statement"
compileStmt (AST.Pass a)                  = return $ makeSeq []
compileStmt (AST.Break a)                 = return $ Break () a
compileStmt (AST.Continue a)              = return $ Continue () a
compileStmt (AST.Global as a)             = return $ makeSeq $ map (flip (Global ()) a . Ide) as
compileStmt (AST.NonLocal as a)           = return $ makeSeq $ map (flip (NonLocal ()) a . Ide) as
compileStmt (Delete exs _)                = todo "delete statement"
compileStmt (Assert exs _)                = todo "assertion statement"
compileStmt stmt = error "unsupported exp"

-- | Compiles a sequence without introducing a block
compileSequence :: (SimplifyM m SrcSpan) => Suite SrcSpan -> m (Stmt SrcSpan AfterSimplification)
compileSequence es = makeSeq <$> mapM compileStmt es

-- | Compiles a block (something that has a different lexical scope)
compileFun :: (SimplifyM m SrcSpan) => [Parameter SrcSpan] -> Suite SrcSpan -> SrcSpan -> m (Exp SrcSpan AfterSimplification)
compileFun prs bdy a = blockify $ Lam (compilePrs prs) <$> local (const Nothing) (compileSequence bdy) <*> pure a

-- | Compile the parameters of a function
compilePrs :: [Parameter SrcSpan] -> [Par SrcSpan AfterSimplification]
compilePrs [] = []
compilePrs ((Param nam _ def a) : xs) = Prm (Ide nam) a  : compilePrs xs
compilePrs ((EndPositional _) : xs) = compilePrs xs
compilePrs ((VarArgsPos nam _ a) : xs) = VarArg (Ide nam) a : compilePrs xs
compilePrs ((VarArgsKeyword nam _ a) : xs) = VarKeyword (Ide nam) a : compilePrs xs
compilePrs _ = error "unknown type of expression"

-------------------------------------------------------------------------------
-- Expressions
-------------------------------------------------------------------------------

-- | Compiles an expression into a reduced Python expression
compileExp :: Expr SrcSpan -> Exp SrcSpan AfterSimplification
-- | Variables
compileExp (AST.Var ident _) = Var (Ide ident)
-- literals
compileExp (Int i _ a) = Literal (Integer i a)
-- todo: add support for the real domain in the abstract domain
-- compileExp (Float f _ _)       = pure $ inject f
compileExp (Imaginary {})      = todo "eval imaginary numbers"
compileExp (AST.Bool b a)      = Literal (Bool b a)
compileExp (Ellipsis _)        = todo "nothing"
compileExp (ByteStrings _ _)   = todo "eval bytestrings"
compileExp (Strings ss a)       = Literal (String (concat ss) a)
-- compound expressions
compileExp c@(AST.Call fun arg a) = Call (compileExp fun) (map compileArg arg) a
compileExp (Subscript e i _)          = todo "eval subscript"
compileExp (SlicedExpr e sl _)        = todo "eval sliced"
compileExp (Yield yld _)              = todo "eval yield"
compileExp (Generator comp _)         = todo "eval generator expression"
compileExp (Await ex _)               = todo "eval await expression"
compileExp (ListComp comp _)          = todo "eval list comprehension"
compileExp (List exs _)               = todo "eval list expressions"
compileExp (Dictionary map _)         = todo "eval dictionary expr"
compileExp (DictComp comp _)          = todo "eval dictionary comprehension"
compileExp (Set exs _)                = todo "eval sets"
compileExp (SetComp comp _)           = todo "eval set comprehension"
compileExp (Starred ex _)             = todo "eval starred expression"
compileExp (Paren ex _)               = compileExp ex
compileExp (CondExpr tru cnd fls _)   = todo "eval conditional expression"
compileExp (BinaryOp op left right a) = binaryToCall op left right a
compileExp (UnaryOp op arg _)         = todo "eval unary op"
compileExp (Dot rcv atr a)            = Read (compileExp rcv) (Ide atr) a
compileExp (Lambda ags bdy annot)     = Lam (compilePrs ags) (Return () (Just $ compileExp bdy) annot) annot [] -- note: [] is because of no local variables
compileExp (AST.Tuple exs _)          = todo "eval tuples"
compileExp ex = error "unsupported expression"-- ++ show (pretty ex))

compileArg :: Argument SrcSpan -> Arg SrcSpan AfterSimplification
compileArg (ArgExpr e a) = PosArg (compileExp e) a
compileArg (ArgKeyword k e a) = KeyArg (Ide k) (compileExp e) a
compileArg _ = error "should not happen for compileArg"

findKeyword :: Span SrcSpan => String -> [Arg SrcSpan ξ] -> Exp SrcSpan ξ -> SrcSpan -> (Exp SrcSpan ξ, SrcSpan)
findKeyword nam [] def defa = (def, defa)
findKeyword needle (KeyArg (Ide (Ident nam a)) ex _ : _)  _ _
   | nam == needle = (ex, a)
findKeyword nam (_ : ags) def defa = findKeyword nam ags def defa

positional :: [Arg a ξ] -> [Exp a ξ]
positional = map (\case PosArg e _ -> e) . filter (\case PosArg _ _ -> True ; KeyArg {} -> False)

-- | Compiles a class definition
-- A class definition is compiled to 
compileClassInstance :: MonadWriter [Ide SrcSpan] m => SrcSpan -> String -> [Argument SrcSpan] -> m (Exp SrcSpan AfterSimplification)
compileClassInstance a nam ags =
   -- First find out which meta-class to use for the instantation
   let arguments = map compileArg ags
       (metaclass, a') = findKeyword "metaclass" arguments (Var (Ide (Ident "type" a))) a
       superclasses    = positional arguments
   in return $
         Call (Read metaclass (Ide (Ident "__new__" a')) a')
              [PosArg (Var (Ide (Ident "type" a))) a,
               PosArg (Literal (String nam a)) a, 
               PosArg (Literal (Tuple superclasses a)) a, 
               PosArg (Literal (Dict a)) a] a


-- | Compiles a class body
compileClassBdy :: SimplifyM m SrcSpan => Ide SrcSpan -> Suite SrcSpan -> m (Stmt SrcSpan AfterSimplification)
compileClassBdy nam bdy = makeSeq <$> mapM (local (const $ Just nam) . compileStmt) bdy

-- | Compiles the left-hand-side of an assignment
compileLhs :: SimplifyM m SrcSpan => [Expr SrcSpan] -> m (Lhs SrcSpan AfterSimplification)
compileLhs [AST.Var ident _] = namespacedLhs (Ide ident)
compileLhs [Dot e x a] = return $ Field (compileExp e) (Ide x) a
compileLhs ex = error "unsupported expression as LHS in assignment"

-- | Translates a binary operation to a function call
binaryToCall :: Op SrcSpan -> Expr SrcSpan -> Expr SrcSpan -> SrcSpan -> Exp SrcSpan AfterSimplification
binaryToCall op left right a =
   let compiledLeft  = compileExp left
       compiledRight = compileExp right
   in Call (Read compiledLeft (opToIde op) (spanning (annot left) (annot op)))
           [PosArg compiledRight (annot right)] 
           a


opToIde :: Op a -> Ide a
opToIde op = case op of
   Not a -> error "do not support no"
   Exponent a -> Ide (Ident "__pow__" a)
   LessThan a -> Ide (Ident "__lt__" a)
   GreaterThan a -> Ide (Ident "__gt__" a)
   Equality a -> Ide (Ident "__eq__" a)
   GreaterThanEquals a -> Ide (Ident "__ge__" a)
   LessThanEquals a -> Ide (Ident "__le__" a)
   NotEquals a -> Ide (Ident "__ne__" a)
   BinaryOr a -> Ide (Ident "__or__" a)
   Xor a -> Ide (Ident "__xor__" a)
   BinaryAnd a -> Ide (Ident "__and__" a)
   ShiftLeft a -> Ide (Ident "__lshift__" a)
   ShiftRight a -> Ide (Ident "__rshift__" a)
   Multiply a -> Ide (Ident "__mul__" a)
   Plus a -> Ide (Ident "__add__" a)
   Minus a -> Ide (Ident "__sub__" a)
   Divide a -> Ide (Ident "__truediv__" a)
   FloorDivide a -> Ide (Ident "__floordiv__" a)
   MatrixMult a -> Ide (Ident "__matmul__" a)
   Invert a -> Ide (Ident "__invert__" a)
   Modulo a -> Ide (Ident "__mod__" a)
   _ -> error "unsupported operator"



-- | Translates an assignment operation to a regular operation
translateOp :: AssignOp a -> Op a
translateOp op = case op of
   PlusAssign  a -> Plus  a
   MinusAssign a -> Minus a
   MultAssign  a -> Multiply  a
   DivAssign   a -> Divide a
   ModAssign   a -> Modulo a
   PowAssign   a -> Exponent a
   BinAndAssign a -> BinaryAnd a
   BinOrAssign  a -> BinaryOr a
   BinXorAssign a -> Xor a
   LeftShiftAssign a -> ShiftLeft a
   RightShiftAssign a -> ShiftRight a
   FloorDivAssign a -> FloorDivide a
   MatrixMultAssign a -> MatrixMult a

-------------------------------------------------------------------------------
-- Lexical addressing
-------------------------------------------------------------------------------

-- | A frame is a flat mapping from strings to lexical addresses
newtype Frame a = Frame { getFrame :: Map String (IdeLex a) }

mkFrame :: [(String, IdeLex a)] -> Frame a
mkFrame = Frame . Map.fromList

-- | An environment is a linked list of frames
data Env a = Empty | Env (Frame a) (Env a)

-- | Look something up in the given frame
lookupFrame :: String -> Frame a -> Maybe (IdeLex a)
lookupFrame nam = Map.lookup nam . getFrame

-- | Look something up in the environment
lookupEnv ::  String -> Env a -> Maybe (IdeLex a)
lookupEnv nam Empty      = Just (IdeGbl nam (-1)) -- assume that it is a global if not found
lookupEnv nam (Env e es) = lookupFrame nam e <|> lookupEnv nam es

-- | Get a pointer to the global frame
global :: Env a -> Env a
global (Env frm Empty) = Env frm Empty
global (Env frm frms)  = global frms

-- | Returns the nonlocal environment (i.e. skips the global frame)
nonlocal :: Env a -> Env a
nonlocal (Env frm frms)  = frms

-- | Returns true if the given variable is global in the current context
isGlobal :: (LexicalM m a) => String -> m Bool
isGlobal nam = gets (Set.member nam . globals)

-- | Returns true if the given variable is a nonlocal in the current context
isNonLocal :: (LexicalM m a) => String -> m Bool
isNonLocal nam = gets (Set.member nam . nonlocals)

-- | Returns true if the invariant still holds in the current scope
checkInvariant :: (LexicalM m a) => m Bool
checkInvariant =
   gets (\s -> Set.intersection (locals s) (Set.union (globals s) (nonlocals s)) == Set.empty)

-- | Ensures that the invariant holds and if it does not produces an error with the given message
ensureInvariant :: (LexicalM m a) => String -> m x -> m x
ensureInvariant msg m = m >>= (\v -> checkInvariant >>= (\b -> if not b then error msg else return v))

-- | Extends the given environment with a new frame consisting of the giving bindings
extendedEnv :: [(String, IdeLex a)] -> Env a -> Env a
extendedEnv bds = Env frame'
   where frame' = Frame $ Map.fromList bds

-- | Enters a new scope by resetting all global and nonlocal variables
-- and creating a new frame with the given bindigs to execute the given computation in
enterScope :: (LexicalM m a) => [(String, IdeLex a)] -> m b -> m b
enterScope bds m = do
   -- first snapshot the current set of globals, nonlocals and locals
   snapshot <- get
   -- then continue with their reset
   modify (\s -> s { globals = Set.empty, nonlocals = Set.empty, locals = Set.empty })
   -- run the computation in the extended environment
   v <- local (extendedEnv bds) m
   -- reset to the snapshot, but keep the fresh
   modify (\s' -> snapshot { fresh = fresh s' })
   -- return the value of the computation
   return v

-- | Lexical addresser state.
--
-- The following invariant should always hold for the state:
-- locals ∩ (globals ∪ nonlocals) == ∅
data LexicalState = LexicalState {
   globals   :: Set String,      -- ^ set of variables considered to be global in the current scope
   nonlocals :: Set String,      -- ^ set of variables considered to be nonlocal in the current scope
   locals    :: Set String,      -- ^ set of variables considered to be local in the current scope
   fresh     :: Int              -- ^ fresh variable counter
}

-- | Generate a new identifier based on the given identifier
genIde :: (LexicalM m a) => Ide a -> m (IdeLex a)
genIde ide = modify (\s -> s { fresh = fresh s + 1 }) >> gets (IdeLex ide . fresh)

-- | Lexical addresser monad
type LexicalM m a = (MonadReader (Env a) m, MonadState LexicalState m)

-- | Run the lexical addresser on the given program
runLexical :: [Ide a] -- ^ list of top-level identifiers
           -> Program a AfterSimplification   -- ^ the program to apply lexical addressing to
           -> Program a AfterLexicalAddressing
runLexical bds (Program stmt) = Program $ Let () lexIdes $
      evalState (runReaderT (lexicalStmt stmt) (Env (mkFrame globalFrm) Empty)) (LexicalState Set.empty Set.empty Set.empty (lastSlot+1))
   where (lexIdes, lastSlot)   = runState (mapM (\ide -> modify (+1) >> gets (IdeLex ide)) bds) 0
         globalFrm             = zip (map ideName bds) lexIdes

-- | Run the lexical addresser on the given program, but keep track of an effectful context
lexical :: (LexicalM m a) => Program a AfterSimplification -> m (Program a AfterLexicalAddressing)
lexical = fmap Program . lexicalStmt . programStmt

-- | Run the lexical addresser on a single statement
lexicalStmt :: (LexicalM m a) => Stmt a AfterSimplification -> m (Stmt a AfterLexicalAddressing)
lexicalStmt (NonLocal _ x _) =
   ensureInvariant (ideName x ++ " is already used as a local (nonlocal)") $
      modify (\s -> s { nonlocals = Set.insert (ideName x) (nonlocals s) }) >> return (makeSeq [])
lexicalStmt (Global _ x _) =
   ensureInvariant (ideName x ++ " is already used as a local (global)") $
      modify (\s -> s { globals = Set.insert (ideName x) (globals s) }) >> return (makeSeq [])
lexicalStmt (Seq _ as)       = makeSeq <$> mapM lexicalStmt as
lexicalStmt (Return _ e a)   = Return () <$> mapM lexicalExp e <*> pure a
lexicalStmt (Assg _ lhs e)   = Assg () <$> lexicalLhs lhs <*> lexicalExp e
lexicalStmt (Loop _ grd s a) = Loop () <$> lexicalExp grd <*> lexicalStmt s <*> pure a
lexicalStmt (Break _ a)      = return $ Break () a
lexicalStmt (Continue _ a)   = return $ Continue () a
lexicalStmt (Conditional _ cls els a)  =
   Conditional () <$> mapM (bimapM lexicalExp lexicalStmt) cls <*> lexicalStmt els <*> pure a
lexicalStmt (StmtExp _ e a)  = StmtExp () <$> lexicalExp e <*> pure a
lexicalStmt (Let _ bds stmt)     = do
   varIdes <- mapM genIde bds
   enterScope (zip (map ideName bds) varIdes) $ Let () varIdes <$> lexicalStmt stmt

-- | Lookup a string and return the corresponding lexical identifier
lookupLexIde :: (LexicalM m a) => Ide a ->  m (Either (IdeLex a, Ide a) (IdeLex a))
lookupLexIde ide = condM [
      (isNonLocal name, asks (Right . try . lookupEnv name . nonlocal)),
      (isGlobal name, asks (Right  . try . lookupEnv name . global)),
      (pure True, case ide of
                    Ide i -> asks (Right . try . lookupEnv name)
                    NamespacedIde i ns -> asks (Left . (, i) . try . lookupEnv (ideName ns)))]
   where try   = fromMaybe (error $ "variable " ++ name ++ "not found")
         name  = ideName ide

-- | Run the lexical addresser on the given expression
lexicalExp :: (LexicalM m a) => Exp a AfterSimplification -> m (Exp a AfterLexicalAddressing)
lexicalExp (Var ide) = either (\(e, x) -> Read (Var e) x (annot (getIdeIdent $ lexIde e))) Var <$> lookupLexIde ide
lexicalExp (Lam prs stmt a vrs) = do
      let parNames  = map (ideName . parIde) prs
      let parNames' = Set.fromList parNames
      let vrsNames  = map ideName vrs
      parIdes <- mapM (overPar genIde) prs
      vrsIdes <- mapM genIde (filter (not . flip Set.member parNames' . ideName) vrs)
      Lam parIdes
         <$> (Let () vrsIdes <$>
               enterScope (zip (parNames ++ filter (not . flip Set.member parNames') vrsNames)
                               (map parIde parIdes ++ vrsIdes))
                          (lexicalStmt stmt))
         <*> pure a
         <*> pure ()
   where overPar f (Prm ide a)        = Prm <$> f ide <*> pure a
         overPar f (VarArg ide a)     = VarArg <$> f ide <*> pure a
         overPar f (VarKeyword ide a) = VarKeyword <$> f ide <*> pure a

lexicalExp (Read e x a)         = Read <$> lexicalExp e <*> pure x <*> pure a
lexicalExp (Call e ags a)       = Call <$> lexicalExp e <*> mapM lexicalArg ags <*> pure a
lexicalExp (Literal lit)        = Literal <$> lexicalLit lit

lexicalArg :: (LexicalM m a) => Arg a AfterSimplification -> m (Arg a AfterLexicalAddressing)
lexicalArg (PosArg e a)   = PosArg <$> lexicalExp e <*> pure a
lexicalArg (KeyArg x e a) = KeyArg x <$> lexicalExp e <*> pure a

lexicalLit :: (LexicalM m a) => Lit a AfterSimplification -> m (Lit a AfterLexicalAddressing)
lexicalLit (Bool b a)    = return $ Bool b a
lexicalLit (Integer i a) = return $ Integer i a
lexicalLit (Real r a)    = return $ Real r a
lexicalLit (String i a)  = return $ String i a
lexicalLit (Tuple es a)  = Tuple <$> mapM lexicalExp es <*> pure a
lexicalLit (Dict a)      = return $ Dict a

lexicalLhs :: (LexicalM m a) => Lhs a AfterSimplification -> m (Lhs a AfterLexicalAddressing)
lexicalLhs (Field e x a) = Field <$> lexicalExp e <*> pure x <*> pure a
lexicalLhs (ListPat ps a ) = ListPat <$> mapM lexicalLhs ps <*> pure a
lexicalLhs (TuplePat ps a) = TuplePat <$> mapM lexicalLhs ps <*> pure a
lexicalLhs (IdePat x)      = do
   -- first check whether the variable is already a local or a global
   unlessM (liftA2 (||) (isGlobal (ideName x)) (isNonLocal (ideName x))) $ do
      -- register the variable as local if it is not
      modify (\s -> s { locals = Set.insert (ideName x) (locals s) })
   -- lookup the variable and paste it into the pattern
   either (\(e, x) -> Field (Var e) x (annot $ getIdeIdent x)) IdePat <$> lookupLexIde x

