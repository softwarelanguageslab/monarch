{-# OPTIONS_GHC -Wno-missing-export-lists #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.CharDomain.ConstantPropagation where

import Lattice
import Domain.Core.CharDomain.Class 
import Domain.Core.BoolDomain.ConstantPropagation

import Data.Char as Char
import Control.Applicative 

instance CharDomain (CP Char) (CP Integer) where
   downcase = return . fmap toLower
   upcase = return . fmap toUpper
   charToInt = return .  fmap (fromIntegral . ord)
   isLower = return . bool . fmap Char.isLower
   isUpper = return . bool . fmap Char.isUpper
   charEq a b = return $ bool $ liftA2 (==) a b
   charLt a b = return $ bool $ liftA2 (<) a b
   charEqCI a b = return $ bool $ liftA2 (==) (toLower <$> a) (toLower <$> b)
   charLtCI a b = return $ bool $ liftA2 (<) (toLower <$> a) (toLower <$> b)