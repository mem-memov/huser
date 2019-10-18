module PhoneUsers where

  import User
  import Phone

  data PhoneUsers = PhoneUsers Phone [User] deriving (Show)