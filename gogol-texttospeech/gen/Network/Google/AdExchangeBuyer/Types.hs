{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExchangeBuyer.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExchangeBuyer.Types
    (
    -- * Service Configuration
      adExchangeBuyerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * AudioConfig
    , AudioConfig
    , audioConfig
    , acVolumeGainDB
    , acSampleRateHertz
    , acAudioEncoding
    , acSpeakingRate
    , acPitch

    -- * VoiceSelectionParams
    , VoiceSelectionParams
    , voiceSelectionParams
    , vspLanguageCode
    , vspSsmlGender
    , vspName

    -- * SynthesizeSpeechRequest
    , SynthesizeSpeechRequest
    , synthesizeSpeechRequest
    , ssrAudioConfig
    , ssrInput
    , ssrVoice

    -- * ListVoicesResponse
    , ListVoicesResponse
    , listVoicesResponse
    , lvrVoices

    -- * VoiceSelectionParamsSsmlGender
    , VoiceSelectionParamsSsmlGender (..)

    -- * SynthesisInput
    , SynthesisInput
    , synthesisInput
    , siText
    , siSsml

    -- * Xgafv
    , Xgafv (..)

    -- * VoiceSsmlGender
    , VoiceSsmlGender (..)

    -- * SynthesizeSpeechResponse
    , SynthesizeSpeechResponse
    , synthesizeSpeechResponse
    , ssrAudioContent

    -- * Voice
    , Voice
    , voice
    , vLanguageCodes
    , vNATuralSampleRateHertz
    , vSsmlGender
    , vName

    -- * AudioConfigAudioEncoding
    , AudioConfigAudioEncoding (..)
    ) where

import           Network.Google.AdExchangeBuyer.Types.Product
import           Network.Google.AdExchangeBuyer.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Text-to-Speech API. This contains the host and root path used as a starting point for constructing service requests.
adExchangeBuyerService :: ServiceConfig
adExchangeBuyerService
  = defaultService (ServiceId "texttospeech:v1")
      "texttospeech.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
