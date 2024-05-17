-- - https://gitlab.haskell.org/ghc/ghc/-/issues/7270
--   - bytestring 0.10.0.0 - commit 52ae9e1
--   - repo: git@github.com:haskell/bytestring.git
module Main where

import qualified Data.ByteString as B

main = do
  print $ let x = B.singleton 65; r = B.map succ x; !s = B.map succ r in r
  print $ let x = B.singleton 65; r = B.map succ x;  s = B.map succ r in r
