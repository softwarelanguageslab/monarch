{-# LANGUAGE LambdaCase, DeriveGeneric #-}
module Syntax.AST(Ide(..), Exp(..), Lit(..), Pat(..), Label(..), Span(..), Binding, patternVariables, sexpToLit) where

import qualified Data.Set as Set
import Data.Set (Set)
import Text.Printf
import Syntax.Span
import Syntax.Ide
import Syntax.FV
import Control.DeepSeq
import GHC.Generics
import Lattice.Trace (Trace(..))
import Syntax.Scheme.Parser (SExp)
import qualified Syntax.Scheme.Parser as SExp

-- | An expression
data Exp = -- Program Semantics
           Lam [Ide] Exp Span                -- ^ λ (x*) . e 
         | App Exp [Exp] Span                -- ^ e(e*)
         | AppQual Ide Ide [Exp] Span        -- ^ module:name(e*)
         | Spawn Exp Span                    -- ^ spawn e 
         | Letrec [Binding] Exp Span         -- ^ letrec { (x := e)* } in e
         | Terminate Span                    -- ^ terminate
         | Self Span                         -- ^ self
         | Pair Exp Exp Span                 -- ^ (e, e)
         | Parametrize [Binding] Exp Span    -- ^ parametrize { (x := e)* } in e
         | Blame Exp Span                    -- ^ blame e 
         | Receive [(Pat, Exp)] Span         -- ^ receive { (p => e)* } 
         | Match Exp [(Pat, Exp)] Span       -- ^ match { (p => e)* }
         | Literal Lit Span                  -- ^ l 
         | Ite  Exp Exp Exp Span             -- ^ if e e e 
         | Var Ide                           -- ^ x 
         | DynVar Ide                        -- ^ $x
         | Begin [Exp] Span                  -- ^ { e (; e)* }
         | Input Span                        -- ^ input
         | Parallel [Exp] Span               -- ^ parallel { e (; e)* }
         | Error Exp Span                    -- ^ error e
         -- Debugging analyses
         | Fresh Span                        -- ^ fresh (only for debugging, generates a "fresh" symbolic value)
         | Trace Exp Span                    -- ^ a trace expression, used for debugging
         | Loc String Span                   -- ^ a special-form that returns its span as a value when evaluated
         -- Analysis-specific
         | Meta Exp Span                     -- ^ meta e
         deriving (Eq, Ord, Generic)

instance NFData Exp

-- | Literals are expressions that evaluate to themselves
data Lit = Num Integer
         | Real Double
         | Character Char
         | Boolean Bool
         | Symbol String
         | String String
         | Nil
          deriving (Eq, Ord, Generic)

sexpToLit :: SExp -> Lit
sexpToLit = \case (SExp.Num i _) -> Num i
                  (SExp.Rea r _) -> Real r
                  (SExp.Cha c _) -> Character c
                  (SExp.Bln b _) -> Boolean b
                  (SExp.Atom a _) -> Symbol a
                  (SExp.Str s _) -> String s
                  (SExp.SNil _) -> Nil
                  e -> error $ "invalid literal " ++ show e

instance NFData Lit

instance Show Lit where
   show (Num n) = show n
   show (Boolean b) = show b
   show (Symbol s) = show s
   show (String str) = show str
   show (Real r)     = show r
   show (Character c) = "\\#" ++ show c
   show Nil = "'()"

-- | Pattern language
data Pat = PairPat Pat Pat
         | IdePat Ide
         | ValuePat Lit
         | AliasPat Ide Pat deriving (Eq, Ord, Show, Generic)

-- | Compute the set of variables in the patern
patternVariables :: Pat -> Set Ide
patternVariables (PairPat pat1 pat2) =
   patternVariables pat1 `Set.union` patternVariables pat2
patternVariables (IdePat ide) = Set.singleton ide
patternVariables (AliasPat ide pat) = Set.insert ide (patternVariables pat)
patternVariables _ = Set.empty

instance NFData Pat

-- | Labels for blame assignment
newtype Label = Label { getLabelName :: String }
               deriving (Eq, Ord, Show, NFData)

-- | A binding from an identifier to an expression, used in the so-called 
-- 'binding-forms' to introduce values to which free variables within 
-- its introduced scope will be bound.
type Binding = (Ide, Exp)

-- SpanOf instance
instance SpanOf Exp where
   spanOf = \case
               (Lam _ _ s) -> s
               (App _ _ s) -> s
               (AppQual _ _ _ s) -> s
               (Spawn _ s) -> s
               (Letrec _ _ s) -> s
               (Terminate s) -> s
               (Self s) -> s
               (Pair _ _ s) -> s
               (Parametrize _ _ s) -> s
               (Blame _ s) -> s
               (Receive _ s) -> s
               (Literal _ s) -> s
               (Ite _ _ _ s) -> s
               (Var (Ide _ s)) ->  s
               (DynVar (Ide _ s)) -> s
               (Begin _ s) -> s
               (Meta _ s) -> s
               (Match _ _ s) -> s
               (Input s) -> s
               (Fresh s) -> s
               (Loc _ s)  -> s
               (Trace _ s) -> s
               (Parallel _ s) -> s
               (Error  _ s) -> s


instance Show Exp where
   show = \case
            (Lam x e _)       -> printf "(lam (%s) %s)" (unwords (map name x)) (show e)
            (App e1 es _)     -> printf "(%s %s)" (show e1) (unwords (map show es))
            (AppQual modname nam es _) -> printf "(%s:%s %s)" (show modname) (show nam) (unwords (map show es))
            (Spawn e1 _)      -> printf "(spawn^ %s)" (show e1)
            (Letrec bds es _) -> printf "(letrec (%s) %s)" (show bds) (show es)
            (Terminate _)     -> "(terminate)"
            (Self _)          -> "self^"
            (Pair e1 e2 _)    -> printf "(cons %s %s)" (show e1) (show e2)
            (Parametrize bds bdy _) ->
               printf "(parametrize (%s) %s)" (show bds) (show bdy)
            (Blame lbl _)     -> printf "(blame %s)" (show lbl)
            (Receive pats _)  -> printf "(receive %s)" (show pats)
            (Match v pats _)  -> printf "(match %s %s)" (show v) (show pats)
            (Literal l _)     -> show l
            (Ite e1 e2 e3 _)  -> printf "(if %s %s %s)" (show e1) (show e2) (show e3)
            (Var x)           -> name x
            (DynVar x)        -> "(dyn " ++ show x ++ ")"
            (Begin es _)      -> printf "(begin %s)" (unwords (map show es))
            (Meta e _)        -> printf "(meta %s)" (show e)
            (Input _)         -> "(input)"
            (Fresh _)         -> printf "(fresh)"
            (Loc _ _)         -> printf "(loc)"
            (Trace e _)       -> printf "(trace %s)" (show e)
            (Parallel es _)   -> printf "(parallel %s)" (show es)
            (Error e _)       -> printf "(error %s)" (show e)


variables :: Pat -> Set String
variables (PairPat e1 e2) = Set.union (variables e1) (variables e2)
variables (IdePat x)      = Set.singleton $ name x
variables (AliasPat x p)  = Set.insert (name x) (variables p)
variables (ValuePat _)    = Set.empty

instance FreeVariables (Pat, Exp) where
   fv (pat, expr) = Set.difference (fv expr) (variables pat)

instance FreeVariables Exp where
   fv (Lam xs e _)  = Set.difference (fv e) (Set.fromList (map name xs))
   fv (App e1 es _) = Set.unions $ fv e1 : map fv es
   fv (AppQual _ _ es _) = Set.unions $ map fv es
   fv (Spawn e1 _)  = fv e1
   fv (Letrec bds es _) =
      Set.difference (Set.unions $ fv es : map (fv . snd) bds) (Set.fromList (map (name . fst) bds))
   fv Terminate {}      = Set.empty
   fv Self {}           = Set.empty
   fv (Pair e1 e2 _)    = Set.unions [fv e1, fv e2]
   fv (Parametrize _ bdy _) = fv bdy
   fv Blame {}          = Set.empty
   fv (Receive pats _)  = Set.unions (map fv pats)
   fv (Match v pats _)  = Set.unions $ fv v : map fv pats
   fv (Literal _ _)     = Set.empty
   fv (Ite e1 e2 e3 _)  = Set.unions [fv e1, fv e2, fv e3]
   fv (Var x)           = Set.singleton (name x)
   fv (DynVar _)        = Set.empty
   fv (Begin es _)      = Set.unions (map fv es)
   fv (Meta e _)        = fv e
   fv (Input _)         = Set.empty
   fv (Fresh _)         = Set.empty
   fv (Loc _ _)         = Set.empty
   fv (Trace e _)       = fv e
   fv (Parallel es _)   = foldMap fv es
   fv (Error e _)       = fv e

-- XXX: 'Exp' are not program values so it does not really make sense
-- to define 'Trace' here, but since they are usually part of closures
-- and closures contain environments that DO need to be traced we
-- include this here for convenience.
instance Ord adr => Trace adr Exp where
   trace = const Set.empty

