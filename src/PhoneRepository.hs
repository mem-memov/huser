module PhoneRepository where

import Phone
import Repositories

findPhone :: CountryCode -> Int -> Repositories -> (Maybe Phone, Repositories)
findPhone contryCode number repositories = let
    phones = filter (\phone -> (phoneCountryCode phone) == contryCode && (phoneNumber phone) == number) (phoneRepository repositories)
    in case phones of
        [foundPhone] -> (Just foundPhone, repositories)
        _ -> (Nothing, repositories)