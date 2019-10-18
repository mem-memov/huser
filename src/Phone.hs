module Phone where

newtype CountryCode = CountryCode Int deriving Eq

data Phone = Phone { phoneCountryCode :: CountryCode
    , phoneNumber :: Int
}