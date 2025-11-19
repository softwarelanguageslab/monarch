module Lattice.TH(
    pointWiseLattice
  ) where

import Language.Haskell.TH
import Lattice.Class (PartialOrder (leq)
                    , Joinable (join)
                    , TopLattice (top)
                    , BottomLattice (bottom)
                    , Meetable (meet))

-- | Generate lattice implementations for the given structure
-- by applying the lattice operations pointwise on each field
-- in the structure
pointWiseLattice :: Name -> Q [Dec]
pointWiseLattice nam = do
  info <-  reify nam
  case info of
    TyConI dec -> generatePointWiseLatticeFor dec
    _ -> error $ "expected a type constructor but got " ++ show info

generatePointWiseLatticeFor :: Dec -> Q [Dec]
generatePointWiseLatticeFor =
  \case (DataD _ name tvars _ [constr] _) ->
          sequence [generateJoinable name tvars constr,
                    generatePartialOrder name tvars constr,
                    generateTopLattice name tvars constr,
                    generateBottomLattice name tvars constr,
                    generateMeetable name tvars constr]
        dec -> error $ "only data constructors are supported but got " ++ show dec

-- | Generates an "instance PartialOrder (Name tvars ..) where" by
-- applying the partial ordering relation pointwise on each field of the
-- data constructor and conjoining the result.
-- Only supports data constructors (or newtypes) that have a single constructor
-- (i.e., are record types).
generatePartialOrder :: Name -> [TyVarBndr ()] -> Con -> Q Dec
generatePartialOrder dataName tvars constr = do
  let fields = extractFields constr
      constrName = extractConstrName constr

  -- Generate variable names for the fields of the first argument
  leftVars <- mapM (const $ newName "l") fields
  -- Generate variable names for the fields of the second argument
  rightVars <- mapM (const $ newName "r") fields

  -- Pattern for the left argument
  let leftPat = ConP constrName [] (map VarP leftVars)
  -- Pattern for the right argument
  let rightPat = ConP constrName [] (map VarP rightVars)

  -- Generate the body: l1 `leq` r1 && l2 `leq` r2 && ... && ln `leq` rn
  let leqExps = zipWith (\l r -> InfixE (Just (VarE l)) (VarE 'leq) (Just (VarE r))) leftVars rightVars
      bodyExp = foldl (\acc -> InfixE (Just acc) (VarE '(&&)) . Just) (ConE 'True) leqExps

  -- Build constraints: PartialOrder t1, PartialOrder t2, ... for each field type
  let constraints = map (AppT (ConT ''PartialOrder)) fields

  -- Build the instance declaration
  let instanceType = applyType dataName tvars
      leqClause = Clause [leftPat, rightPat] (NormalB bodyExp) []
      leqDecl = FunD 'leq [leqClause]

  return $ InstanceD Nothing constraints (AppT (ConT ''PartialOrder) instanceType) [leqDecl]

-- | Generic function to generate instances that apply a binary operation pointwise
-- on each field of a data constructor.
generatePointwiseBinary :: Name           -- ^ Class name (e.g., ''Joinable)
                        -> Name           -- ^ Method name (e.g., 'join)
                        -> Name           -- ^ Data type name
                        -> [TyVarBndr ()] -- ^ Type variables
                        -> Con            -- ^ Constructor
                        -> Q Dec
generatePointwiseBinary className methodName dataName tvars constr = do
  let fields = extractFields constr
      constrName = extractConstrName constr

  -- Generate variable names for the fields of the first argument
  leftVars <- mapM (const $ newName "l") fields
  -- Generate variable names for the fields of the second argument
  rightVars <- mapM (const $ newName "r") fields

  -- Pattern for the left argument
  let leftPat = ConP constrName [] (map VarP leftVars)
  -- Pattern for the right argument
  let rightPat = ConP constrName [] (map VarP rightVars)

  -- Generate the body: ConstrName (l1 `op` r1) (l2 `op` r2) ... (ln `op` rn)
  let opExps = zipWith (\l r -> InfixE (Just (VarE l)) (VarE methodName) (Just (VarE r))) leftVars rightVars
      bodyExp = foldl AppE (ConE constrName) opExps

  -- Build constraints: ClassName t1, ClassName t2, ... for each field type
  let constraints = map (AppT (ConT className)) fields

  -- Build the instance declaration
  let instanceType = applyType dataName tvars
      methodClause = Clause [leftPat, rightPat] (NormalB bodyExp) []
      methodDecl = FunD methodName [methodClause]

  return $ InstanceD Nothing constraints (AppT (ConT className) instanceType) [methodDecl]

-- | Generic function to generate instances that apply a nullary operation pointwise
-- on each field of a data constructor (for top/bottom).
generatePointwiseNullary :: Name        -- ^ Class name (e.g., ''TopLattice)
                         -> Name        -- ^ Method name (e.g., 'top)
                         -> Name        -- ^ Data type name
                         -> [TyVarBndr ()] -- ^ Type variables
                         -> Con         -- ^ Constructor
                         -> Q Dec
generatePointwiseNullary className methodName dataName tvars constr = do
  let fields = extractFields constr
      constrName = extractConstrName constr

  -- Generate the body: ConstrName method method ... method
  let bodyExp = foldl AppE (ConE constrName) (replicate (length fields) (VarE methodName))

  -- Build constraints: ClassName t1, ClassName t2, ... for each field type
  let constraints = map (AppT (ConT className)) fields

  -- Build the instance declaration
  let instanceType = applyType dataName tvars
      methodClause = Clause [] (NormalB bodyExp) []
      methodDecl = FunD methodName [methodClause]

  return $ InstanceD Nothing constraints (AppT (ConT className) instanceType) [methodDecl]

-- | Generates an "instance Joinable (Name tvars ...) where" by
-- applying the join operation pointwise on each field of the
-- data constructor and returning a new instance of the data type.
generateJoinable :: Name -> [TyVarBndr ()] -> Con -> Q Dec
generateJoinable = generatePointwiseBinary ''Joinable 'join

-- Helper function to extract fields from a constructor
extractFields :: Con -> [Type]
extractFields (NormalC _ fields) = map snd fields
extractFields (RecC _ fields) = map (\(_, _, t) -> t) fields
extractFields (InfixC {}) = error "Infix constructors not supported"
extractFields (ForallC _ _ con) = extractFields con
extractFields _ = error "Unsupported constructor type"

-- Helper function to extract constructor name
extractConstrName :: Con -> Name
extractConstrName (NormalC name _) = name
extractConstrName (RecC name _) = name
extractConstrName (InfixC _ name _) = name
extractConstrName (ForallC _ _ con) = extractConstrName con
extractConstrName _ = error "Unsupported constructor type"

-- Helper function to apply type variables to a type name
applyType :: Name -> [TyVarBndr ()] -> Type
applyType name tvars = foldl AppT (ConT name) (map tyVarToType tvars)
  where
    tyVarToType (PlainTV n _) = VarT n
    tyVarToType (KindedTV n _ _) = VarT n

-- | Generates an "instance Meetable (Name tvars ...) where" by
-- applying the meet operation pointwise on each field of the
-- data constructor and returning a new instance of the data type.
generateMeetable :: Name -> [TyVarBndr ()] -> Con -> Q Dec
generateMeetable = generatePointwiseBinary ''Meetable 'meet

-- | Generates an "instance BottomLattice (Name tvars ...) where" by
-- applying the bottom operation pointwise on each field of the
-- data constructor.
generateBottomLattice :: Name -> [TyVarBndr ()] -> Con -> Q Dec
generateBottomLattice = generatePointwiseNullary ''BottomLattice 'bottom

-- | Generates an "instance TopLattice (Name tvars ...) where" by
-- applying the top operation pointwise on each field of the
-- data constructor.
generateTopLattice :: Name -> [TyVarBndr ()] -> Con -> Q Dec
generateTopLattice = generatePointwiseNullary ''TopLattice 'top

