{-# LANGUAGE FlexibleContexts, FlexibleInstances, RankNTypes, ConstraintKinds #-}
{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# LANGUAGE LambdaCase #-}
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
import Control.Monad ((>=>), foldM)
import Control.Monad.DomainError
import Control.Monad.Escape
import Prelude hiding (or)
import Domain.Scheme.Store (StoreVal(..))
import GHC.Num.Integer

data Prim v = Prim { primName :: String, run :: forall m e . PrimM e m v => e -> [v] -> m v }

type PrimM e m v = (MonadEscape m, Domain (Esc m) DomainError, MonadJoin m, SchemeDomain v, SchemeDomainM e v m)

-- | Variable number of arguments
varg :: String -> ( forall m e . PrimM e m v => e -> [v] -> m v ) -> Prim v
varg = Prim

-- | No arguments
fix0 :: String -> (forall m e . PrimM e m v => m v) -> Prim v
fix0 nam f = Prim nam (\_ [] -> f)

-- | Unary primitives 
efix1 :: String -> (forall m e . PrimM e m v => e -> v -> m v) -> Prim v
efix1 nam f = Prim nam (\ex -> \case [x1] -> f ex x1
                                     xs -> error$  "invalid number of arguments for " ++ show nam ++ " expected 1, got " ++ show (Prelude.length xs) )
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

allPrimitives :: forall v . [Prim v]
allPrimitives = [
   fix2 "modulo" (modulo @_ @v @(StrDom v) @v),
   fix2 "*" (times @_ @v), -- todo: vararg 
   fix2 "+" (plus @_ @v), -- todo: vararg
   fix2 "-" (minus @_ @v), -- todo: vararg
   fix2 "/" (Domain.div @_ @v), -- todo: vararg
   fix1 "acos" (Domain.acos @_ @v @v),
   fix1 "atan" (Domain.atan @_ @v @v),
   fix1 "boolean?" (return . isBool),
   fix1 "true?" return,
   fix1 "false?" (return . Domain.not),
   fix1 "car" (pptrs >=> derefPai (const (return . car))),
   fix1 "cdr" (pptrs >=> derefPai (const (return . cdr))),
   fix1 "ceiling" (Domain.ceiling @_ @v @v),
   -- fix1 "char->integer" todo,
   fix2 "char-ci<?" (charLtCI @_ @v),
   fix2 "char-ci=?" (charEqCI @_ @v),
   fix1 "char-downcase" (Domain.downcase @_ @v),
   fix1 "char-upcase" (Domain.upcase @_ @v),
   fix1 "char-lower-case?" (Domain.isLower @_ @v),
   fix1 "char-upper-case?" (Domain.isUpper @_ @v),
   fix2 "char<?" (charLt @_ @v),
   fix2 "char=?" (charEq @_ @v),
   efix2 "cons" (\ex a b -> stoPai ex (cons a b)),
   fix2 "eq?" (\a -> return .  eql a),
   fix2 "expt" (expt @_ @v),
   fix1 "floor" (Domain.floor @_ @v @v),
   -- fix1 "integer->char" todo, 
   fix1 "log" (Domain.log @_ @v @v),
   fix1 "null?" (return . isNil),
   fix1 "empty?" (return . isNil),
   -- fix1 "number->string" todo, 
   -- fix2 "make-string" todo, 
   fix1 "number?" (\v -> return $ or (isReal v) (isInteger v)),
   fix1 "integer?" (return . isInteger),
   fix1 "pair?" (return .  isPaiPtr),
   fix1 "procedure?" (return . Domain.isProc),
   fix2 "quotient" (quotient @_ @v @(StrDom v) @v),
   fix1 "real?" (return . isReal),
   fix2 "remainder" (remainder @_ @v @(StrDom v) @v),
   fix1 "round" (Domain.round @_ @v @v),
   fix2 "set-car!" (\adr v -> pptrs adr >>= derefPai (\adr pai ->
      updateAdr adr (PaiVal $ cons v (cdr pai)) $> unsp)),
   fix2 "set-cdr!" (\adr v -> pptrs adr >>= derefPai (\adr pai ->
      updateAdr adr (PaiVal $ cons (car pai) v) $> unsp)),
   fix1 "sin" (Domain.sin @_ @v @v),
   fix1 "sqrt" (Domain.sqrt @_ @v @v),
   -- fix1 "string->number" todo, 
   -- fix1 "string->symbol" todo, 
   efix2 "string-append"
      (\ex s1 s2 -> do
         adrs1 <- sptrs s1
         adrs2 <- sptrs s2
         result <- derefStr (\_ str1 -> derefStr (const (append @_ @v @v @v str1)) adrs2) adrs1
         stoStr ex result),
   fix1 "string-length"
      (sptrs >=> derefStr (const (Domain.length @_ @v @v @v))),
   fix2 "string-ref"
      (\s i -> sptrs s >>= derefStr (const (flip (ref @_ @v) i))),
   fix3 "string-set!"
      (\s i c -> sptrs s >>= derefStr (\adr str -> updateAdr adr . StrVal =<< set @_ @v str i c) >> return unsp),
   -- fix2 "string<?" todo,
   fix1 "string?" (return .  isStrPtr),
   -- fix2 "substring" todo, 
   -- fix1 "symbol->string" todo, 
   fix1 "symbol?" (return . isSymbol), 
   fix1 "tan" (Domain.tan @_ @v @v),
   efix2 "make-vector" (\e siz -> stoVec e . makeVector siz) ,
   varg "vector" (\e vs -> foldM (\vec (i, v)-> vectorSet vec v (inject $ integerFromInt i)) (makeVector (inject (integerFromInt $ Prelude.length vs)) nil) (zip [0..Prelude.length vs] vs) >>= stoVec e), 
   fix1 "vector-length" (vptrs >=> derefVec (const (return . vectorLength))),
   fix2 "vector-ref" (\adr i -> vptrs adr >>= derefVec (const (`vectorRef` i))),
   fix3 "vector-set!" (\adr i v -> vptrs adr >>= derefVec (\adr vec -> updateAdr adr . VecVal =<< vectorSet vec i v) >> return unsp),
   fix1 "vector?" $ return . isVecPtr,
   fix2 "<" lt,
   fix2 "=" eq,
   fix2 ">" gt,
   fix2 ">=" ge,
   fix2 "<=" le,
   fix1 "random" (Domain.random @_ @v),
   fix0 "bool-top" $ return Domain.boolTop,
   fix1 "not" $ return . Domain.not,
   -- TODO: there is no IO model, so displays are simply ignored
   fix1 "display" $ const (return Domain.nil),
   fix1 "displayln" $ const (return Domain.nil),
   -- TODO: format does not executed the formatting and returns a top from the string lattice
   evar "format" (\e -> const (stoStr e (topString @_ @v @v @v))),
   -- NOTE: these are actually not Scheme primitives but help to run the analyses without fixpoints
   -- for some trivial programs
   evar "constant-true" (const $ const $ return (inject True)),
   evar "constant-false" (const $ const $ return (inject False)),
   fix1 "assert" $ const (return Domain.nil) -- todo: make syntax
   --fix3 "error" -- todo
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

