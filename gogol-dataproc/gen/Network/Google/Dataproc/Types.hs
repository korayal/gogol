{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Dataproc.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Dataproc.Types
    (
    -- * Service Configuration
      dataprocService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * JobReference
    , JobReference
    , jobReference
    , jrJobId
    , jrProjectId

    -- * JobStatusState
    , JobStatusState (..)

    -- * WorkflowNodeState
    , WorkflowNodeState (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * PySparkJobProperties
    , PySparkJobProperties
    , pySparkJobProperties
    , psjpAddtional

    -- * DiagnoseClusterResults
    , DiagnoseClusterResults
    , diagnoseClusterResults
    , dcrOutputURI

    -- * InstanceGroupConfig
    , InstanceGroupConfig
    , instanceGroupConfig
    , igcNumInstances
    , igcDiskConfig
    , igcIsPreemptible
    , igcImageURI
    , igcAccelerators
    , igcInstanceNames
    , igcManagedGroupConfig
    , igcMachineTypeURI

    -- * SparkJob
    , SparkJob
    , sparkJob
    , sjArgs
    , sjMainJarFileURI
    , sjJarFileURIs
    , sjFileURIs
    , sjArchiveURIs
    , sjMainClass
    , sjLoggingConfig
    , sjProperties

    -- * SoftwareConfigProperties
    , SoftwareConfigProperties
    , softwareConfigProperties
    , scpAddtional

    -- * WorkflowGraph
    , WorkflowGraph
    , workflowGraph
    , wgNodes

    -- * ClusterOperation
    , ClusterOperation
    , clusterOperation
    , coDone
    , coError
    , coOperationId

    -- * ClusterSelector
    , ClusterSelector
    , clusterSelector
    , csZone
    , csClusterLabels

    -- * JobScheduling
    , JobScheduling
    , jobScheduling
    , jsMaxFailuresPerHour

    -- * DiskConfig
    , DiskConfig
    , diskConfig
    , dcNumLocalSsds
    , dcBootDiskType
    , dcBootDiskSizeGb

    -- * ClusterOperationMetadataLabels
    , ClusterOperationMetadataLabels
    , clusterOperationMetadataLabels
    , comlAddtional

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * HiveJobScriptVariables
    , HiveJobScriptVariables
    , hiveJobScriptVariables
    , hjsvAddtional

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- * WorkflowTemplatePlacement
    , WorkflowTemplatePlacement
    , workflowTemplatePlacement
    , wtpClusterSelector
    , wtpManagedCluster

    -- * Cluster
    , Cluster
    , cluster
    , cStatus
    , cMetrics
    , cClusterUuid
    , cConfig
    , cClusterName
    , cLabels
    , cProjectId
    , cStatusHistory

    -- * ManagedClusterLabels
    , ManagedClusterLabels
    , managedClusterLabels
    , mclAddtional

    -- * ParameterValidation
    , ParameterValidation
    , parameterValidation
    , pvRegex
    , pvValues

    -- * JobLabels
    , JobLabels
    , jobLabels
    , jlAddtional

    -- * SubmitJobRequest
    , SubmitJobRequest
    , submitJobRequest
    , sjrRequestId
    , sjrJob

    -- * ClusterStatusSubState
    , ClusterStatusSubState (..)

    -- * ClusterMetrics
    , ClusterMetrics
    , clusterMetrics
    , cmYarnMetrics
    , cmHdfsMetrics

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * HiveJob
    , HiveJob
    , hiveJob
    , hjQueryFileURI
    , hjJarFileURIs
    , hjScriptVariables
    , hjQueryList
    , hjContinueOnFailure
    , hjProperties

    -- * OrderedJobLabels
    , OrderedJobLabels
    , orderedJobLabels
    , ojlAddtional

    -- * ClusterSelectorClusterLabels
    , ClusterSelectorClusterLabels
    , clusterSelectorClusterLabels
    , csclAddtional

    -- * SparkSQLJobScriptVariables
    , SparkSQLJobScriptVariables
    , sparkSQLJobScriptVariables
    , ssqljsvAddtional

    -- * PigJobProperties
    , PigJobProperties
    , pigJobProperties
    , pjpAddtional

    -- * ClusterConfig
    , ClusterConfig
    , clusterConfig
    , ccWorkerConfig
    , ccInitializationActions
    , ccMasterConfig
    , ccGceClusterConfig
    , ccConfigBucket
    , ccEncryptionConfig
    , ccSoftwareConfig
    , ccSecondaryWorkerConfig

    -- * InstantiateWorkflowTemplateRequest
    , InstantiateWorkflowTemplateRequest
    , instantiateWorkflowTemplateRequest
    , iwtrRequestId
    , iwtrVersion
    , iwtrParameters

    -- * HadoopJobProperties
    , HadoopJobProperties
    , hadoopJobProperties
    , hjpAddtional

    -- * WorkflowTemplate
    , WorkflowTemplate
    , workflowTemplate
    , wtJobs
    , wtUpdateTime
    , wtName
    , wtVersion
    , wtParameters
    , wtId
    , wtLabels
    , wtCreateTime
    , wtPlacement

    -- * ClusterOperationStatus
    , ClusterOperationStatus
    , clusterOperationStatus
    , cosState
    , cosInnerState
    , cosStateStartTime
    , cosDetails

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * SparkSQLJobProperties
    , SparkSQLJobProperties
    , sparkSQLJobProperties
    , ssqljpAddtional

    -- * WorkflowTemplateLabels
    , WorkflowTemplateLabels
    , workflowTemplateLabels
    , wtlAddtional

    -- * NodeInitializationAction
    , NodeInitializationAction
    , nodeInitializationAction
    , niaExecutionTimeout
    , niaExecutableFile

    -- * ClusterMetricsYarnMetrics
    , ClusterMetricsYarnMetrics
    , clusterMetricsYarnMetrics
    , cmymAddtional

    -- * RegexValidation
    , RegexValidation
    , regexValidation
    , rvRegexes

    -- * JobPlacement
    , JobPlacement
    , jobPlacement
    , jpClusterUuid
    , jpClusterName

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- * TemplateParameter
    , TemplateParameter
    , templateParameter
    , tpName
    , tpValidation
    , tpDescription
    , tpFields

    -- * GceClusterConfig
    , GceClusterConfig
    , gceClusterConfig
    , gccSubnetworkURI
    , gccInternalIPOnly
    , gccNetworkURI
    , gccZoneURI
    , gccServiceAccount
    , gccMetadata
    , gccServiceAccountScopes
    , gccTags

    -- * WorkflowMetadataState
    , WorkflowMetadataState (..)

    -- * YarnApplicationState
    , YarnApplicationState (..)

    -- * ClusterStatusState
    , ClusterStatusState (..)

    -- * ListWorkflowTemplatesResponse
    , ListWorkflowTemplatesResponse
    , listWorkflowTemplatesResponse
    , lwtrNextPageToken
    , lwtrTemplates

    -- * GceClusterConfigMetadata
    , GceClusterConfigMetadata
    , gceClusterConfigMetadata
    , gccmAddtional

    -- * ClusterOperationStatusState
    , ClusterOperationStatusState (..)

    -- * HiveJobProperties
    , HiveJobProperties
    , hiveJobProperties
    , hAddtional

    -- * WorkflowMetadataParameters
    , WorkflowMetadataParameters
    , workflowMetadataParameters
    , wmpAddtional

    -- * ManagedCluster
    , ManagedCluster
    , managedCluster
    , mcConfig
    , mcClusterName
    , mcLabels

    -- * ClusterLabels
    , ClusterLabels
    , clusterLabels
    , clAddtional

    -- * Job
    , Job
    , job
    , jSparkJob
    , jStatus
    , jDriverControlFilesURI
    , jHiveJob
    , jReference
    , jSparkSQLJob
    , jHadoopJob
    , jJobUuid
    , jYarnApplications
    , jLabels
    , jPysparkJob
    , jDriverOutputResourceURI
    , jScheduling
    , jStatusHistory
    , jPlacement
    , jPigJob

    -- * DiagnoseClusterRequest
    , DiagnoseClusterRequest
    , diagnoseClusterRequest

    -- * HadoopJob
    , HadoopJob
    , hadoopJob
    , hArgs
    , hMainJarFileURI
    , hJarFileURIs
    , hFileURIs
    , hArchiveURIs
    , hMainClass
    , hLoggingConfig
    , hProperties

    -- * Xgafv
    , Xgafv (..)

    -- * InstantiateWorkflowTemplateRequestParameters
    , InstantiateWorkflowTemplateRequestParameters
    , instantiateWorkflowTemplateRequestParameters
    , iwtrpAddtional

    -- * ClusterOperationMetadata
    , ClusterOperationMetadata
    , clusterOperationMetadata
    , comStatus
    , comClusterUuid
    , comWarnings
    , comClusterName
    , comLabels
    , comOperationType
    , comStatusHistory
    , comDescription

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * SparkSQLJob
    , SparkSQLJob
    , sparkSQLJob
    , ssqljQueryFileURI
    , ssqljJarFileURIs
    , ssqljScriptVariables
    , ssqljQueryList
    , ssqljLoggingConfig
    , ssqljProperties

    -- * SoftwareConfig
    , SoftwareConfig
    , softwareConfig
    , scImageVersion
    , scProperties

    -- * ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- * AcceleratorConfig
    , AcceleratorConfig
    , acceleratorConfig
    , acAcceleratorCount
    , acAcceleratorTypeURI

    -- * SparkJobProperties
    , SparkJobProperties
    , sparkJobProperties
    , sjpAddtional

    -- * EncryptionConfig
    , EncryptionConfig
    , encryptionConfig
    , ecGcePdKmsKeyName

    -- * PySparkJob
    , PySparkJob
    , pySparkJob
    , psjPythonFileURIs
    , psjMainPythonFileURI
    , psjArgs
    , psjJarFileURIs
    , psjFileURIs
    , psjArchiveURIs
    , psjLoggingConfig
    , psjProperties

    -- * ManagedGroupConfig
    , ManagedGroupConfig
    , managedGroupConfig
    , mgcInstanceTemplateName
    , mgcInstanceGroupManagerName

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrNextPageToken
    , lcrClusters

    -- * ValueValidation
    , ValueValidation
    , valueValidation
    , vvValues

    -- * JobStatusSubState
    , JobStatusSubState (..)

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * OrderedJob
    , OrderedJob
    , orderedJob
    , ojSparkJob
    , ojStepId
    , ojPrerequisiteStepIds
    , ojHiveJob
    , ojSparkSQLJob
    , ojHadoopJob
    , ojLabels
    , ojPysparkJob
    , ojScheduling
    , ojPigJob

    -- * CancelJobRequest
    , CancelJobRequest
    , cancelJobRequest

    -- * QueryList
    , QueryList
    , queryList
    , qlQueries

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsSubState
    , jsStateStartTime
    , jsDetails

    -- * PigJobScriptVariables
    , PigJobScriptVariables
    , pigJobScriptVariables
    , pjsvAddtional

    -- * ClusterMetricsHdfsMetrics
    , ClusterMetricsHdfsMetrics
    , clusterMetricsHdfsMetrics
    , cmhmAddtional

    -- * WorkflowNode
    , WorkflowNode
    , workflowNode
    , wnState
    , wnStepId
    , wnJobId
    , wnPrerequisiteStepIds
    , wnError

    -- * WorkflowMetadata
    , WorkflowMetadata
    , workflowMetadata
    , wmGraph
    , wmState
    , wmClusterUuid
    , wmStartTime
    , wmDeleteCluster
    , wmCreateCluster
    , wmVersion
    , wmEndTime
    , wmParameters
    , wmClusterName
    , wmTemplate

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * LoggingConfigDriverLogLevels
    , LoggingConfigDriverLogLevels
    , loggingConfigDriverLogLevels
    , lcdllAddtional

    -- * ClusterStatus
    , ClusterStatus
    , clusterStatus
    , csState
    , csSubState
    , csStateStartTime
    , csDetail

    -- * YarnApplication
    , YarnApplication
    , yarnApplication
    , yaTrackingURL
    , yaState
    , yaProgress
    , yaName

    -- * PigJob
    , PigJob
    , pigJob
    , pjQueryFileURI
    , pjJarFileURIs
    , pjScriptVariables
    , pjQueryList
    , pjContinueOnFailure
    , pjLoggingConfig
    , pjProperties

    -- * LoggingConfig
    , LoggingConfig
    , loggingConfig
    , lcDriverLogLevels

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.Dataproc.Types.Product
import           Network.Google.Dataproc.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Dataproc API. This contains the host and root path used as a starting point for constructing service requests.
dataprocService :: ServiceConfig
dataprocService
  = defaultService (ServiceId "dataproc:v1")
      "dataproc.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
