module Data.ListExtra (replaceAt) where


replaceAt :: [a] -> Integer -> a -> [a]
replaceAt (_:xs) 0 c = c : xs
replaceAt (x:xs) n c = x : replaceAt xs (n-1) c
replaceAt [] _ _ = []
