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
      modifyRepos = runState repoState
      repos = snd $ modifyRepos emptyRepos
  return ()
