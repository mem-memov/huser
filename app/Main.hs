module Main where

import Data.Typeable
import Control.Monad.State

import UserRepository
import Repositories

main :: IO ()
main = do
  let repos = do
        repos <- makeState
        user <- createUser
        return repos
      result = runState repos
  return ()


makeState :: State Repositories ()
makeState = do
  repos <- put $ createEmptyRepositories
  return repos

manipRepos :: State Repositories ()
manipRepos = do 
  repos <- put $ createEmptyRepositories
  user <- createUser
  return repos