module Phone where

newtype CountryCode = CountryCode Int deriving (Eq, Show)

data Phone = Phone { phoneCountryCode :: CountryCode
    , phoneNumber :: Int
} deriving (Show)