{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE DataKinds #-}
module T403 where

pattern (:&&:) :: () => forall k. ((k :+ 1) ~ n) => a -> HoHeList k a -> HoHeList n a
pattern (:&&:) x rest <- (matchNext -> Right (x, Refl, rest))
