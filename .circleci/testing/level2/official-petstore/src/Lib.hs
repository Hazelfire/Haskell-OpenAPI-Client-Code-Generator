module Lib where

import Data.ByteString.Char8
import Network.HTTP.Client
import OpenAPI
import OpenAPI.Common

runListPets :: MonadHTTP m => m (Either HttpException (Response ListPetsResponse))
runListPets = listPets defaultConfiguration Nothing

runCreatePets :: MonadHTTP m => m (Either HttpException (Response CreatePetsResponse))
runCreatePets = createPets defaultConfiguration

runShowPetById :: MonadHTTP m => String -> m (Either HttpException (Response ShowPetByIdResponse))
runShowPetById = showPetById defaultConfiguration