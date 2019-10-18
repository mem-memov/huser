module User(
  FirstName(..),
  SecondName(..),
  LastName(..),
  User(..)
) where

newtype FirstName = FirstName String deriving (Eq, Show)
newtype SecondName = SecondName String deriving (Eq, Show)
newtype LastName = LastName String deriving (Eq, Show)

data User = User { 
  userId :: Int,
  userFirstName :: FirstName,
  userSecondName :: SecondName,
  userLastName :: LastName
} deriving (Eq, Show)