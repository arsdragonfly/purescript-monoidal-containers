module Data.HashMap.Monoidal (MonoidalHashMap) where

import Prelude

import Data.HashMap as M
import Data.Hashable (class Hashable)

newtype MonoidalHashMap k v
  = MonoidalHashMap (M.HashMap k v)

instance semigroupMonoidalHashMap :: (Hashable k, Semigroup v) ⇒ Semigroup (MonoidalHashMap k v) where
  append (MonoidalHashMap a) (MonoidalHashMap b) = MonoidalHashMap (M.unionWith (<>) a b)

instance monoidMonoidalHashMap :: (Hashable k, Semigroup v) ⇒ Monoid (MonoidalHashMap k v) where
  mempty = MonoidalHashMap M.empty