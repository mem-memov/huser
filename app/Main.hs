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
      emptyRepos = createEmptyRepositories
      repos = snd $ (runState repoState) emptyRepos
  return ()
