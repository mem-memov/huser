module UserPhonesRepository where

import UserPhones
import Repositories
import User

findUserPhones :: User -> Repositories -> (Maybe UserPhones, Repositories)
findUserPhones user repositories = let
    userPhones = filter (\(UserPhones currentUser _ ) -> currentUser == user) (userPhoneRepository repositories)
    in case userPhones of
        [foundUserPhones] -> (Just foundUserPhones, repositories)
        _ -> (Nothing, repositories)