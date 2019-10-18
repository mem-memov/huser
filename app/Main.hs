module Main where

import Data.Typeable
import Control.Monad.State
import Lib
import UserRepository
import Repositories

main :: IO ()
main = do
  return ()
  where repos = createEmptyRepositories


manipRepos :: State Repositories ()
manipRepos = do 
  user <- createUser
  return ()