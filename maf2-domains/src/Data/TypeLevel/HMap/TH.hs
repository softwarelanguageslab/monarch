{-# LANGUAGE TemplateHaskell #-}
-- | This module provides functions to generate the appropriate instances 
-- of `ForAll` and `All` for use in HMap (see 'Data.HMap').
--
-- == Example
-- $
-- data MyKey = IntKey | BoolKey | StringKey 
-- genHKeys [''MyKey]
-- $
module Data.TypeLevel.HMap.TH(genHKeys) where

import Language.Haskell.TH
import Data.Singletons.TH

-- | Retrieve data constructor names from the reified type information
dataConstructors :: Info -> [Name]
dataConstructors (TyConI (DataD _ _ _ _ constructors _)) = map name constructors
   where name (NormalC nam _) = nam
         name _               = error "unsupported data constructor"
dataConstructors _ = []

-- | Convert a Haskell list to a typelevel list on the syntax level
fromList :: [Type] -> Type
fromList = foldr (AppT . AppT PromotedConsT) PromotedNilT

-- | Generate an instance for "ForAll" 
genForAll :: Name   -- ^ the name of the type of the key
          -> [Name] -- ^ the names of the data constructors
          -> Dec    -- ^ returns a declaration for an instance of 'ForAll'
genForAll nam ctors =
      InstanceD Nothing [_ForAllOf] (AppT (AppT (ConT _ForAll) (ConT nam)) _c) [fs]
   where _c        = VarT (mkName "c")
         _ForAllOf = AppT (AppT (ConT (mkName "ForAllOf")) (ConT nam)) _c
         _ForAll   = mkName "ForAll"
         _get      = mkName "for"
         mkKey     = mkName . ('S' :) . nameBase
         clause' ct = Clause [ConP (mkKey ct) [] []] (NormalB (ConE (mkName "Dict"))) []
         fs         = FunD _get (map clause' ctors)


genHKeys :: Name -> Q [Dec]
genHKeys nam = do
   tpyInfo <- reify nam
   let nam'    = mkName (nameBase nam)
   let ctors   = dataConstructors tpyInfo
   let allKeys = fromList (map ConT ctors)
   let _All    = TySynInstD (TySynEqn Nothing (AppT (ConT $ mkName "All") (ConT nam')) allKeys)
   let _ForAll = genForAll nam' ctors
   _singletons <- genSingletons [nam]
   _decideInst <- singDecideInstance nam  
   return $ [_ForAll, _All] ++ _singletons ++ _decideInst


