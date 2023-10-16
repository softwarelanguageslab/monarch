{-# LANGUAGE AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
module Interpreter.Scheme.Primitives where

import qualified Data.Vector as Vector
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Char hiding (isNumber)
import Data.Maybe
import Interpreter.Scheme.Monad
import Interpreter.Scheme.Values
import Syntax.Scheme.AST
import Control.Monad
import Data.Functor
import Data.ListExtra

data Prim m = Prim { primName :: String, run :: Exp -> [SchemeValue] -> m SchemeValue }

-- | Unary primitives 
efix1 :: (InterpreterM m) => String -> (Exp -> SchemeValue -> m SchemeValue) -> Prim m
efix1 nam f = Prim nam (\ex [x1] -> f ex x1)
-- | Binary primitives
efix2 :: (InterpreterM m) => String -> (Exp -> SchemeValue -> SchemeValue -> m SchemeValue) -> Prim m
efix2 nam f = Prim nam (\ex [x1, x2] -> f ex x1 x2)
-- | Ternary primitives
efix3 :: (InterpreterM m) => String -> (Exp -> SchemeValue -> SchemeValue -> SchemeValue -> m SchemeValue) -> Prim m
efix3 nam f = Prim nam (\ex [x1, x2, x3] -> f ex x1 x2 x3)
-- | Variable argument primitives
evar :: (InterpreterM m) => String -> (Exp -> [SchemeValue] -> m SchemeValue) -> Prim m
evar = Prim

-- | Heap unrelated operations 
fix1 :: (InterpreterM m) => String -> (SchemeValue -> m SchemeValue) -> Prim m
fix1 nam = efix1 nam . const
fix2 :: (InterpreterM m) => String -> (SchemeValue -> SchemeValue -> m SchemeValue) -> Prim m
fix2 nam = efix2 nam . const
fix3 :: (InterpreterM m) => String -> (SchemeValue -> SchemeValue -> SchemeValue -> m SchemeValue) -> Prim m
fix3 nam = efix3 nam . const

derefPtr :: (InterpreterM m) => SchemeValue -> m SchemeValue
derefPtr (SchemePtr a) = derefAdr a
derefPtr v = error $ "not a pointer " ++ show v

coerc1Real :: (Double -> Double) -> SchemeValue -> SchemeValue
coerc1Real f (SchemeInt a) = SchemeRea $ f (fromIntegral a)
coerc1Real f (SchemeRea a) = SchemeRea $ f a
coerc1Real _ a = error $  "not a number" ++ show a

coerc1Real' :: (Double -> Integer) -> SchemeValue -> SchemeValue
coerc1Real' f (SchemeInt a) = SchemeInt $ f $ fromIntegral a
coerc1Real' f (SchemeRea a) = SchemeRea $ fromIntegral $ f a
coerc1Real' _ a = error $ "not a numer" ++ show a

-- | Checks the following condition on the value isPointer && pred 
derefPred :: (InterpreterM m) => (SchemeValue -> Bool) -> SchemeValue -> m Bool
derefPred pred = derefPtr >=> (return . pred)

-- TODO: the problem is that I cannot derive `Integral` since SchemeValue is **not** Enum!
allPrimitives :: InterpreterM m => [Prim m]
allPrimitives = [
   fix2 "modulo" (\(SchemeInt a) (SchemeInt b) -> return $ SchemeInt $ mod a b),
   fix2 "*" (\a b -> return $ a * b), -- todo: vararg 
   fix2 "+" (\a b -> return $ a + b), -- todo: vararg
   fix2 "-" (\a b -> return $ a - b), -- todo: vararg
   fix2 "/" (\a b -> return $ a / b), -- todo: vararg
   fix1 "acos" $ return . acos,
   fix1 "atan" $ return . atan,
   -- fix1 "boolean?" (return . isBool),
   fix1 "true?" $ return . SchemeBoo . trueish,
   fix1 "false?" $ return . SchemeBoo . falsish,
   fix1 "car" $ derefPtr >=> (\(SchemePair v _) -> return v),
   fix1 "cdr" $ derefPtr >=> (\(SchemePair _ v) -> return v),
   fix1 "ceiling" $ return . coerc1Real' ceiling,
   -- fix1 "char->integer" todo,
   fix2 "char-ci<?" (\(SchemeCha c1) (SchemeCha c2) -> return $ SchemeBoo $ toLower c1 < toLower c2),
   fix2 "char-ci=?" (\(SchemeCha c1) (SchemeCha c2) -> return $ SchemeBoo $ toLower c1 == toLower c2),
   fix1 "char-downcase" (\(SchemeCha c) -> return $ SchemeCha $ toLower c),
   fix1 "char-upcase" (\(SchemeCha c) -> return $ SchemeCha $ toUpper c),
   fix1 "char-lower-case?" (\(SchemeCha c) -> return $ SchemeBoo $ isLower c),
   fix1 "char-upper-case?" (\(SchemeCha c) -> return $ SchemeBoo $ isUpper c),
   fix2 "char<?" (\(SchemeCha c1) (SchemeCha c2) -> return $ SchemeBoo $ c1 < c2),
   fix2 "char=?" (\(SchemeCha c1) (SchemeCha c2) -> return $ SchemeBoo $ c1 == c2),
   efix2 "cons" (\ex car cdr -> allocAdr ex >>= storeVal (SchemePair car cdr)),
   -- fix2 "eq?" todo 
   fix2 "expt" (\a b -> return $ a ** b),
   fix1 "floor" $ return . coerc1Real' floor,
   -- fix1 "integer->char" todo, 
   fix1 "log" $ return . coerc1Real log,
   fix1 "null?" $ return . SchemeBoo . isNil,
   -- fix1 "number->string" todo, 
   -- fix2 "make-string" todo, 
   fix1 "number?" $ return . SchemeBoo . isNumber,
   fix1 "pair?" $ derefPred isPair >=> (return . SchemeBoo),
   -- fix1 "procedure?" todo, 
   fix2 "quotient" (\(SchemeInt a) (SchemeInt b) -> return $ SchemeInt $ div a b),
   fix1 "real?" $ return . SchemeBoo . isReal,
   fix2 "remainder" (\(SchemeInt a) (SchemeInt b) -> return $ SchemeInt $ rem a b),
   fix1 "round" $ return . coerc1Real' round,
   fix2 "set-car!" (\(SchemePtr adr) v -> 
      (derefAdr adr <&> (\(SchemePair _ cdr) -> SchemePair v cdr) >>= (`storeVal` adr)) $> SchemeUns),
   fix2 "set-cdr!" (\(SchemePtr adr) v ->
      (derefAdr adr <&> (\(SchemePair car _) -> SchemePair car v) >>= (`storeVal` adr)) $> SchemeUns),
   fix1 "sin" $ return . coerc1Real sin,
   fix1 "sqrt" $ return . coerc1Real sqrt,
   -- fix1 "string->number" todo, 
   -- fix1 "string->symbol" todo, 
   efix2 "string-append" (\ex v1 v2 -> do
      (SchemeString s1) <- derefPtr v1
      (SchemeString s2) <- derefPtr v2
      (allocAdr ex >>= storeVal (SchemeString $ s1 ++ s2))),
   fix1 "string-length" $ derefPtr >=> (\(SchemeString s) -> return $ SchemeInt $ fromIntegral $ length s),
   fix2 "string-ref" (\ptr (SchemeInt pos) -> derefPtr ptr <&> (\(SchemeString s) -> SchemeCha $ s !! fromIntegral pos)),
   fix3 "string-set!" (\(SchemePtr adr) (SchemeInt pos) (SchemeCha c) -> derefAdr adr >>= flip storeVal adr . (\(SchemeString s) ->  SchemeString $ replaceAt s pos c)),
   -- fix2 "string<?" todo,
   fix1 "string?" $ derefPred isString >=> (return . SchemeBoo),
   -- fix2 "substring" todo, 
   -- fix1 "symbol->string" todo, 
   -- fix1 "symbol?" todo, 
   fix1 "tan" $ return . coerc1Real tan,
   -- fix2 "make-vector" todo,
   evar "vector" (\ex vs -> allocAdr ex >>= storeVal (SchemeVector $ Vector.fromList vs)),
   fix1 "vector-length" (\v -> derefPtr v <&> (\(SchemeVector vec) -> SchemeInt $ fromIntegral $ Vector.length vec)),
   fix2 "vector-ref" (\v (SchemeInt pos) -> derefPtr v <&> (\(SchemeVector vec) -> vec Vector.! fromIntegral pos)) ,
   fix3 "vector-set!" (\ptr (SchemeInt pos) v -> derefPtr ptr <&> (\(SchemeVector vec) -> SchemeVector $ vec Vector.// [(fromIntegral pos, v)])) ,
   fix1 "vector?" $ derefPred isVector >=> (return .  SchemeBoo),
   fix2 "<" (\a b -> return $ SchemeBoo $ a < b),
   fix2 "=" (\a b -> return $ SchemeBoo $ a == b),
   fix1 "random" random
   -- fix1 "error" todo
   ]

primitivesByName :: InterpreterM m => Map String (Prim m)
primitivesByName = Map.fromList $ map (\p -> (primName p, p)) allPrimitives

primitive :: (InterpreterM m) => String -> Prim m
primitive = fromJust . flip Map.lookup primitivesByName

primitiveNames :: forall m .  InterpreterM m => [String]
primitiveNames = Map.keys (primitivesByName @m)

