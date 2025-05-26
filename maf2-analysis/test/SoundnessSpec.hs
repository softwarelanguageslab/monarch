{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
module SoundnessSpec(spec) where 

import Test 

import Domain.Class
import qualified Lattice.Class as Lattice
import qualified Benchmark.Scheme.Programs as SchemeBenchmarks
import qualified Analysis.Scheme.Simple as Scheme
import qualified Syntax.Scheme
import qualified Interpreter.Scheme as Concrete
import qualified Data.Map as Map
import Analysis.Scheme
import qualified Domain.Scheme.Store as AbstractStore
import Analysis.Scheme.Simple (V)
import Syntax.Ide
import Domain.Core.PairDomain.Class
import Domain.Scheme.Class (PaiDom)

maybeToEither :: e -> Maybe a -> Either e a 
maybeToEither e Nothing = Left e 
maybeToEither _ (Just a) = Right a

-- subsumes :: (Content (PaiDom V) ~ V) => AbstractStore.StoreVal V -> Concrete.SchemeValue -> Bool 
-- subsumes (AbstractStore.VarVal v) (Concrete.SchemeInt int)    = v `Lattice.subsumes` inject int
-- subsumes (AbstractStore.VarVal v) (Concrete.SchemeRea rea)    = v `Lattice.subsumes` inject rea
-- subsumes (AbstractStore.VarVal v) (Concrete.SchemeBoo boo)    = v `Lattice.subsumes` inject boo
-- subsumes (AbstractStore.VarVal v) (Concrete.SchemeCha cha)    = v `Lattice.subsumes` inject cha
-- subsumes (AbstractStore.StrVal v) (Concrete.SchemeString str) = v `Lattice.subsumes` inject str
-- subsumes (AbstractStore.VecVal v) (Concrete.SchemeVector vec) = True -- todo 
-- subsumes (AbstractStore.PaiVal v) (Concrete.SchemePair a b) = True -- todo car v `subsumes` a && cdr v `subsumes` b
-- subsumes _ _ = True 

instance Domain (AbstractStore.StoreVal V) Concrete.SchemeValue where 
    inject (Concrete.SchemePtr adr) = undefined -- TODO
    inject (Concrete.SchemeInt int) = AbstractStore.VarVal (inject int) 
    inject (Concrete.SchemeRea rea) = AbstractStore.VarVal (inject rea) 
    inject (Concrete.SchemeBoo boo) = AbstractStore.VarVal (inject boo) 
    inject (Concrete.SchemeCha cha) = AbstractStore.VarVal (inject cha) 
    inject (Concrete.SchemeClo (exp, env)) = error "not yet implemented: inject closure" -- TODO
    inject Concrete.SchemeNil = error "not yet implemented: inject nil" -- TODO
    inject Concrete.SchemeUns = error "not yet implemented: inject uns" -- TODO
    inject (Concrete.SchemePrim s) = error "not yet implemented: inject prim" -- TODO
    inject (Concrete.SchemePair v1 v2) = error "not yet implemented: inject pair" -- TODO
    inject (Concrete.SchemeVector vector) = error "not yet implemented: inject vector" -- TODO
    inject (Concrete.SchemeString s) = AbstractStore.StrVal (inject s)


addressMatches :: Concrete.CAdr -> Adr -> Bool 
addressMatches (Concrete.CAdr (_, e1)) (AbstractStore.PtrAdr e2 _) = e1 == e2
addressMatches (Concrete.VarAdr (_, id1)) (AbstractStore.VarAdr id2 _) = id1 == id2
addressMatches (Concrete.PrmAdr s1) (AbstractStore.PrrAdr s2) = s1 == s2
addressMatches _ _ = False 

combineMatchingMaps keyMatches combine map1 map2 =
    [ combine v1 v2 | (k1, v1) <- Map.toList map1, (k2, v2) <- Map.toList map2, keyMatches k1 k2]
  

schemeSoundness :: Spec
schemeSoundness = describe "Scheme soundness" $ mapM_ (soundBenchmark
            "Scheme analysis"
            defaultTimeout
            (return . Scheme.cpAnalyze) -- analyze
            (return . Concrete.runInterpreter) -- concrete interpreter
            (\(_, concreteSto) (abstractSto, _) -> -- the concrete result should subsume the analysis result
                 return $ and $ combineMatchingMaps addressMatches (flip gamma) concreteSto abstractSto )
            (return . Syntax.Scheme.parseString')) SchemeBenchmarks.quick


-- pythonSoundness :: Spec
-- pythonSoundness = describe "Python soundness" $ mapM_ (soundBenchmark
--             "Python analysis"
--             defaultTimeout
--             (return . (snd3 . analyzeCP))
--             (return . (maybeToEither "parse error" . parse ""))) allBenchmarks

spec :: Spec 
spec = do
    schemeSoundness