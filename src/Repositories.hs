module Repositories where

import User
import Phone
import UserPhones
import PhoneUsers

data Repositories = Repositories { userRepository :: [User]
  , phoneRepository :: [Phone]
  , userPhoneRepository :: [UserPhones]
  , phoneUserRepository :: [PhoneUsers]
}

-- addPhoneToUser :: User -> Phone -> Repositories -> ((), Repositories)