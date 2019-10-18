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
}

createEmptyRepositories :: Repositories
createEmptyRepositories = Repositories { 
  userRepository = [],
  phoneRepository = [],
  userPhoneRepository = [],
  phoneUserRepository = []
}

-- addPhoneToUser :: User -> Phone -> Repositories -> ((), Repositories)