module Main where

import Data.Typeable
import Control.Monad.State

import UserRepository
import Repositories

main :: IO ()
main = do
  let repoState = do
        user <- createUser
        return ()
      repos = snd $ (runState repoState) createEmptyRepositories
  return ()
