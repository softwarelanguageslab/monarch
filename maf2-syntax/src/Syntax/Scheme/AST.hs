{-# LANGUAGE PatternSynonyms, FlexibleContexts #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module Syntax.Scheme.AST (Exp(..), Ide(..), parseSchemeExp, parseSchemeExp', testParser, isDefine, spanOf, Span, Hdl(..)) where

import GHC.Generics (Generic)
import qualified Data.Set as Set
import Control.Monad.Except
import Text.Printf
import qualified Syntax.Scheme.Parser as SExp
import Syntax.Scheme.Parser (Span, SExp, pattern (:::))
import Control.Applicative
import Control.Monad.Reader

-- AST definition --

data Ide = Ide { name :: String, span :: Span } deriving (Ord, Eq, Generic)

instance Show Ide where
   show (Ide { name }) = name

data Exp = Num Integer Span          -- ^ number literals
         | Rea Double  Span          -- ^ real number literals
         | Str String Span           -- ^ string literals
         | Sym String Span           -- ^ symbol literals
         | Cha Char Span             -- ^ character literals
         | Bln Bool Span             -- ^ boolean literals
         | Nll Span                  -- ^ Empty list
         | Var Ide                   -- ^ variables
         | Iff Exp Exp Exp Span      -- ^ if
         | Lam [Ide] Exp Span        -- ^ lambda
         | Bgn [Exp] Span            -- ^ begin
         | Dfv Ide Exp Span          -- ^ define (variable)
         | Dff Ide [Ide] Exp Span    -- ^ define (function)
         | Set Ide Exp Span          -- ^ set!
         | Let [(Ide,Exp)] Exp Span  -- ^ let
         | Ltt [(Ide,Exp)] Exp Span  -- ^ let*
         | Ltr [(Ide,Exp)] Exp Span  -- ^ letrec
         | Lrr [(Ide,Exp)] Exp Span  -- ^ letrec*
         | App Exp [Exp] Span        -- ^ application
         | Empty                     -- ^ synthetic empty expression
         -- λα
         | Spw Exp [Exp] Span        -- ^ actor spawn 
         | Bec Exp [Exp] Span        -- ^ actor become 
         | Sen Exp String [Exp] Span -- ^ actor send 
         | Beh [Ide] Exp Span        -- ^ actor behavior
         | Mir [Ide] Exp Span        -- ^ actor mirror
         | Rcv [Hdl] Span            -- ^ a receive block
         | Ter Span                  -- ^ terminate actor
         -- λα/c
         | MsgC Exp Exp Exp Exp Span    -- ^ message/c  contract
         | BehC [Exp] Span              -- ^ behavior/c contract
         | EnsC [Exp] Span              -- ^ ensures/c  contract
         | OnlC [Exp] Span              -- ^ only/c     contract
         deriving (Eq,Ord, Generic)

data Hdl = Hdl Ide [Ide] Exp         -- ^ actor handler
   deriving (Eq, Ord, Generic)

-- AST predicates -- 

isDefine :: Exp -> Bool
isDefine (Dfv {}) = True
isDefine (Dff {}) = True
isDefine _ = False

-- | Returns the span of the AST node
spanOf :: Exp -> Span
spanOf (Num _ s) = s
spanOf (Str _ s) = s
spanOf (Sym _ s) = s
spanOf (Bln _ s) = s
spanOf (Var (Ide _ s)) = s
spanOf (Iff _ _ _ s) = s
spanOf (Lam _ _ s) = s
spanOf (Bgn _ s) = s
spanOf (Dfv _ _ s) = s
spanOf (Dff _ _ _ s) =  s
spanOf (Set _ _ s)   = s
spanOf (Let _ _ s)   = s
spanOf (Ltt _ _ s)   = s
spanOf (Ltr _ _ s)   = s
spanOf (Lrr _ _ s)   = s
spanOf (App _ _ s)   = s
spanOf (Nll s)       = s
spanOf (Rea _ s)     = s
spanOf (Cha _ s)     = s
-- λα
spanOf (Spw _ _ s)   = s
spanOf (Bec _ _ s)   = s
spanOf (Sen _ _ _ s) = s
spanOf (Beh _ _ s)   = s
spanOf (Mir _ _ s)   = s
spanOf (Rcv _ s)     = s
spanOf (Ter s)       = s
--
spanOf Empty = error "no span for empty expressions"
-- λα/c
spanOf (MsgC _ _ _ _ s) = s
spanOf (BehC _ s)       = s
spanOf (EnsC _ s)       = s
spanOf (OnlC _ s)       = s

-- Show --

instance Show Exp where
   show (Num i _) = show i
   show (Rea r _) = show r
   show (Str s _) = show s
   show (Sym s _) = "'" ++ s
   show (Cha c _) = "#\\" ++ [c]
   show (Bln True _) = "#t"
   show (Bln False _) = "#f"
   show (Nll _) = "'()"
   show (Var (Ide nam _)) = nam
   show (Iff cnd csq alt _) =
      printf "(if %s %s %s)" (show cnd) (show csq) (show alt)
   show (Lam ags bdy _) =
      printf "(lambda (%s) %s)" (unwords $ map name ags) (show bdy)
   show (Bgn exs _) = printf "(begin %s)" (unwords $ map show exs)
   show (Dfv (Ide vrr _) ex _) = printf "(define %s %s)" vrr (show ex)
   show (Dff (Ide nam _) prs bdy _) =
      printf "(define (%s %s) %s)" nam (unwords $ map name prs) (show bdy)
   show (Set (Ide vrr _) ex _) =
      printf "(set! %s %s)" vrr (show ex)
   show (Let bds bdy _) =
      printf "(let (%s) %s)" (unwords (zipWith (printf "(%s %s)") (map (name . fst) bds) (map (show .snd) bds)))
                             (show bdy)
   show (Ltt bds bdy _) =
      printf "(let* (%s) %s)" (unwords (zipWith (printf "(%s %s)") (map (name . fst) bds) (map (show .snd) bds)))
                             (show bdy)
   show (Ltr bds bdy _) =
      printf "(letrec (%s) %s)" (unwords (zipWith (printf "(%s %s)") (map (name . fst) bds) (map (show .snd) bds)))
                                (show bdy)
   show (Lrr bds bdy _) =
      printf "(letrec* (%s) %s)" (unwords (zipWith (printf "(%s %s)") (map (name . fst) bds) (map (show .snd) bds)))
                                (show bdy)
   show (App op ops _) =
      printf "(%s %s)" (show op) (unwords $ map show ops)
   show Empty = ""
   show (Spw beh arg _) =
      printf "(spawn %s %s)" (show beh) (unwords $ map show arg)
   show (Bec beh arg _) =
      printf "(become %s %s)" (show beh) (unwords $ map show arg)
   show (Sen rcpt tag arg _) =
      printf "(send %s %s %s)" (show rcpt) (show tag) (unwords $ map show arg)
   show (Rcv hdls _) =
      printf "(receive %s)" (unwords $ map show hdls)
   show (Beh args hdls _) =
      printf "(behavior (%s) %s)" (unwords $ map show args) (show hdls)
   show (Mir args hdls _) =
      printf "(mirror (%s) %s)" (unwords $ map show args) (show hdls)
   show (Ter _) = 
      "(terminate)"


instance Show Hdl where
   show (Hdl tag args ex) =
      printf "(%s (%s) %s)" (show tag) (unwords $ map show args) (show ex)

-- Wraps the given list of expressions in a `begin` if their number is more than one
begin :: [Exp] -> Exp
begin [] = error "begin needs at least one expression"
begin [e] = e
begin (e:es) = Bgn (e:es) (spanOf e)

--
-- Compiler
--

-- | Set of reserved keywords
reserved = Set.fromList ["if", "lam", "begin", "define", "set!", "let", "let*", "letrec", "letrec*"]
isReserved :: String -> Bool
isReserved = flip Set.member reserved

-- | Compiles a sequence of s-expressions
compileSequence :: (MonadReader Bool m, MonadError String m) => SExp -> m [Exp]
compileSequence (SExp.SNil _) = return []
compileSequence (x ::: xs) =
   liftA2 (:) (compile x) (compileSequence xs)
compileSequence e = throwError  $ "not a valid sequence" ++ show e

-- | Compiles a sequence to a begin expression
compileBegin :: (MonadReader Bool m, MonadError String m) => [SExp] -> m Exp
compileBegin [] = throwError "begin cannot be empty"
compileBegin e = begin <$> mapM compile e

-- | Compiles the parameters of a lambda or a function definition
compileParams :: (MonadReader Bool m, MonadError String m) => SExp -> m ([Ide], Maybe Ide)
compileParams (SExp.SNil _) = return ([], Nothing)
compileParams (SExp.Atom x s) = return ([], Just (Ide x s))
compileParams (e@(SExp.Atom x _) ::: xs) = do
   rest <- compileParams xs
   return (Ide x (SExp.spanOf e) : fst rest, snd rest)
compileParams e = throwError $ "Not expected in parameter list " ++ show e

compile :: (MonadReader Bool m, MonadError String m) => SExp -> m Exp
-- literals
compile (SExp.Num i s) = pure $ Num i s
compile (SExp.Str str s) =  pure $ Str str s
compile (SExp.Bln b s) = pure $ Bln b s
compile (SExp.Rea r s) = pure $ Rea r s
compile (SExp.Cha c s) = pure $ Cha c s
-- begin
compile (SExp.Atom "begin" _ ::: (SExp.SNil _)) = throwError "begin cannot be empty"
compile (SExp.Atom "begin" _ ::: xs) = begin <$> compileSequence xs
-- var
compile (SExp.Atom x s) = return $ Var (Ide x s)
-- if
compile e@(SExp.Atom "if" _ ::: cnd ::: csq ::: SExp.SNil _) =
   Iff <$> compile cnd <*> compile csq <*> pure (Nll (SExp.spanOf e)) <*> pure (SExp.spanOf e)
compile e@(SExp.Atom "if" _ ::: cnd ::: csq :::  alt ::: SExp.SNil _) =
   Iff <$> compile cnd <*> compile csq <*> compile alt <*> pure (SExp.spanOf e)
-- lambda
compile e@(SExp.Atom "lambda" _ ::: prs ::: bdy) =
   Lam . fst <$> compileParams prs <*> (begin <$> compileSequence bdy) <*> pure (SExp.spanOf e)
-- define variable
compile e@(SExp.Atom "define" _ ::: (SExp.Atom x s) ::: vlu ::: SExp.SNil _) =
   Dfv (Ide x s) <$> compile vlu <*> pure (SExp.spanOf e)
-- define function
compile e@(SExp.Atom "define" _ ::: ((SExp.Atom f s) ::: prs) ::: bdy) =
   Dff (Ide f s) . fst <$> compileParams prs <*> (begin <$> compileSequence bdy) <*> pure (SExp.spanOf e)
-- set!
compile e@(SExp.Atom "set!" _ ::: (SExp.Atom x s) ::: vlu ::: SExp.SNil _) =
   Set (Ide x s) <$> compile vlu <*> pure (SExp.spanOf e)
-- named let
compile e@(SExp.Atom "let" _ ::: SExp.Atom nam s' ::: bds ::: bdy) = do
      let s = SExp.spanOf e
      compiledBdy   <- begin <$> compileSequence bdy
      compiledAgs  <- ags
      compiledPrs  <- prs
      return $ Ltr [(Ide nam s', Lam compiledPrs compiledBdy s)] (App (Var (Ide nam s')) compiledAgs s) s
   where unpack (SExp.SNil _) = return []
         unpack (bd ::: bds) = liftA2 (:) (single bd) (unpack bds)
         unpack _ = throwError "invalid unpack"
         single (SExp.Atom nam s ::: exp ::: SExp.SNil _) = (Ide nam s, ) <$> compile exp
         single _ = throwError "invalid named let"
         prs = map fst <$> unpack bds
         ags = map snd <$> unpack bds
-- let special forms
compile e@(SExp.Atom "let" _ ::: _ ::: _) = lettish Let e
compile e@(SExp.Atom "let*" _ ::: _ ::: _) = lettish Ltt e
compile e@(SExp.Atom "letrec" _ ::: _ ::: _) = lettish Ltr e
compile e@(SExp.Atom "letrec*" _ ::: _ ::: _) = lettish Lrr e
-- λα
compile e@(SExp.Atom "behavior" _ ::: prs ::: handlers) =
   Beh <$> (fst <$> compileParams prs) <*> compileHandlers handlers <*> pure (SExp.spanOf e)
compile e@(SExp.Atom "send" _ ::: rcpt ::: (SExp.Atom tag _) ::: payloads) =   
   Sen <$> compile rcpt <*> pure tag <*> compileSequence payloads <*> pure (SExp.spanOf e)
compile e@(SExp.Atom "become" _ ::: beh ::: ags) =
   Bec <$> compile beh <*> compileSequence ags <*> pure (SExp.spanOf e)
compile e@(SExp.Atom "spawn" _ ::: beh ::: ags)  =
   Spw <$> compile beh <*> compileSequence ags <*> pure (SExp.spanOf e)
compile e@(SExp.Atom "terminate" _ ::: SExp.SNil _) = 
   return $ Ter (SExp.spanOf e)
-- λα/c
compile e@(SExp.Atom "ensures/c" _ ::: contracts) = 
   EnsC <$> compileSequence contracts <*> pure (SExp.spanOf e)
compile e@(SExp.Atom "only/c" _ ::: contracts) = 
   OnlC <$> compileSequence contracts <*> pure (SExp.spanOf e)
compile e@(SExp.Atom "behavior/c" _ ::: contracts) = 
   BehC <$> compileSequence contracts <*> pure (SExp.spanOf e)
compile e@(SExp.Atom "message/c" _ ::: tag ::: payload ::: rcpt ::: comm ::: SExp.SNil _) =
   MsgC <$> compile tag <*> compile payload <*> compile rcpt <*> compile comm <*> pure (SExp.spanOf e)
-- quotes
compile (SExp.Quo exp _) = local (const False) (compileQuoted exp)
compile (SExp.Qua exp _) = local (const True)  (compileQuoted exp)
compile (SExp.Atom "quote" _ ::: e) = local (const False) (compileQuoted e)
compile (SExp.Atom "quasiquote" _ ::: e) = local (const True) (compileQuoted e)
-- application
compile e@(operator ::: operands) = case operator of
      SExp.Atom nam _ | isReserved nam -> throwError $ "Invalid syntax for " ++ nam ++ " in " ++ show e
      _ ->  App <$> compile operator <*> compileSequence operands <*> pure (SExp.spanOf e)
-- todo: do

compile e = throwError $ "unrecognized expression " ++ show e

lettish :: (MonadReader Bool m, MonadError String m) => ([(Ide, Exp)] -> Exp -> Span -> Exp) -> SExp -> m Exp
lettish l e@(_ ::: bds ::: bdy) =
      l <$> compileBds bds <*> (begin <$> compileSequence bdy) <*> pure (SExp.spanOf e)
   where compileBds (SExp.SNil _) = return []
         compileBds (((SExp.Atom x s) ::: exp ::: SExp.SNil _) ::: rest) =
            liftA2 (:) ((Ide x s, ) <$> compile exp) (compileBds rest)
         compileBds e = throwError $ "invalid syntax for lettish " ++ show e
lettish _ _ = error "invalid call to lettisch"

-- quoted expressions
compileQuoted :: (MonadError String m, MonadReader Bool m) => SExp -> m Exp

compileQuoted (SExp.Num i s)   =  pure $ Num i s
compileQuoted (SExp.Str str s) =  pure $ Str str s
compileQuoted (SExp.Bln b s)   = pure $ Bln b s
compileQuoted (SExp.Rea r s)   = pure $ Rea r s

-- quasi quoted expressions
compileQuoted (SExp.Unq e _) = ask >>= (\inQuasi -> if inQuasi then compile e else throwError "cannot unquote in quoted")
compileQuoted all@(SExp.Uqs e s ::: rst) = do
   isQuoted <- ask
   if isQuoted then do
      compiledE <- compile e
      compiledRst <- compileQuoted rst
      return $ App (Var (Ide "append" s)) [compiledE, compiledRst] (SExp.spanOf all)
   else throwError "cannot unquote in quoted"
compileQuoted (SExp.Uqs _ _) = throwError "unquote-splicing: invalid context within quasiquote"

-- rest of quoted expressions
compileQuoted (SExp.SNil s) = pure $ Nll s
compileQuoted (SExp.Pai car cdr s) = App (Var (Ide "cons" s)) <$> mapM compileQuoted [car, cdr] <*> pure s
compileQuoted (SExp.Atom x s) = pure $ Sym x s
compileQuoted (SExp.Quo e s) = do
   compiledE <- compileQuoted e
   return $ App (Var (Ide "cons" s)) [Sym "quote" s, compiledE] s


compileHandlers :: (MonadReader Bool m, MonadError String m) => SExp.SExp -> m Exp
compileHandlers hdls = Rcv <$> sequence (SExp.smap compileHandler hdls) <*> pure (SExp.spanOf hdls)
   where compileHandler (SExp.Atom tag spn ::: ags ::: bdy) = 
            Hdl (Ide tag spn) <$> (fst <$> compileParams ags) <*> (begin <$> compileSequence bdy)

--

parseSchemeExp :: String -> Maybe Exp
parseSchemeExp = either (const Nothing) Just . parseSchemeExp'

parseSchemeExp' :: String -> Either String Exp
parseSchemeExp' = SExp.parseSexp >=> (flip runReaderT False . compileBegin)

testParser :: IO ()
testParser = forever (getLine >>= print . parseSchemeExp)
