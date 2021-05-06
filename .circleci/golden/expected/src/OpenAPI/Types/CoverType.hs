-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CoverType
module OpenAPI.Types.CoverType where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified OpenAPI.Common
import OpenAPI.TypeAlias
import {-# SOURCE #-} OpenAPI.Types.Mischling
import {-# SOURCE #-} OpenAPI.Types.PetByAge

-- | Defines the object schema located at @components.schemas.CoverType@ in the specification.
-- 
-- 
data CoverType = CoverType {
  -- | cover
  coverTypeCover :: (GHC.Maybe.Maybe CoverTypeCoverVariants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CoverType
    where toJSON obj = Data.Aeson.Types.Internal.object ("cover" Data.Aeson.Types.ToJSON..= coverTypeCover obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("cover" Data.Aeson.Types.ToJSON..= coverTypeCover obj)
instance Data.Aeson.Types.FromJSON.FromJSON CoverType
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "CoverType" (\obj -> GHC.Base.pure CoverType GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cover"))
-- | Create a new 'CoverType' with all required fields.
mkCoverType :: CoverType
mkCoverType = CoverType{coverTypeCover = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.CoverType.properties.cover.oneOf@ in the specification.
-- 
-- 
data CoverTypeCoverVariants =
   CoverTypeCoverPetByAge PetByAge
  | CoverTypeCoverMischling Mischling
  | CoverTypeCoverTest Test
  | CoverTypeCoverTest2 Test2
  | CoverTypeCoverTest3 Test3
  | CoverTypeCoverTest4 Test4
  | CoverTypeCoverTest5 Test5
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CoverTypeCoverVariants
    where toJSON (CoverTypeCoverPetByAge a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (CoverTypeCoverMischling a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (CoverTypeCoverTest a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (CoverTypeCoverTest2 a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (CoverTypeCoverTest3 a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (CoverTypeCoverTest4 a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (CoverTypeCoverTest5 a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON CoverTypeCoverVariants
    where parseJSON val = case (CoverTypeCoverPetByAge Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CoverTypeCoverMischling Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CoverTypeCoverTest Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CoverTypeCoverTest2 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CoverTypeCoverTest3 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CoverTypeCoverTest4 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CoverTypeCoverTest5 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")))))) of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
