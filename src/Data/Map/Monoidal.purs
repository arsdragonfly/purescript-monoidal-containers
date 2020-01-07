module Data.Map.Monoidal (MonoidalMap) where

import Prelude
import Data.Map as M

newtype MonoidalMap k v
  = MonoidalMap (M.Map k v)

instance semigroupMonoidalMap :: (Ord k, Semigroup v) ⇒ Semigroup (MonoidalMap k v) where
  append (MonoidalMap a) (MonoidalMap b) = MonoidalMap (M.unionWith (<>) a b)

instance monoidMonoidalMap :: (Ord k, Semigroup v) ⇒ Monoid (MonoidalMap k v) where
  mempty = MonoidalMap M.empty
