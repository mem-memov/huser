module MonadStack (
  MonadStack
) where

import Control.Monad.State
import Repositories

type MonadStack a = StateT Repositories IO a