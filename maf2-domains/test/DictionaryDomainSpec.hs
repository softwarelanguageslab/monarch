{-# LANGUAGE AllowAmbiguousTypes, FlexibleInstances, FlexibleContexts #-}
module DictionaryDomainSpec(spec) where

import Domain 
import Domain.Dictionary hiding (Bottom)
import Domain.ConstantPropagation
import Test.QuickCheck
import Test.Hspec
import Test.Hspec.QuickCheck
import qualified Data.List as List
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.Trans
import Control.Monad.State (execStateT, execState, modify, gets)
import Prelude hiding (abs)


-- | Concretely execute the given sequence of operations
execConc :: (Ord k) => DictionaryAction k v -> Maybe (Map k v)
execConc = flip execStateT Map.empty . evalStm
   where evalStm Empty        = return ()
         evalStm (Update k e) = do
            v <- evalExp e
            modify (Map.insert k v)
            return ()
         evalStm (UpdateImprecise k e) = evalStm (Update k e)
         evalStm (Seq a b)  = evalStm a >> evalStm b
         evalStm Error      = lift Nothing
         evalExp (Value v)  = return v
         evalExp (Lookup k) = gets (Map.lookup k) >>= maybe (lift Nothing) return

-- | Abstractly execute the given sequence of operations
execAbs :: forall k' v' k v .
   (DictionaryDomain (Dictionary k' v'), Domain k' k, Domain v' v,
    DKey (Dictionary k' v') ~ k', DVlu (Dictionary k' v') ~ v')
   => k' -> DictionaryAction k v -> Dictionary k' v'
execAbs top = flip execState dEmpty . evalStm
   where evalStm Empty        = return ()
         evalStm (Update k e) = do
            v <- evalExp e
            modify (update (inject k) v)
            return ()
         evalStm (UpdateImprecise _ e) = do
            v <- evalExp e
            modify (update top v)
            return ()
         evalStm (Seq a b) = evalStm a >> evalStm b
         evalStm Error = return bottom
         evalExp (Value v)  = return $ inject v
         evalExp (Lookup k) = gets (Domain.Dictionary.lookup (inject k))

-- | Converts a concrete map to an abstract one
alpha :: forall k' v' k v .
   (Eq v', Ord v', Domain k' k, Domain v' v, Ord k', DKey (Dictionary k' v') ~ k', DVlu (Dictionary k' v') ~ v',
    Joinable (Dictionary k' v'), DictionaryDomain (Dictionary k' v'))
   => Maybe (Map k v) -> Dictionary k' v'
alpha Nothing  = bottom
alpha (Just m) = Map.foldrWithKey (\k v -> update (inject k) (inject v)) dEmpty m

-- | Soundness is tested by generating arbitrary sequences of actions, running them against 
-- a concrete map, and checking subsumption afterwards
dictSoundness :: forall k' v' k v .
   (Ord v', Eq v', Show k, Show v, Domain k' k, Domain v' v, Ord k', Ord k, Show k', Show v',
    Joinable (Dictionary k' v'),
    DictionaryDomain (Dictionary k' v'), DKey (Dictionary k' v') ~ k', DVlu (Dictionary k' v') ~ v')
      => Gen (DictionaryAction k v) -> k' -> Spec
dictSoundness dseqGen top = do
   it "∀ dseq, α(exec(dseq)) ⊑ exec#(dseq)" $
      forAll dseqGen
         (\dseq ->
            let abs = execAbs @k' @v' top dseq
                con = alpha @k' @v' (execConc dseq)
            in counterexample ("abs = " ++ show abs ++ "\nconc = " ++ show con) $ subsumes abs con)

-- | Expressions
data DictionaryExpression k v = Value v | Lookup k deriving Show

-- | Actions for manipulating dictionaries
data DictionaryAction k v = Update k (DictionaryExpression k v)
                          | UpdateImprecise k (DictionaryExpression k v)
                          | Seq (DictionaryAction k v) (DictionaryAction k v)
                          | Error
                          | Empty deriving Show

--

instance (Arbitrary v, Arbitrary k) => Arbitrary (DictionaryAction k v) where
   arbitrary = oneof [
      Seq <$> arbitrary <*> arbitrary,
      pure Empty,
      pure Error,
      UpdateImprecise <$> arbitrary <*> arbitrary,
      Update <$> arbitrary <*> arbitrary]

-- 

newtype Key = Key String deriving (Ord, Eq, Show)
instance Arbitrary Key where
   arbitrary = elements $ map (Key . List.singleton) ['a' .. 'c']

instance Domain (CP String) Key where
   inject (Key s) = inject s

instance (Arbitrary v, Arbitrary k) => Arbitrary (DictionaryExpression k v) where
   arbitrary = oneof [ Value <$> arbitrary, Lookup <$> arbitrary ]

-- 

spec :: Spec
spec = do
   describe "dictionary using constant propagation string keys should be sound"  $
      modifyMaxSuccess (const 3000) $ 
         dictSoundness @(CP String) @(CP Integer)
                       (arbitrary :: Gen (DictionaryAction Key Integer))
                       Top
