{-# LANGUAGE NamedFieldPuns #-}
module Main (main) where


import qualified Entrypoints

main :: IO ()
main = Entrypoints.run
