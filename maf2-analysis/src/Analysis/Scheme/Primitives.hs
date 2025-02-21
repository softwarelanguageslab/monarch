{-# LANGUAGE FlexibleContexts, FlexibleInstances, RankNTypes, ConstraintKinds #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module Analysis.Scheme.Primitives(Prim(..), allPrimitives, primitive, primitivesByName, initialEnv, initialSto) where


import Lattice.Equal
import Data.Functor
import Analysis.Environment
import Data.Maybe
import Data.Map (Map)
import qualified Data.Map as Map
import Analysis.Monad
import Analysis.Scheme.Monad
import Domain hiding (Exp, empty)
import Control.Monad.Join
import Control.Monad ((>=>))
import Control.Monad.DomainError
import Control.Monad.Escape
import Prelude hiding (or)

data Prim v = Prim { primName :: String, run :: forall m e . PrimM e m v => e -> [v] -> m v }

type PrimM e m v = (MonadEscape m, Domain (Esc m) DomainError, MonadJoin m, SchemeDomain v, SchemeDomainM e v m)

-- | No arguments
fix0 :: String -> (forall m e . PrimM e m v => m v) -> Prim v
fix0 nam f = Prim nam (\_ [] -> f)

-- | Unary primitives 
efix1 :: String -> (forall m e . PrimM e m v => e -> v -> m v) -> Prim v
efix1 nam f = Prim nam (\ex [x1] -> f ex x1)
-- | Binary primitives
efix2 :: String -> (forall m e . PrimM e m v => e -> v -> v -> m v) -> Prim v
efix2 nam f = Prim nam (\ex [x1, x2] -> f ex x1 x2)
-- | Ternary primitives
efix3 ::  String -> (forall m e . PrimM e m v => e -> v -> v -> v -> m v) -> Prim v
efix3 nam f = Prim nam (\ex [x1, x2, x3] -> f ex x1 x2 x3)
-- | Vararg primitives
evar  :: String -> (forall m e . PrimM e m v => e -> [v] -> m v) -> Prim v
evar = Prim

-- | Heap unrelated operations 
fix1 :: String -> (forall m e . PrimM e m v => v -> m v) -> Prim v
fix1 nam f = efix1 nam (\_ v-> f v)
fix2 :: String -> (forall m e . PrimM e m v => v -> v -> m v) -> Prim v
fix2 nam f = efix2 nam (\_ v1 v2 -> f v1 v2)
fix3 :: String -> (forall m e . PrimM e m v => v -> v -> v -> m v) -> Prim v
fix3 nam f = efix3 nam (\_ v1 v2 v3 -> f v1 v2 v3)

allPrimitives :: [Prim v]
allPrimitives = [
   fix2 "modulo" modulo,
   fix2 "*" times, -- todo: vararg 
   fix2 "+" plus, -- todo: vararg
   fix2 "-" minus, -- todo: vararg
   fix2 "/" Domain.div, -- todo: vararg
   fix1 "acos" Domain.acos,
   fix1 "atan" Domain.atan,
   fix1 "boolean?" (return . isBool),
   fix1 "true?" return,
   fix1 "false?" (return . Domain.not),
   fix1 "car" (pptrs >=> deref (const (return . car))),
   fix1 "cdr" (pptrs >=> deref (const (return . cdr))),
   fix1 "ceiling" Domain.ceiling,
   -- fix1 "char->integer" todo,
   fix2 "char-ci<?" charLtCI,
   fix2 "char-ci=?" charEqCI,
   fix1 "char-downcase" Domain.downcase,
   fix1 "char-upcase" Domain.upcase,
   fix1 "char-lower-case?" Domain.isLower,
   fix1 "char-upper-case?" Domain.isUpper,
   fix2 "char<?" charLt,
   fix2 "char=?" charEq,
   efix2 "cons" (\ex a b -> stoPai ex (cons a b)),
   -- fix2 "eq?" todo 
   fix2 "eq?" (\a -> return .  eql a),
   fix2 "expt" expt,
   fix1 "floor" Domain.floor,
   -- fix1 "integer->char" todo, 
   fix1 "log" Domain.log,
   fix1 "null?" (return . isNil),
   fix1 "empty?" (return . isNil),
   -- fix1 "number->string" todo, 
   -- fix2 "make-string" todo, 
   fix1 "number?" (\v -> return $ or (isReal v) (isInteger v)),
   fix1 "integer?" (return . isInteger),
   fix1 "pair?" (return .  isPaiPtr),
   fix1 "procedure?" (return . Domain.isProc),
   fix2 "quotient" quotient,
   fix1 "real?" (return . isReal),
   fix2 "remainder" remainder,
   fix1 "round" Domain.round,
   fix2 "set-car!" (\adr v -> pptrs adr >>= deref (\adr pai ->
      updateAdr adr (cons v (cdr pai)) $> unsp)),
   fix2 "set-cdr!" (\adr v -> pptrs adr >>= deref (\adr pai ->
      updateAdr adr (cons (car pai) v) $> unsp)),
   fix1 "sin" Domain.sin,
   fix1 "sqrt" Domain.sqrt,
   -- fix1 "string->number" todo, 
   -- fix1 "string->symbol" todo, 
   efix2 "string-append"
      (\ex s1 s2 -> do
         adrs1 <- sptrs s1
         adrs2 <- sptrs s2
         result <- deref (\_ str1 -> deref (const (append str1)) adrs2) adrs1
         stoStr ex result),
   fix1 "string-length"
      (sptrs >=> deref (const Domain.length)),
   fix2 "string-ref"
      (\s i -> sptrs s >>= deref (const (`ref` i))),
   fix3 "string-set!"
      (\s i c -> sptrs s >>= deref (\adr str -> updateAdr adr =<< set str i c) >> return unsp),
   -- fix2 "string<?" todo,
   fix1 "string?" (return .  isStrPtr),
   -- fix2 "substring" todo, 
   -- fix1 "symbol->string" todo, 
   fix1 "symbol?" (return . isSymbol), 
   fix1 "tan" Domain.tan,
   -- fix2 "make-vector" todo,
   -- varg "vector" todo, 
   fix1 "vector-length" (vptrs >=> deref (const (return . vectorLength))),
   fix2 "vector-ref" (\adr i -> vptrs adr >>= deref (const (`vectorRef` i))),
   fix3 "vector-set!" (\adr i v -> vptrs adr >>= deref (\adr vec -> updateAdr adr =<< vectorSet vec i v) >> return unsp),
   fix1 "vector?" $ return . isVecPtr,
   fix2 "<" lt,
   fix2 "=" eq,
   fix2 ">" gt,
   fix2 ">=" ge,
   fix2 "<=" le,
   fix1 "random" Domain.random,
   fix0 "bool-top" $ return Domain.boolTop,
   fix1 "not" $ return . Domain.not,
   -- TODO: there is no IO model, so displays are simply ignored
   fix1 "display" $ const (return Domain.nil),
   fix1 "displayln" $ const (return Domain.nil),
   -- TODO: format does not executed the formatting and returns a top from the string lattice
   evar "format" (\e -> const (do { adr <- alloc @_ @_ e ; writeAdr adr topString ; return (sptr adr) })),
   -- NOTE: these are actually not Scheme primitives but help to run the analyses without fixpoints
   -- for some trivial programs
   evar "constant-true" (const $ const $ return (inject True)),
   evar "constant-false" (const $ const $ return (inject False))
   -- fix1 "error" todo
   ]

primitivesByName :: Map String (Prim v)
primitivesByName = Map.fromList $ map (\p -> (primName p, p)) allPrimitives

primitive :: String -> Prim v
primitive = fromJust . flip Map.lookup primitivesByName

primitiveNames :: [String]
primitiveNames = Map.keys primitivesByName

-- | Returs an initial environment for the primitives
initialEnv :: forall e adr . (Environment e adr) => (String -> adr) -> e
initialEnv alloc =
   let names = primitiveNames
   in extends (zip names (map alloc names)) empty

-- | Return an initial store for all the primitives
initialSto :: forall v e adr . (SchemeDomain v, Environment e adr, Ord adr) => e -> Map adr v
initialSto e =
   foldr (\nam -> Map.insert (Analysis.Environment.lookup nam e) (prim nam)) Map.empty primitiveNames

