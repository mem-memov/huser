module UserRepository(findUser) where

import User
import Repositories

-- createUser :: Repositories -> (User, Repositories)
-- createUser repositories = (User {userId = }, repositories)

findUser :: Int -> Repositories -> (Maybe User, Repositories)
findUser id repositories = let 
    users = filter (\user -> (userId user) == id) (userRepository repositories) 
    in case users of
        [foundUser] -> (Just foundUser, repositories)
        _ -> (Nothing, repositories)