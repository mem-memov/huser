module User(User(..)) where

newtype FirstName = FirstName String deriving Eq
newtype SecondName = SecondName String deriving Eq
newtype LastName = LastName String deriving Eq

data User = User { userId :: Int
    , userFirstName :: FirstName
    , userSecondName :: SecondName
    , userLastName :: LastName
} deriving Eq