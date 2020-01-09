module Main where

import Data.Typeable
import Control.Monad.State

import UserRepository
import Repositories

main :: IO ()
main = do
  -- let result = runState $ manipRepos repos 
  return ()
  where repos = createEmptyRepositories


makeState :: State Repositories Repositories
makeState = do
  return createEmptyRepositories

manipRepos :: State Repositories Repositories
manipRepos = do 
  user <- createUser
  return ()