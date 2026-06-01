module Analysis.Config.TH(makeConfig) where

import Language.Haskell.TH
import qualified Data.List as List

makeConfig :: Name -> Q [Dec]
makeConfig configNodeName = do
  TyConI (DataD _ _ _ _ cons _) <- reify configNodeName
  concat <$> mapM makeFamily cons

makeFamily :: Con -> Q [Dec]
makeFamily (NormalC _ []) = error "not matched" -- pure []  -- skip non-config constructors
makeFamily (NormalC name [(_, StarT)]) = do
  let familyName = mkName . dropSuffix "Config" . nameBase $ name
  pure
    [ KiSigD familyName
        (ForallT [PlainTV (mkName "k") SpecifiedSpec] []
          (AppT (AppT ArrowT (VarT (mkName "k"))) StarT))
    , ClosedTypeFamilyD
        (TypeFamilyHead familyName [PlainTV (mkName "ξ") ()] NoSig Nothing)
        [ TySynEqn Nothing (AppT (ConT familyName) (AppT (ConT name) (VarT (mkName "cfg")))) (VarT (mkName "cfg"))
        , TySynEqn Nothing (AppT (ConT familyName) (AppT (ConT (mkName "Leaf")) (VarT (mkName "a")))) (AppT (ConT familyName) (VarT (mkName "a")))
        , TySynEqn Nothing (AppT (ConT familyName) (AppT (AppT (ConT (mkName "Node")) (VarT (mkName "a"))) (VarT (mkName "b"))))
            (AppT (AppT (ConT (mkName "Or")) (AppT (ConT familyName) (VarT (mkName "a")))) (AppT (ConT familyName) (VarT (mkName "b"))))
        , TySynEqn Nothing (AppT (ConT familyName) (VarT (mkName "ξ"))) (ConT (mkName "Void"))
        ]
    ]
makeFamily _ = pure []

dropSuffix :: String -> String -> String
dropSuffix suffix s
  | suffix `List.isSuffixOf` s = take (length s - length suffix) s
  | otherwise             = s
