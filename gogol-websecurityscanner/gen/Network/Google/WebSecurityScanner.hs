{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.WebSecurityScanner
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Scans your Compute and App Engine apps for common web vulnerabilities.
--
-- /See:/ <https://cloud.google.com/security-scanner/ Web Security Scanner API Reference>
module Network.Google.WebSecurityScanner
    (
    -- * Service Configuration
      webSecurityScannerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , WebSecurityScannerAPI

    -- * Resources

    -- ** websecurityscanner.projects.scanConfigs.create
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Create

    -- ** websecurityscanner.projects.scanConfigs.delete
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Delete

    -- ** websecurityscanner.projects.scanConfigs.get
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Get

    -- ** websecurityscanner.projects.scanConfigs.list
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.List

    -- ** websecurityscanner.projects.scanConfigs.patch
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Patch

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.crawledUrls.list
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.CrawledURLs.List

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.findingTypeStats.list
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.FindingTypeStats.List

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.findings.get
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.Get

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.findings.list
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.List

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.get
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Get

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.list
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.List

    -- ** websecurityscanner.projects.scanConfigs.scanRuns.stop
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Stop

    -- ** websecurityscanner.projects.scanConfigs.start
    , module Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Start

    -- * Types

    -- ** FindingTypeStats
    , FindingTypeStats
    , findingTypeStats
    , ftsFindingCount
    , ftsFindingType

    -- ** ListFindingsResponse
    , ListFindingsResponse
    , listFindingsResponse
    , lfrNextPageToken
    , lfrFindings

    -- ** StopScanRunRequest
    , StopScanRunRequest
    , stopScanRunRequest

    -- ** Schedule
    , Schedule
    , schedule
    , sScheduleTime
    , sIntervalDurationDays

    -- ** Finding
    , Finding
    , finding
    , fFinalURL
    , fHTTPMethod
    , fReProductionURL
    , fTrackingId
    , fBody
    , fXss
    , fVulnerableParameters
    , fOutdatedLibrary
    , fFuzzedURL
    , fName
    , fFindingType
    , fVulnerableHeaders
    , fViolatingResource
    , fFrameURL
    , fDescription

    -- ** Empty
    , Empty
    , empty

    -- ** ListFindingTypeStatsResponse
    , ListFindingTypeStatsResponse
    , listFindingTypeStatsResponse
    , lftsrFindingTypeStats

    -- ** GoogleAccount
    , GoogleAccount
    , googleAccount
    , gaUsername
    , gaPassword

    -- ** Xss
    , Xss
    , xss
    , xStackTraces
    , xErrorMessage

    -- ** Authentication
    , Authentication
    , authentication
    , aGoogleAccount
    , aCustomAccount

    -- ** FindingFindingType
    , FindingFindingType (..)

    -- ** ListCrawledURLsResponse
    , ListCrawledURLsResponse
    , listCrawledURLsResponse
    , lcurNextPageToken
    , lcurCrawledURLs

    -- ** VulnerableParameters
    , VulnerableParameters
    , vulnerableParameters
    , vpParameterNames

    -- ** CrawledURL
    , CrawledURL
    , crawledURL
    , cuHTTPMethod
    , cuBody
    , cuURL

    -- ** OutdatedLibrary
    , OutdatedLibrary
    , outdatedLibrary
    , olLearnMoreURLs
    , olVersion
    , olLibraryName

    -- ** ListScanRunsResponse
    , ListScanRunsResponse
    , listScanRunsResponse
    , lsrrNextPageToken
    , lsrrScanRuns

    -- ** Header
    , Header
    , header
    , hValue
    , hName

    -- ** ListScanConfigsResponse
    , ListScanConfigsResponse
    , listScanConfigsResponse
    , lscrNextPageToken
    , lscrScanConfigs

    -- ** StartScanRunRequest
    , StartScanRunRequest
    , startScanRunRequest

    -- ** Xgafv
    , Xgafv (..)

    -- ** CustomAccount
    , CustomAccount
    , customAccount
    , caLoginURL
    , caUsername
    , caPassword

    -- ** ScanConfigUserAgent
    , ScanConfigUserAgent (..)

    -- ** ScanConfig
    , ScanConfig
    , scanConfig
    , scSchedule
    , scTargetPlatforms
    , scStartingURLs
    , scAuthentication
    , scMaxQps
    , scName
    , scDisplayName
    , scUserAgent
    , scBlackListPatterns

    -- ** ScanRunResultState
    , ScanRunResultState (..)

    -- ** VulnerableHeaders
    , VulnerableHeaders
    , vulnerableHeaders
    , vhMissingHeaders
    , vhHeaders

    -- ** ViolatingResource
    , ViolatingResource
    , violatingResource
    , vrContentType
    , vrResourceURL

    -- ** ScanRunExecutionState
    , ScanRunExecutionState (..)

    -- ** ScanRun
    , ScanRun
    , scanRun
    , srStartTime
    , srHasVulnerabilities
    , srResultState
    , srProgressPercent
    , srURLsCrawledCount
    , srURLsTestedCount
    , srName
    , srEndTime
    , srExecutionState

    -- ** FindingTypeStatsFindingType
    , FindingTypeStatsFindingType (..)
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Create
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Delete
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Get
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.List
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Patch
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.CrawledURLs.List
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.Get
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.List
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.FindingTypeStats.List
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Get
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.List
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Stop
import           Network.Google.Resource.WebSecurityScanner.Projects.ScanConfigs.Start
import           Network.Google.WebSecurityScanner.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Web Security Scanner API service.
type WebSecurityScannerAPI =
     ProjectsScanConfigsScanRunsFindingTypeStatsListResource
       :<|>
       ProjectsScanConfigsScanRunsCrawledURLsListResource
       :<|> ProjectsScanConfigsScanRunsFindingsListResource
       :<|> ProjectsScanConfigsScanRunsFindingsGetResource
       :<|> ProjectsScanConfigsScanRunsListResource
       :<|> ProjectsScanConfigsScanRunsGetResource
       :<|> ProjectsScanConfigsScanRunsStopResource
       :<|> ProjectsScanConfigsListResource
       :<|> ProjectsScanConfigsStartResource
       :<|> ProjectsScanConfigsPatchResource
       :<|> ProjectsScanConfigsGetResource
       :<|> ProjectsScanConfigsCreateResource
       :<|> ProjectsScanConfigsDeleteResource
