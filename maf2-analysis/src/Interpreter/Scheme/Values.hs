{-# LANGUAGE RankNTypes #-}
module Interpreter.Scheme.Values(SchemeValue(..), CAdr(..), Env, Sto, trueish ,falsish, isNil, isNumber, isReal, isPair, isVector, isString) where

import Data.Map
import Data.Vector hiding ((++))
import Syntax.Scheme.AST
import Syntax.Ide
import Text.Printf

-- | A concrete Scheme address.
-- It consists of an address (constructed using a incrementing counter), and an expression.
-- The latter is used for correlating the concrete store with the abstract store.
data CAdr = CAdr (Int, Exp) | VarAdr (Int, Ide) | PrmAdr String | RetAdr Exp Env Int deriving (Show, Eq, Ord)

-- | A Scheme environment
type Env = Map String CAdr

-- | A Scheme store 
type Sto = Map CAdr SchemeValue

-- | A Scheme value
data SchemeValue =
   SchemePtr CAdr
 | SchemeInt Integer
 | SchemeRea Double
 | SchemeBoo Bool
 | SchemeCha Char
 | SchemeClo (Exp, Env)
 | SchemeNil
 | SchemeUns
 | SchemePrim String
 | SchemePair SchemeValue SchemeValue
 | SchemeVector (Vector SchemeValue)
 | SchemeString String deriving (Eq, Ord)


instance Show SchemeValue where
   show (SchemePtr ptr) = printf "<ptr: %s>" (show ptr)
   show (SchemeInt i) = show i
   show (SchemeRea r) = show r
   show (SchemeBoo b) = show b
   show (SchemeCha c) = show c
   show (SchemeClo (expr, _)) = printf "<procedure: %s>" (show expr)
   show SchemeNil = "'()"
   show (SchemePrim prim) = printf "<primitive: %s>" prim
   show (SchemePair car cdr) = printf "(%s . %s)" (show car) (show cdr)
   show (SchemeVector vec) = "<vector>"
   show (SchemeString str) = show str


-- | Is the Scheme value considered to be true
trueish :: SchemeValue -> Bool
trueish (SchemeBoo False) = False
trueish _ = True

-- | Is the Scheme value considered false 
falsish :: SchemeValue -> Bool
falsish (SchemeBoo False) = True
falsish _  = False


-- | Is the Scheme value nil
isNil :: SchemeValue -> Bool
isNil SchemeNil = True
isNil _ = False

-- | Is the Scheme value a number
isNumber :: SchemeValue -> Bool
isNumber (SchemeInt _) = True
isNumber (SchemeRea _) = True
isNumber _ = False

-- | Is the Scheme value a real number
isReal :: SchemeValue -> Bool
isReal (SchemeRea _) = True
isReal _ = False

-- | Is the Scheme value a string
isString :: SchemeValue -> Bool
isString (SchemeString _) = True
isString _ = False

-- | Is the Scheme value a vector 
isVector :: SchemeValue -> Bool
isVector (SchemeVector _) = True
isVector _ = False

-- | Is the Scheme value a pair 
isPair :: SchemeValue -> Bool
isPair (SchemePair _ _) = True
isPair _ = False

-- | Numerical tower for Scheme values

coerce :: (forall a . Num a => a -> a -> a) -> SchemeValue -> SchemeValue -> SchemeValue
coerce f (SchemeInt a) (SchemeInt b) = SchemeInt (f a b)
coerce f (SchemeRea a) (SchemeRea b) = SchemeRea (f a b)
coerce f (SchemeInt a) (SchemeRea b) = SchemeRea (f (fromIntegral a) b)
coerce f (SchemeRea a) (SchemeInt b) = SchemeRea (f a (fromIntegral b))
coerce _ a b = error $ "not numerical" ++ show a ++ show b

coerc1 :: (forall a . Num a => a -> a) -> SchemeValue -> SchemeValue
coerc1 f (SchemeInt a) = SchemeInt $ f a
coerc1 f (SchemeRea a) = SchemeRea $ f a
coerc1 _ a = error $ "not a numerical" ++ show a

coerc1' :: (forall a . Floating a => a -> a) -> SchemeValue -> SchemeValue
coerc1' f (SchemeInt a) = SchemeRea $ f (fromIntegral a)
coerc1' f (SchemeRea a) = SchemeRea $ f a
coerc1' _ a = error $ "not floating" ++ show a

coerce' :: (forall a . Fractional a => a -> a -> a) -> SchemeValue -> SchemeValue -> SchemeValue
coerce' f (SchemeInt a) (SchemeInt b) = SchemeRea (f (fromIntegral a) (fromIntegral b))
coerce' f (SchemeRea a) (SchemeRea b) = SchemeRea (f a b)
coerce' f (SchemeInt a) (SchemeRea b) = SchemeRea (f (fromIntegral a) b)
coerce' f (SchemeRea a) (SchemeInt b) = SchemeRea (f a (fromIntegral b))
coerce' _ a b = error $ "not numerical" ++ show a ++ show b

instance Num SchemeValue where
   (+) = coerce (+)
   (-) = coerce (-)
   (*) = coerce (*)

   negate = coerc1 negate
   abs = coerc1 abs
   signum = coerc1 signum
   fromInteger = SchemeInt

instance Fractional SchemeValue where
   (/) = coerce' (/)
   recip (SchemeInt a) = SchemeRea $ recip (fromIntegral a)
   recip (SchemeRea a) = SchemeRea $ recip a
   recip a = error $  "not a fractional number" ++ show a
   fromRational a = SchemeRea $ fromRational a


instance Floating SchemeValue where
   pi = SchemeRea pi
   exp = coerc1' exp
   log = coerc1' log
   sin = coerc1' sin 
   cos = coerc1' cos
   asin = coerc1' asin
   acos = coerc1' acos
   atan = coerc1' atan
   sinh = coerc1' sinh
   cosh = coerc1' cosh
   asinh = coerc1' asinh
   acosh = coerc1' acosh 
   atanh = coerc1' atanh

instance Real SchemeValue where
   toRational (SchemeInt a) = toRational a
   toRational (SchemeRea a) = toRational a
   toRational a = error $ "not a real" ++ show a

instance RealFrac SchemeValue where
   properFraction (SchemeInt a) = (0, SchemeInt a)
   properFraction (SchemeRea a) = let (b, c) = properFraction a in (b, SchemeRea c)
   properFraction a = error $ "not a real fractional value " ++ show a

