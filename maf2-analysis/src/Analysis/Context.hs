{-# LANGUAGE FlexibleInstances #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Analysis.Context(MCFA(..), push, pushes, emptyMcfaContext) where

------------------------------------------------------------
-- m-cfa
------------------------------------------------------------

-- | m-cfa context,
data MCFA e = MCFA {es :: ![e], max :: !Int}
            deriving (Eq, Ord, Show)

-- | Push an element on the m-cfa context,
-- respecting the maximum number of elements in the context
push :: e -> MCFA e -> MCFA e
push e (MCFA es m) = MCFA (take m (e : es)) m

pushes :: [e] -> MCFA e -> MCFA e 
pushes es (MCFA es' m) = MCFA (take m (es ++ es')) m

-- | Create an empty MCFA context with the given maximum 
-- context size
emptyMcfaContext :: forall e .  Int -> MCFA e
emptyMcfaContext = MCFA []
