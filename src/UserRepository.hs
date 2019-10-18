module UserRepository(
  createUser,
  findUser
) where

import Control.Monad.State
import User
import Repositories

createUser :: State Repositories User
createUser = state $ \repositories -> 
  let
    user = User {
      userId = 0, 
      userFirstName = FirstName "", 
      userSecondName = SecondName "",
      userLastName = LastName ""
    }
    users = userRepository repositories
    updatedRepositories = repositories {userRepository = user : users}
  in (user, updatedRepositories)

findUser :: Int -> State Repositories (Maybe User)
findUser id = state $ \repositories -> case findUsersById id (userRepository repositories) of
  [foundUser] -> (Just foundUser, repositories)
  _ -> (Nothing, repositories)

findUsersById :: Int -> [User] -> [User]
findUsersById id users = filter (\user -> (userId user) == id) users