{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.TPU.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.TPU.Types
    (
    -- * Service Configuration
      tPUService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * AcceleratorType
    , AcceleratorType
    , acceleratorType
    , atName
    , atType

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * NodeState
    , NodeState (..)

    -- * ListAcceleratorTypesResponse
    , ListAcceleratorTypesResponse
    , listAcceleratorTypesResponse
    , latrAcceleratorTypes
    , latrNextPageToken

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * NetworkEndpoint
    , NetworkEndpoint
    , networkEndpoint
    , neIPAddress
    , nePort

    -- * Empty
    , Empty
    , empty

    -- * Node
    , Node
    , node
    , nAcceleratorType
    , nIPAddress
    , nState
    , nNetwork
    , nHealth
    , nServiceAccount
    , nName
    , nSchedulingConfig
    , nHealthDescription
    , nCIdRBlock
    , nLabels
    , nNetworkEndpoints
    , nDescription
    , nCreateTime
    , nTensorflowVersion
    , nPort

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * StopNodeRequest
    , StopNodeRequest
    , stopNodeRequest

    -- * ReimageNodeRequest
    , ReimageNodeRequest
    , reimageNodeRequest
    , rnrTensorflowVersion

    -- * NodeHealth
    , NodeHealth (..)

    -- * ListNodesResponse
    , ListNodesResponse
    , listNodesResponse
    , lnrNextPageToken
    , lnrUnreachable
    , lnrNodes

    -- * Xgafv
    , Xgafv (..)

    -- * SchedulingConfig
    , SchedulingConfig
    , schedulingConfig
    , scPreemptible

    -- * NodeLabels
    , NodeLabels
    , nodeLabels
    , nlAddtional

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAPIVersion
    , omEndTime
    , omStatusDetail
    , omVerb
    , omCancelRequested
    , omTarget
    , omCreateTime

    -- * ListTensorFlowVersionsResponse
    , ListTensorFlowVersionsResponse
    , listTensorFlowVersionsResponse
    , ltfvrNextPageToken
    , ltfvrTensorflowVersions

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * TensorFlowVersion
    , TensorFlowVersion
    , tensorFlowVersion
    , tfvName
    , tfvVersion

    -- * StartNodeRequest
    , StartNodeRequest
    , startNodeRequest
    ) where

import           Network.Google.Prelude
import           Network.Google.TPU.Types.Product
import           Network.Google.TPU.Types.Sum

-- | Default request referring to version 'v1' of the Cloud TPU API. This contains the host and root path used as a starting point for constructing service requests.
tPUService :: ServiceConfig
tPUService
  = defaultService (ServiceId "tpu:v1")
      "tpu.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
