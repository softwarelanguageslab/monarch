module TypeLevel.Pair(Fst, Snd, MapFirst) where 

type family Fst (x :: *) where 
   Fst (k, v) = k
type family Snd (x :: *) where 
   Snd (k, v) = v

type family MapFirst (xs :: [*]) where 
   MapFirst '[] = '[]
   MapFirst ((k, v) ': xs) = k ': MapFirst xs
