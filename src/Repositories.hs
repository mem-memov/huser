module Repositories (
  Repositories(..),
  createEmptyRepositories
) where

import User
import Phone
import UserPhones
import PhoneUsers

data Repositories = Repositories { 
  userRepository :: [User],
  phoneRepository :: [Phone],
  userPhoneRepository :: [UserPhones],
  phoneUserRepository :: [PhoneUsers]
} deriving (Show)

createEmptyRepositories :: Repositories
createEmptyRepositories = Repositories { 
  userRepository = [],
  phoneRepository = [],
  userPhoneRepository = [],
  phoneUserRepository = []
}

-- addPhoneToUser :: User -> Phone -> Repositories -> ((), Repositories)