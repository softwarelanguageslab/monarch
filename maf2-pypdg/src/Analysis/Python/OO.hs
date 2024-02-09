module Analysis.Python.OO where

---
--- MRO lookup 
--- 

--lookupAttrInMRO :: forall pyM m . PyM pyM (PyObj m) => String -> [PyVal] -> pyM PyVal
--lookupAttrInMRO _ [] = escape AttributeNotFound
--lookupAttrInMRO _ (c:cs) = undefined 

-- merge :: forall a pyM obj . (PyM pyM obj, JoinLattice a) => [CPList a] -> pyM (CPList a)
-- merge = aux (\ass _ -> SeqDomain.fromList <$> mergeLists ass) (return . TopList)
--   where aux :: ([[a]] -> a -> pyM (CPList a)) -> (a -> pyM (CPList a)) -> [CPList a] -> pyM (CPList a)
--         aux f _ []                  = f [] bottom
--         aux _ _ (BotList      : _)  = return BotList
--         aux f g (CPList l _ v : r)  = aux (\ass a -> f (l:ass) (a `join` v)) (g . join v) r
--         aux _ g (TopList v    : r)  = let f = g . join v in aux (const f) f r

-- mergeLists :: (JoinLattice a, PyM pyM obj) => [[a]] -> pyM [a]
-- mergeLists []   = return []
-- mergeLists ass  = undefined
