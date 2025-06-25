{-# LANGUAGE FlexibleContexts, LambdaCase, UndecidableInstances, ConstraintKinds, FlexibleInstances #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# OPTIONS_GHC -Wno-unused-top-binds #-}
{-# OPTIONS_GHC -Wno-orphans #-}

-- | Reduced Python Syntax and its compiler
module Syntax.Python.Compiler(compile, parse, lexical, PyLoc(..), PyTag(..), tagAs) where


import Syntax.Python.AST
import Data.Functor
import Data.Maybe
import Control.Monad
import Control.Monad.Writer
import Control.Monad.Reader
import Control.Monad.State
import Control.Applicative (liftA2, asum)
import Syntax.Python.Parser (parseFile, SrcSpan(..))
import Language.Python.Common.AST hiding (None, List, Handler, Try, Raise, Conditional, Pass, Continue, Break, Return, Call, Var, Bool, Tuple, Global, NonLocal)
import qualified Language.Python.Common.AST as AST
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Bitraversable
import Control.Monad.Cond
import Language.Python.Common.SrcLocation (spanning)
import Language.Python.Common (startRow, startCol)
import Data.Bifunctor (Bifunctor(second, first))
import Data.Function ((&))
import GHC.Generics (Generic)
import Control.DeepSeq (NFData (rnf))


todo :: String -> a
todo = error . ("COMPILER ERROR: " ++)

fromLeft :: Either a b -> a
fromLeft (Left a) = a
fromLeft _ = error "fromLeft of a Right"

fromRight :: Either a b -> b
fromRight (Right b) = b
fromRight _ = error "fromRight of a Left"

-------------------------------------------------------------------------------
-- Source code locations with extra Python-specific tags 
-------------------------------------------------------------------------------

instance NFData SrcSpan where
  rnf _ = ()  -- SrcSpan is treated as already fully evaluated (safe if it's metadata only)

data PyLoc = PyLoc SrcSpan (Maybe PyTag)
   deriving (Eq, Ord, Generic)

instance NFData PyLoc where
data PyTag = FrmTag
           | ClsStr
           | ClsTup
           | ClsDct
           | ClsNew
           | IniBnd
           | IniCll
           | ForItr
           | ForNxt
           | ForBln
           | ItrCll
           | NxtCll
           | NxtIdx
           | NxtExc
           | ItrIdx
           | ItrLst
           | IffCnd 
           | IffPrm
           | IffNxt
           | DctKey String
   deriving (Eq, Ord, Show, Generic)

instance NFData PyTag where

instance Show PyLoc where
   show (PyLoc s t) = locStr ++ tagStr
    where locStr = show (startRow s) ++ ":" ++ show (startCol s)
          tagStr = maybe "" ((':':) . show) t

untagged :: SrcSpan -> PyLoc
untagged = flip PyLoc Nothing

tagAs :: PyTag -> PyLoc -> PyLoc
tagAs tag (PyLoc loc _) = PyLoc loc (Just tag)

spanningTagged :: PyLoc -> PyLoc -> PyLoc
spanningTagged (PyLoc a1 Nothing) (PyLoc a2 Nothing) = PyLoc (spanning a1 a2) Nothing
spanningTagged _ _ = error "spanning not supported for tagged locations"

-------------------------------------------------------------------------------
-- From String to AST
-------------------------------------------------------------------------------

evalWriterT :: Monad m => WriterT w m a -> m a
evalWriterT m = fst <$> runWriterT m

-- | Parse a Python file to an AST
parse :: String  -- ^ filename
      -> String  -- ^ contents
      -> Maybe (Program PyLoc AfterLexicalAddressing)
parse nam = parseFile nam >=> (\ex -> runLexical <$> evalStateT (evalWriterT (runReaderT (compile $ untagged <$> ex) Nothing)) 0)

-------------------------------------------------------------------------------
-- Simplification phase
-------------------------------------------------------------------------------

-- | Simplification phase monad
type SimplifyM m a = (MonadReader (Maybe (Ide a)) m, MonadState Int m, MonadWriter [Ide a] m)

gensym :: SimplifyM m a => m String
gensym = do n <- get
            put (n+1)
            return ("$var" ++ show n)

capture :: SimplifyM m PyLoc => m a -> m (a, [Ide PyLoc])
capture = censor (const []) . listen

-- TODO: assumes this is only used by compileClassBdy? So integrate it there 
thunkify :: a -> Stmt a AfterSimplification -> Stmt a AfterSimplification
thunkify a bdy = StmtExp () (Call (Lam [] bdy a []) [] [] a) a

compileLam :: SimplifyM m PyLoc => [Parameter PyLoc] -> Suite PyLoc -> PyLoc -> m (Exp PyLoc AfterSimplification)
compileLam prs bdy a = do (bdy', ids) <- capture $ local (const Nothing) (compileSequence bdy)
                          return $ Lam (compilePrs prs) bdy' a ids

-- | Generate a (potentially namespaced) lhs pattern
namespacedLhs :: SimplifyM m PyLoc => Ide PyLoc -> m (Lhs PyLoc AfterSimplification)
namespacedLhs nam = ask >>= lhs
   where lhs (Just v) = return $ IdePat (NamespacedIde nam v)
         lhs Nothing  = tell [nam] >> return (IdePat nam)

-- | Generate an assignment
assign :: SimplifyM m PyLoc => Ide PyLoc -> Exp PyLoc AfterSimplification -> m (Stmt PyLoc AfterSimplification)
assign nam e = namespacedLhs nam <&> flip (Assg ()) e

-- | Compile Python programs into the reduced Python syntax
compile :: SimplifyM m PyLoc => Module PyLoc -> m (Program PyLoc AfterSimplification)
compile (Module stmts) = Program . makeSeq <$> mapM compileStmt stmts

-- | Compile a statement in the Python reduced syntax
compileStmt :: SimplifyM m PyLoc => Statement PyLoc -> m (Stmt PyLoc AfterSimplification)
compileStmt (Fun nam ags _ bdy a)         = assign (Ide nam) =<< compileLam ags bdy a
compileStmt (While cnd bdy els a)         = Loop () (compileExp cnd) <$> compileSequence bdy <*> pure a
compileStmt (AsyncFun def _)              = error "not supported AsyncFun"
compileStmt (AST.Conditional grds els a)  = Conditional () <$> mapM (\(exp, st) -> fmap (compileExp exp,) (compileSequence st)) grds <*> compileSequence els <*> pure a
compileStmt (StmtExpr e a)                = pure (StmtExp () (compileExp e) a)
compileStmt (Import items _)              = error "import not supported"
compileStmt (FromImport items _ _)        = error "import not supported"
compileStmt (For vrs gen bdy els a)       = compileFor vrs gen bdy els a
compileStmt (Class nam ags bdy a)         = do
   assignment <- assign (Ide nam) (compileClassInstance a (ident_string nam) ags)
   ltt <- thunkify a <$> compileClassBdy (Ide nam) bdy
   return $ makeSeq [assignment, ltt]
compileStmt (Assign [Subscript e i a1] r a2) = pure $ flip (StmtExp ()) a2 $ Call (Read (compileExp e) (Ide (Ident "__setitem__" a1)) a1)
                                                                                  [compileExp i, compileExp r]
                                                                                  []
                                                                                  a2
compileStmt (Assign to expr _)            = Assg () <$> compileLhs to <*> return (compileExp expr)
compileStmt (AugmentedAssign to op exp a) = compileStmt (Assign [to] (BinaryOp (translateOp op) to exp a) a)
compileStmt (Decorated decs def _)        = compileStmt def -- TODO: don't ignore the decorator? 
compileStmt (AST.Return expr a)           = pure $ Return () (fmap compileExp expr) a
compileStmt (AST.Raise rexp a)            = pure $ Raise  () (compileRaiseExp rexp) a
compileStmt (AST.Try bdy hds [] [] a)     = compileTry bdy hds a
compileStmt (AST.Try {})                  = todo "try with finally and/or else part"
compileStmt (With ctx bdy _)              = todo "eval with statement"
compileStmt (AsyncWith stmt _)            = todo "eval async with statement"
compileStmt (AST.Pass a)                  = return $ makeSeq []
compileStmt (AST.Break a)                 = return $ Break () a
compileStmt (AST.Continue a)              = return $ Continue () a
compileStmt (AST.Global as a)             = return $ makeSeq $ map (flip (Global ()) a . Ide) as
compileStmt (AST.NonLocal as a)           = return $ makeSeq $ map (flip (NonLocal ()) a . Ide) as
compileStmt (Delete exs _)                = todo "delete statement"
compileStmt (Assert exs _)                = todo "assertion statement"
compileStmt (AsyncFor {})                 = error "unsupported exp"
compileStmt (AnnotatedAssign {})          = error "unsupported exp"
compileStmt (Print {})                    = error "unsupported exp"
compileStmt (Exec {})                     = error "unsupported exp"


compileRaiseExp :: RaiseExpr PyLoc -> Exp PyLoc AfterSimplification
compileRaiseExp (RaiseV3 (Just (expr, Nothing))) = compileExp expr
compileRaiseExp _ = todo "unsupported raise expression with from or empty raise"

compileTry :: SimplifyM m PyLoc => Suite PyLoc -> [AST.Handler PyLoc] -> PyLoc -> m (Stmt PyLoc AfterSimplification)
compileTry bdy hds loc = Try () <$> compileSequence bdy <*> mapM compileHandler hds <*> pure loc
   where compileHandler (AST.Handler cls bdy _) = (compileClause cls,) <$> compileSequence bdy
         compileClause  (AST.ExceptClause Nothing _)               = Var (Ide (Ident "Exception" loc))
         compileClause  (AST.ExceptClause (Just (exc, Nothing)) _) = compileExp exc
         compileClause _                                           = todo "unsupported except clause"

-- | Compiles a sequence without introducing a block
compileSequence :: SimplifyM m PyLoc => Suite PyLoc -> m (Stmt PyLoc AfterSimplification)
compileSequence es = makeSeq <$> mapM compileStmt es

-- | Compiles a for statement to a loop
compileFor :: SimplifyM m PyLoc => [Expr PyLoc] -> Expr PyLoc -> Suite PyLoc -> Suite PyLoc -> PyLoc -> m (Stmt PyLoc AfterSimplification)
compileFor [AST.Var nam _] gen bdy [] a   = do var <- gensym
                                               let ide = Ide (Ident var a)
                                               ass1 <- assign ide       (Call (Read (compileExp gen) (Ide (Ident "__iter__" a)) (tagAs ForItr a)) [] [] (tagAs ItrCll a))
                                               ass2 <- assign (Ide nam) (Call (Read (Var ide)        (Ide (Ident "__next__" a)) (tagAs ForNxt a)) [] [] (tagAs NxtCll a))
                                               let nxt = Try () ass2 [(Var (Ide (Ident "StopIteration" a)), Break () a)] a
                                               bdy' <- makeSeq . (nxt:) . (:[]) <$> compileSequence bdy
                                               let whi = Loop () (Literal (Bool True (tagAs ForBln a))) bdy' a
                                               return $ makeSeq [ass1, whi]
compileFor _ _ _ _ _                      = todo "unsupported for form"

-- | Compile the parameters of a function
compilePrs :: [Parameter PyLoc] -> [Par PyLoc AfterSimplification]
compilePrs [] = []
compilePrs ((Param nam _ def a) : xs) = Prm (Ide nam) a  : compilePrs xs
compilePrs ((EndPositional _) : xs) = compilePrs xs
compilePrs ((VarArgsPos nam _ a) : xs) = VarArg (Ide nam) a : compilePrs xs
compilePrs ((VarArgsKeyword nam _ a) : xs) = VarKeyword (Ide nam) a : compilePrs xs
compilePrs ((UnPackTuple {}) : _) = error "unknown type of expression"

-------------------------------------------------------------------------------
-- Expressions
-------------------------------------------------------------------------------

-- | Compiles an expression into a reduced Python expression
compileExp :: Expr PyLoc -> Exp PyLoc AfterSimplification
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
compileExp (Strings ss a)      = Literal $ String (concatMap (init . tail) ss) a
-- compound expressions
compileExp c@(AST.Call fun arg a)     = compileCall fun arg a -- Call (compileExp fun) (map compileArg arg) a
compileExp (Subscript e i a)          = Call (Read (compileExp e) (Ide (Ident "__getitem__" a)) a) [compileExp i] [] a
compileExp (SlicedExpr e sl _)        = todo "eval sliced"
compileExp (Yield yld _)              = todo "eval yield"
compileExp (Generator comp _)         = todo "eval generator expression"
compileExp (Await ex _)               = todo "eval await expression"
compileExp (ListComp comp _)          = todo "eval list comprehension"
compileExp (AST.List exs a)           = Literal $ List (map compileExp exs) a
compileExp (Dictionary bds a)         = Literal $ Dict (map compileDictBnd bds) a
compileExp (DictComp comp _)          = todo "eval dictionary comprehension"
compileExp (Set exs _)                = todo "eval sets"
compileExp (SetComp comp _)           = todo "eval set comprehension"
compileExp (Starred ex _)             = todo "eval starred expression"
compileExp (Paren ex _)               = compileExp ex
compileExp (CondExpr tru cnd fls _)   = todo "eval conditional expression"
compileExp (BinaryOp op left right a) = compileBinaryOp op left right a
compileExp (UnaryOp op arg a)         = compileUnaryOp op arg a
compileExp (Dot rcv atr a)            = Read (compileExp rcv) (Ide atr) a
compileExp (Lambda ags bdy annot)     = Lam (compilePrs ags) (Return () (Just $ compileExp bdy) annot) annot [] -- note: [] is because of no local variables
compileExp (AST.Tuple exs a)          = Literal $ Tuple (map compileExp exs) a
compileExp (LongInt {})               = todo "longInt"
compileExp (Float f _ a)              = Literal $ Real f a
compileExp (AST.None a)               = Literal $ None a
compileExp (UnicodeStrings {})        = todo "unicodeStrings"
compileExp (StringConversion {})      = todo "stringConversion"
--compileExp ex = error "unsupported expression"-- ++ show (pretty ex))

compileCall :: Expr PyLoc -> [Argument PyLoc] -> PyLoc -> Exp PyLoc AfterSimplification
compileCall fun args = Call (compileExp fun) posArgs kwArgs
   where (posArgs, kwArgs) = compileArgs args

compileArgs :: [Argument PyLoc] -> ([Exp PyLoc AfterSimplification], [(Ide PyLoc, Exp PyLoc AfterSimplification)])
compileArgs args = (posCompiled, kwCompiled)
   where (posArgs, kwArgs) = args & span (\case ArgExpr{} -> True
                                                _         -> False)
         posCompiled = posArgs & map (\case ArgExpr e _ -> compileExp e
                                            _           -> error "should not happen!")
         kwCompiled = kwArgs & map (\case ArgKeyword k e _ -> (Ide k, compileExp e)
                                          _                -> error "nonkeyword argument not allowed after keywords")

--findKeyword :: Span PyLoc => String -> [Arg PyLoc ξ] -> Exp PyLoc ξ -> PyLoc -> (Exp PyLoc ξ, PyLoc)
--findKeyword nam [] def defa = (def, defa)
--findKeyword needle (KeyArg (Ide (Ident nam a)) ex _ : _)  _ _
--   | nam == needle = (ex, a)
--findKeyword nam (_ : ags) def defa = findKeyword nam ags def defa

--positional :: [Arg a ξ] -> [Exp a ξ]
--positional = map (\case PosArg e _ -> e) . filter (\case PosArg _ _ -> True ; KeyArg {} -> False)

-- | Compiles a class definition
-- A class definition is compiled to 
compileClassInstance :: PyLoc -> String -> [Argument PyLoc] -> Exp PyLoc AfterSimplification
compileClassInstance a nam ags =
   -- First find out which meta-class to use for the instantation
   -- NOTE -- this transformation assumes that:
   -- * the variable 'type' is not shadowed
   -- * the metaclass expression is a simple expression (easily fixable though)
   let (posArgs, kwArgs) = compileArgs ags
       metaclass = fromMaybe (Var (Ide (Ident "type" a))) $ lookup "metaclass" $ map (first ideName) kwArgs  --findKeyword "metaclass" arguments (Var (Ide (Ident "type" a))) a
   in Call metaclass
           [Literal (String nam $ tagAs ClsStr a),
            Literal (Tuple posArgs $ tagAs ClsTup a),
            Literal (Dict [] $ tagAs ClsDct a)]
           []
           (tagAs ClsNew a)

-- | Compiles a class body
compileClassBdy :: SimplifyM m PyLoc => Ide PyLoc -> Suite PyLoc -> m (Stmt PyLoc AfterSimplification)
compileClassBdy nam = local (const $ Just nam) . compileSequence

-- | Compiles the left-hand-side of an assignment
compileLhs :: SimplifyM m PyLoc => [Expr PyLoc] -> m (Lhs PyLoc AfterSimplification)
compileLhs [AST.Var ident _] = namespacedLhs (Ide ident)
compileLhs [Dot e x a] = return $ Field (compileExp e) (Ide x) a
compileLhs ex = error "unsupported expression as LHS in assignment"

compileBinaryOp :: Op PyLoc -> Expr PyLoc -> Expr PyLoc -> PyLoc -> Exp PyLoc AfterSimplification
compileBinaryOp op left right a = case opToIde op of
   Right _ -> binaryToLogicOp op left right a
   Left _  -> binaryToCall op left right a

binaryToLogicOp :: Op PyLoc -> Expr PyLoc -> Expr PyLoc -> PyLoc -> Exp PyLoc AfterSimplification
binaryToLogicOp op left right a =
   let compiledLeft  = compileExp left
       compiledRight = compileExp right
       lop           = fromRight $ opToIde op
   in LogicOp lop [compiledLeft, compiledRight] a

-- | Translates a binary operation to a function call
binaryToCall :: Op PyLoc -> Expr PyLoc -> Expr PyLoc -> PyLoc -> Exp PyLoc AfterSimplification
binaryToCall op left right a =
   let compiledLeft  = compileExp left
       compiledRight = compileExp right
   in Call (Read compiledLeft (fromLeft $ opToIde op) (spanningTagged (annot left) (annot op)))
           [compiledRight]
           []
           a

compileUnaryOp :: Op PyLoc -> Expr PyLoc -> PyLoc -> Exp PyLoc AfterSimplification
compileUnaryOp op arg a = case opToIde op of
   Right _ -> unaryToLogicOp op arg a
   Left _  -> unaryToCall op arg a

unaryToLogicOp :: Op PyLoc -> Expr PyLoc -> PyLoc -> Exp PyLoc AfterSimplification
unaryToLogicOp op arg a =
   let compiledArg  = compileExp arg
       lop           = fromRight $ opToIde op
   in LogicOp lop [compiledArg] a

-- | Translates a unary operation to a function call 
unaryToCall :: Op PyLoc -> Expr PyLoc -> PyLoc -> Exp PyLoc AfterSimplification
unaryToCall op arg a =
   let compiledArg  = compileExp arg
   in Call (Read compiledArg (fromLeft $ opToIde op) (spanningTagged (annot arg) (annot op)))
           []
           []
           a

compileDictBnd :: DictKeyDatumList PyLoc -> (Exp PyLoc AfterSimplification, Exp PyLoc AfterSimplification)
compileDictBnd (DictMappingPair kexpr vexpr) = (compileExp kexpr, compileExp vexpr)
compileDictBnd _ = error "unsupported dictionary entry (unwrapping)"

opToIde :: Op a -> Either (Ide a) (LOp a)
opToIde op = case op of
   Not a -> Right $ LNot a
   And a -> Right $ LAnd a
   Or a -> Right $ LOr a
   Exponent a -> Left $ Ide (Ident "__pow__" a)
   LessThan a -> Left $ Ide (Ident "__lt__" a)
   GreaterThan a -> Left $ Ide (Ident "__gt__" a)
   Equality a -> Left $ Ide (Ident "__eq__" a)
   GreaterThanEquals a -> Left $ Ide (Ident "__ge__" a)
   LessThanEquals a -> Left $ Ide (Ident "__le__" a)
   NotEquals a -> Left $ Ide (Ident "__ne__" a)
   BinaryOr a -> Left $ Ide (Ident "__or__" a)
   Xor a -> Left $ Ide (Ident "__xor__" a)
   BinaryAnd a -> Left $ Ide (Ident "__and__" a)
   ShiftLeft a -> Left $ Ide (Ident "__lshift__" a)
   ShiftRight a -> Left $ Ide (Ident "__rshift__" a)
   Multiply a -> Left $ Ide (Ident "__mul__" a)
   Plus a -> Left $ Ide (Ident "__add__" a)
   Minus a -> Left $ Ide (Ident "__sub__" a)
   Divide a -> Left $ Ide (Ident "__truediv__" a)
   FloorDivide a -> Left $ Ide (Ident "__floordiv__" a)
   MatrixMult a -> Left $ Ide (Ident "__matmul__" a)
   Invert a -> Left $ Ide (Ident "__invert__" a)
   Modulo a -> Left $ Ide (Ident "__mod__" a)
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
-- | An environment is a linked list of frames
type Env a = [Frame a]

-- | Look something up in the given frame
lookupFrm :: String -> Frame a -> Maybe (IdeLex a)
lookupFrm nam = Map.lookup nam . getFrame

-- | Look something up in the environment
lookupEnv ::  String -> Env a -> IdeLex a
lookupEnv nam env  = fromMaybe (IdeGbl nam) (asum $ map (lookupFrm nam) env)

-- | Returns the nonlocal environment (i.e. skips the global frame)
nonlocalEnv :: Env a -> Env a
nonlocalEnv = tail

-- | Extends the given environment with a new frame consisting of the giving bindings
extendedEnv :: [(String, IdeLex a)] -> Env a -> Env a
extendedEnv = (:) . Frame . Map.fromList

-- | Lexical addresser state

data VarScope = LocalScope | NonLocalScope | GlobalScope
   deriving (Eq, Ord, Show)

data LexicalState = LexicalState {
   vars  :: Map String VarScope,
   fresh :: Int  -- ^ fresh variable counter
}

isScopedAs :: LexicalM m a => VarScope -> String -> m Bool
isScopedAs typ nam = gets (\s -> Map.lookup nam (vars s) == Just typ)

isLocal :: LexicalM m a => String -> m Bool
isLocal     = isScopedAs LocalScope
isNonLocal :: LexicalM m a => String -> m Bool
isNonLocal  = isScopedAs NonLocalScope
isGlobal :: LexicalM m a => String -> m Bool
isGlobal    = isScopedAs GlobalScope

getLocals :: LexicalM m a => m [String]
getLocals = gets (Map.keys . Map.filter (== LocalScope) . vars)

-- | Enters a new scope by resetting all global and nonlocal variables
-- and creating a new frame with the given bindigs to execute the given computation in
enterScope :: (LexicalM m a) => [(String, IdeLex a)] -> m b -> m b
enterScope bds m = do
   -- first snapshot the current set of globals, nonlocals and locals
   snapshot <- get
   -- then continue with their reset
   modify (\s -> s { vars = Map.fromList (map (second $ const LocalScope) bds) })
   -- run the computation in the extended environment
   v <- local (extendedEnv bds) m
   -- reset to the snapshot, but keep the fresh
   modify (\s' -> snapshot { fresh = fresh s' })
   -- return the value of the computation
   return v

addVar :: LexicalM m a => VarScope -> String -> m ()
addVar scp nam = modify (\s -> s { vars = Map.insertWith checkSame nam scp (vars s) })
   where checkSame a b
            | a == b = a
            | otherwise = error ("Var previously declared " ++ show a ++ " is now declared " ++ show b)

addLocal :: LexicalM m a => String -> m ()
addLocal    = addVar LocalScope
addNonLocal :: LexicalM m a => String -> m ()
addNonLocal = addVar NonLocalScope
addGlobal :: LexicalM m a => String -> m ()
addGlobal   = addVar GlobalScope


-- | Generate a new identifier based on the given identifier
genIde :: LexicalM m a => Ide a -> m (IdeLex a)
genIde ide = modify (\s -> s { fresh = fresh s + 1 }) >> gets (IdeLex ide . fresh)

-- | Lexical addresser monad
type LexicalM m a = (MonadReader (Env a) m, MonadState LexicalState m)

-- | Run the lexical addresser on the given program
runLexical :: Program a AfterSimplification     -- ^ the program to apply lexical addressing to
           -> Program a AfterLexicalAddressing
runLexical (Program stmt) = Program $ evalState (runReaderT (lexicalStmt stmt) []) initialLexState
      where initialLexState = LexicalState Map.empty 0

-- | Run the lexical addresser on the given program, but keep track of an effectful context
lexical :: (LexicalM m a) => Program a AfterSimplification -> m (Program a AfterLexicalAddressing)
lexical = fmap Program . lexicalStmt . programStmt

-- | Run the lexical addresser on a single statement
lexicalStmt :: (LexicalM m a) => Stmt a AfterSimplification -> m (Stmt a AfterLexicalAddressing)
lexicalStmt (NonLocal _ x _) = addNonLocal (ideName x) >> return (makeSeq [])
lexicalStmt (Global _ x _)   = addGlobal (ideName x) >> return (makeSeq [])
lexicalStmt (Seq _ as)       = makeSeq <$> mapM lexicalStmt as
lexicalStmt (Return _ e a)   = Return () <$> mapM lexicalExp e <*> pure a
lexicalStmt (Assg _ lhs e)   = Assg () <$> lexicalLhs lhs <*> lexicalExp e
lexicalStmt (Loop _ grd s a) = Loop () <$> lexicalExp grd <*> lexicalStmt s <*> pure a
lexicalStmt (Break _ a)      = return $ Break () a
lexicalStmt (Continue _ a)   = return $ Continue () a
lexicalStmt (Raise _ exp a)  = Raise () <$> lexicalExp exp <*> pure a
lexicalStmt (Try _ bdy hds a) = Try () <$> lexicalStmt bdy
                                       <*> mapM (\(exc, hdl) -> (,) <$> lexicalExp exc <*> lexicalStmt hdl) hds
                                       <*> pure a
lexicalStmt (Conditional _ cls els a)  =
   Conditional () <$> mapM (bimapM lexicalExp lexicalStmt) cls <*> lexicalStmt els <*> pure a
lexicalStmt (StmtExp _ e a)  = StmtExp () <$> lexicalExp e <*> pure a

-- | Lookup a string and return the corresponding lexical identifier
lookupLexIde :: (LexicalM m a) => Ide a -> m (Either (IdeLex a, Ide a) (IdeLex a))
lookupLexIde ide = condM [
      (isNonLocal name, asks (Right . lookupEnv name . nonlocalEnv)),
      (isGlobal name, return $ Right (IdeGbl name)),
      (pure True, case ide of
                    Ide i -> asks (Right . lookupEnv name)
                    NamespacedIde i ns -> asks (Left . (, i) . lookupEnv (ideName ns)))]
   where name = ideName ide

-- | Run the lexical addresser on the given expression
lexicalExp :: forall m a . (LexicalM m a) => Exp a AfterSimplification -> m (Exp a AfterLexicalAddressing)
lexicalExp (Var ide) = either (\(e, x) -> Read (Var e) x (annot (getIdeIdent $ lexIde e))) Var <$> lookupLexIde ide
lexicalExp (Lam prs stmt a ass) = do
      lcs <- filterM (\ide -> let nam = ideName ide in not <$> liftA2 (||) (isNonLocal nam) (isGlobal nam)) ass
      genPars <- mapM (overPar genIde) prs
      genLcls <- mapM genIde lcs
      let nams = map (ideName . parIde) prs ++ map ideName lcs
      let ides  = map parIde genPars ++ genLcls
      bdy <- enterScope (zip nams ides) $ lexicalStmt stmt
      return $ Lam genPars bdy a (map (ideName . lexIde) ides)
   where overPar :: (Ide a -> m (IdeLex a)) -> Par a AfterSimplification -> m (Par a AfterLexicalAddressing)
         overPar f (Prm ide a)        = Prm <$> f ide <*> pure a
         overPar f (VarArg ide a)     = VarArg <$> f ide <*> pure a
         overPar f (VarKeyword ide a) = VarKeyword <$> f ide <*> pure a

lexicalExp (Read e x a)         = Read <$> lexicalExp e <*> pure x <*> pure a
lexicalExp (Call e ags kwa a)   = Call <$> lexicalExp e
                                       <*> mapM lexicalExp ags
                                       <*> mapM (\(ide, exp) -> (ide,) <$> lexicalExp exp) kwa
                                       <*> pure a
lexicalExp (Literal lit)        = Literal <$> lexicalLit lit
lexicalExp (LogicOp op x a)     = LogicOp <$> pure op 
                                          <*> mapM lexicalExp x
                                          <*> pure a

lexicalLit :: (LexicalM m a) => Lit a AfterSimplification -> m (Lit a AfterLexicalAddressing)
lexicalLit (Bool b a)    = return $ Bool b a
lexicalLit (Integer i a) = return $ Integer i a
lexicalLit (Real r a)    = return $ Real r a
lexicalLit (String i a)  = return $ String i a
lexicalLit (Tuple es a)  = Tuple <$> mapM lexicalExp es <*> pure a
lexicalLit (List es a)   = List  <$> mapM lexicalExp es <*> pure a
lexicalLit (Dict bds a)  = Dict  <$> mapM (\(k,v) -> (,) <$> lexicalExp k <*> lexicalExp v) bds <*> pure a
lexicalLit (None a)      = return $ None a

lexicalLhs :: (LexicalM m a) => Lhs a AfterSimplification -> m (Lhs a AfterLexicalAddressing)
lexicalLhs (Field e x a) = Field <$> lexicalExp e <*> pure x <*> pure a
lexicalLhs (ListPat ps a ) = ListPat <$> mapM lexicalLhs ps <*> pure a
lexicalLhs (TuplePat ps a) = TuplePat <$> mapM lexicalLhs ps <*> pure a
lexicalLhs (IdePat x) = either (\(e, x) -> Field (Var e) x (annot $ getIdeIdent x)) IdePat <$> lookupLexIde x
