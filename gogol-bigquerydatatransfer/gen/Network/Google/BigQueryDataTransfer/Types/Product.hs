{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigQueryDataTransfer.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigQueryDataTransfer.Types.Product where

import           Network.Google.BigQueryDataTransfer.Types.Sum
import           Network.Google.Prelude

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` that can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting. -
-- Batch operations. If a client uses batch request and batch response, the
-- \`Status\` message should be used directly inside batch response, one
-- for each error sub-response. - Asynchronous operations. If an API call
-- embeds asynchronous operation results in its response, the status of
-- those operations should be represented directly using the \`Status\`
-- message. - Logging. If some API errors are stored in logs, the message
-- \`Status\` could be used directly after any stripping needed for
-- security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status'
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status =
    Status'
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There is a common set
-- of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status' <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'listLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse'
    { _llrNextPageToken :: !(Maybe Text)
    , _llrLocations     :: !(Maybe [Location])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llrNextPageToken'
--
-- * 'llrLocations'
listLocationsResponse
    :: ListLocationsResponse
listLocationsResponse =
    ListLocationsResponse'
    { _llrNextPageToken = Nothing
    , _llrLocations = Nothing
    }

-- | The standard List next-page token.
llrNextPageToken :: Lens' ListLocationsResponse (Maybe Text)
llrNextPageToken
  = lens _llrNextPageToken
      (\ s a -> s{_llrNextPageToken = a})

-- | A list of locations that matches the specified filter in the request.
llrLocations :: Lens' ListLocationsResponse [Location]
llrLocations
  = lens _llrLocations (\ s a -> s{_llrLocations = a})
      . _Default
      . _Coerce

instance FromJSON ListLocationsResponse where
        parseJSON
          = withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "locations" .!= mempty))

instance ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _llrNextPageToken,
                  ("locations" .=) <$> _llrLocations])

-- | Represents a data transfer run.
--
-- /See:/ 'transferRun' smart constructor.
data TransferRun = TransferRun'
    { _trRunTime              :: !(Maybe DateTime')
    , _trErrorStatus          :: !(Maybe Status)
    , _trState                :: !(Maybe TransferRunState)
    , _trSchedule             :: !(Maybe Text)
    , _trStartTime            :: !(Maybe DateTime')
    , _trScheduleTime         :: !(Maybe DateTime')
    , _trDataSourceId         :: !(Maybe Text)
    , _trParams               :: !(Maybe TransferRunParams)
    , _trUserId               :: !(Maybe (Textual Int64))
    , _trUpdateTime           :: !(Maybe DateTime')
    , _trName                 :: !(Maybe Text)
    , _trEndTime              :: !(Maybe DateTime')
    , _trDestinationDataSetId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferRun' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trRunTime'
--
-- * 'trErrorStatus'
--
-- * 'trState'
--
-- * 'trSchedule'
--
-- * 'trStartTime'
--
-- * 'trScheduleTime'
--
-- * 'trDataSourceId'
--
-- * 'trParams'
--
-- * 'trUserId'
--
-- * 'trUpdateTime'
--
-- * 'trName'
--
-- * 'trEndTime'
--
-- * 'trDestinationDataSetId'
transferRun
    :: TransferRun
transferRun =
    TransferRun'
    { _trRunTime = Nothing
    , _trErrorStatus = Nothing
    , _trState = Nothing
    , _trSchedule = Nothing
    , _trStartTime = Nothing
    , _trScheduleTime = Nothing
    , _trDataSourceId = Nothing
    , _trParams = Nothing
    , _trUserId = Nothing
    , _trUpdateTime = Nothing
    , _trName = Nothing
    , _trEndTime = Nothing
    , _trDestinationDataSetId = Nothing
    }

-- | For batch transfer runs, specifies the date and time that data should be
-- ingested.
trRunTime :: Lens' TransferRun (Maybe UTCTime)
trRunTime
  = lens _trRunTime (\ s a -> s{_trRunTime = a}) .
      mapping _DateTime

-- | Status of the transfer run.
trErrorStatus :: Lens' TransferRun (Maybe Status)
trErrorStatus
  = lens _trErrorStatus
      (\ s a -> s{_trErrorStatus = a})

-- | Data transfer run state. Ignored for input requests.
trState :: Lens' TransferRun (Maybe TransferRunState)
trState = lens _trState (\ s a -> s{_trState = a})

-- | Output only. Describes the schedule of this transfer run if it was
-- created as part of a regular schedule. For batch transfer runs that are
-- scheduled manually, this is empty. NOTE: the system might choose to
-- delay the schedule depending on the current load, so \`schedule_time\`
-- doesn\'t always match this.
trSchedule :: Lens' TransferRun (Maybe Text)
trSchedule
  = lens _trSchedule (\ s a -> s{_trSchedule = a})

-- | Output only. Time when transfer run was started. Parameter ignored by
-- server for input requests.
trStartTime :: Lens' TransferRun (Maybe UTCTime)
trStartTime
  = lens _trStartTime (\ s a -> s{_trStartTime = a}) .
      mapping _DateTime

-- | Minimum time after which a transfer run can be started.
trScheduleTime :: Lens' TransferRun (Maybe UTCTime)
trScheduleTime
  = lens _trScheduleTime
      (\ s a -> s{_trScheduleTime = a})
      . mapping _DateTime

-- | Output only. Data source id.
trDataSourceId :: Lens' TransferRun (Maybe Text)
trDataSourceId
  = lens _trDataSourceId
      (\ s a -> s{_trDataSourceId = a})

-- | Output only. Data transfer specific parameters.
trParams :: Lens' TransferRun (Maybe TransferRunParams)
trParams = lens _trParams (\ s a -> s{_trParams = a})

-- | Deprecated. Unique ID of the user on whose behalf transfer is done.
trUserId :: Lens' TransferRun (Maybe Int64)
trUserId
  = lens _trUserId (\ s a -> s{_trUserId = a}) .
      mapping _Coerce

-- | Output only. Last time the data transfer run state was updated.
trUpdateTime :: Lens' TransferRun (Maybe UTCTime)
trUpdateTime
  = lens _trUpdateTime (\ s a -> s{_trUpdateTime = a})
      . mapping _DateTime

-- | The resource name of the transfer run. Transfer run names have the form
-- \`projects\/{project_id}\/locations\/{location}\/transferConfigs\/{config_id}\/runs\/{run_id}\`.
-- The name is ignored when creating a transfer run.
trName :: Lens' TransferRun (Maybe Text)
trName = lens _trName (\ s a -> s{_trName = a})

-- | Output only. Time when transfer run ended. Parameter ignored by server
-- for input requests.
trEndTime :: Lens' TransferRun (Maybe UTCTime)
trEndTime
  = lens _trEndTime (\ s a -> s{_trEndTime = a}) .
      mapping _DateTime

-- | Output only. The BigQuery target dataset id.
trDestinationDataSetId :: Lens' TransferRun (Maybe Text)
trDestinationDataSetId
  = lens _trDestinationDataSetId
      (\ s a -> s{_trDestinationDataSetId = a})

instance FromJSON TransferRun where
        parseJSON
          = withObject "TransferRun"
              (\ o ->
                 TransferRun' <$>
                   (o .:? "runTime") <*> (o .:? "errorStatus") <*>
                     (o .:? "state")
                     <*> (o .:? "schedule")
                     <*> (o .:? "startTime")
                     <*> (o .:? "scheduleTime")
                     <*> (o .:? "dataSourceId")
                     <*> (o .:? "params")
                     <*> (o .:? "userId")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "endTime")
                     <*> (o .:? "destinationDatasetId"))

instance ToJSON TransferRun where
        toJSON TransferRun'{..}
          = object
              (catMaybes
                 [("runTime" .=) <$> _trRunTime,
                  ("errorStatus" .=) <$> _trErrorStatus,
                  ("state" .=) <$> _trState,
                  ("schedule" .=) <$> _trSchedule,
                  ("startTime" .=) <$> _trStartTime,
                  ("scheduleTime" .=) <$> _trScheduleTime,
                  ("dataSourceId" .=) <$> _trDataSourceId,
                  ("params" .=) <$> _trParams,
                  ("userId" .=) <$> _trUserId,
                  ("updateTime" .=) <$> _trUpdateTime,
                  ("name" .=) <$> _trName,
                  ("endTime" .=) <$> _trEndTime,
                  ("destinationDatasetId" .=) <$>
                    _trDestinationDataSetId])

-- | A request to determine whether the user has valid credentials. This
-- method is used to limit the number of OAuth popups in the user
-- interface. The user id is inferred from the API call context. If the
-- data source has the Google+ authorization type, this method returns
-- false, as it cannot be determined whether the credentials are already
-- valid merely based on the user id.
--
-- /See:/ 'checkValidCredsRequest' smart constructor.
data CheckValidCredsRequest =
    CheckValidCredsRequest'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CheckValidCredsRequest' with the minimum fields required to make a request.
--
checkValidCredsRequest
    :: CheckValidCredsRequest
checkValidCredsRequest = CheckValidCredsRequest'

instance FromJSON CheckValidCredsRequest where
        parseJSON
          = withObject "CheckValidCredsRequest"
              (\ o -> pure CheckValidCredsRequest')

instance ToJSON CheckValidCredsRequest where
        toJSON = const emptyObject

-- | Data transfer specific parameters.
--
-- /See:/ 'transferConfigParams' smart constructor.
newtype TransferConfigParams = TransferConfigParams'
    { _tcpAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferConfigParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcpAddtional'
transferConfigParams
    :: HashMap Text JSONValue -- ^ 'tcpAddtional'
    -> TransferConfigParams
transferConfigParams pTcpAddtional_ =
    TransferConfigParams'
    { _tcpAddtional = _Coerce # pTcpAddtional_
    }

-- | Properties of the object.
tcpAddtional :: Lens' TransferConfigParams (HashMap Text JSONValue)
tcpAddtional
  = lens _tcpAddtional (\ s a -> s{_tcpAddtional = a})
      . _Coerce

instance FromJSON TransferConfigParams where
        parseJSON
          = withObject "TransferConfigParams"
              (\ o ->
                 TransferConfigParams' <$> (parseJSONObject o))

instance ToJSON TransferConfigParams where
        toJSON = toJSON . _tcpAddtional

-- | A request to schedule transfer runs for a time range.
--
-- /See:/ 'scheduleTransferRunsRequest' smart constructor.
data ScheduleTransferRunsRequest = ScheduleTransferRunsRequest'
    { _strrStartTime :: !(Maybe DateTime')
    , _strrEndTime   :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScheduleTransferRunsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'strrStartTime'
--
-- * 'strrEndTime'
scheduleTransferRunsRequest
    :: ScheduleTransferRunsRequest
scheduleTransferRunsRequest =
    ScheduleTransferRunsRequest'
    { _strrStartTime = Nothing
    , _strrEndTime = Nothing
    }

-- | Start time of the range of transfer runs. For example,
-- \`\"2017-05-25T00:00:00+00:00\"\`.
strrStartTime :: Lens' ScheduleTransferRunsRequest (Maybe UTCTime)
strrStartTime
  = lens _strrStartTime
      (\ s a -> s{_strrStartTime = a})
      . mapping _DateTime

-- | End time of the range of transfer runs. For example,
-- \`\"2017-05-30T00:00:00+00:00\"\`.
strrEndTime :: Lens' ScheduleTransferRunsRequest (Maybe UTCTime)
strrEndTime
  = lens _strrEndTime (\ s a -> s{_strrEndTime = a}) .
      mapping _DateTime

instance FromJSON ScheduleTransferRunsRequest where
        parseJSON
          = withObject "ScheduleTransferRunsRequest"
              (\ o ->
                 ScheduleTransferRunsRequest' <$>
                   (o .:? "startTime") <*> (o .:? "endTime"))

instance ToJSON ScheduleTransferRunsRequest where
        toJSON ScheduleTransferRunsRequest'{..}
          = object
              (catMaybes
                 [("startTime" .=) <$> _strrStartTime,
                  ("endTime" .=) <$> _strrEndTime])

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'location' smart constructor.
data Location = Location'
    { _lName        :: !(Maybe Text)
    , _lMetadata    :: !(Maybe LocationMetadata)
    , _lDisplayName :: !(Maybe Text)
    , _lLabels      :: !(Maybe LocationLabels)
    , _lLocationId  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lName'
--
-- * 'lMetadata'
--
-- * 'lDisplayName'
--
-- * 'lLabels'
--
-- * 'lLocationId'
location
    :: Location
location =
    Location'
    { _lName = Nothing
    , _lMetadata = Nothing
    , _lDisplayName = Nothing
    , _lLabels = Nothing
    , _lLocationId = Nothing
    }

-- | Resource name for the location, which may vary between implementations.
-- For example: \`\"projects\/example-project\/locations\/us-east1\"\`
lName :: Lens' Location (Maybe Text)
lName = lens _lName (\ s a -> s{_lName = a})

-- | Service-specific metadata. For example the available capacity at the
-- given location.
lMetadata :: Lens' Location (Maybe LocationMetadata)
lMetadata
  = lens _lMetadata (\ s a -> s{_lMetadata = a})

-- | The friendly name for this location, typically a nearby city name. For
-- example, \"Tokyo\".
lDisplayName :: Lens' Location (Maybe Text)
lDisplayName
  = lens _lDisplayName (\ s a -> s{_lDisplayName = a})

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
lLabels :: Lens' Location (Maybe LocationLabels)
lLabels = lens _lLabels (\ s a -> s{_lLabels = a})

-- | The canonical id for this location. For example: \`\"us-east1\"\`.
lLocationId :: Lens' Location (Maybe Text)
lLocationId
  = lens _lLocationId (\ s a -> s{_lLocationId = a})

instance FromJSON Location where
        parseJSON
          = withObject "Location"
              (\ o ->
                 Location' <$>
                   (o .:? "name") <*> (o .:? "metadata") <*>
                     (o .:? "displayName")
                     <*> (o .:? "labels")
                     <*> (o .:? "locationId"))

instance ToJSON Location where
        toJSON Location'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _lName,
                  ("metadata" .=) <$> _lMetadata,
                  ("displayName" .=) <$> _lDisplayName,
                  ("labels" .=) <$> _lLabels,
                  ("locationId" .=) <$> _lLocationId])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | The returned list transfer run messages.
--
-- /See:/ 'listTransferLogsResponse' smart constructor.
data ListTransferLogsResponse = ListTransferLogsResponse'
    { _ltlrNextPageToken    :: !(Maybe Text)
    , _ltlrTransferMessages :: !(Maybe [TransferMessage])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTransferLogsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltlrNextPageToken'
--
-- * 'ltlrTransferMessages'
listTransferLogsResponse
    :: ListTransferLogsResponse
listTransferLogsResponse =
    ListTransferLogsResponse'
    { _ltlrNextPageToken = Nothing
    , _ltlrTransferMessages = Nothing
    }

-- | Output only. The next-pagination token. For multiple-page list results,
-- this token can be used as the \`GetTransferRunLogRequest.page_token\` to
-- request the next page of list results.
ltlrNextPageToken :: Lens' ListTransferLogsResponse (Maybe Text)
ltlrNextPageToken
  = lens _ltlrNextPageToken
      (\ s a -> s{_ltlrNextPageToken = a})

-- | Output only. The stored pipeline transfer messages.
ltlrTransferMessages :: Lens' ListTransferLogsResponse [TransferMessage]
ltlrTransferMessages
  = lens _ltlrTransferMessages
      (\ s a -> s{_ltlrTransferMessages = a})
      . _Default
      . _Coerce

instance FromJSON ListTransferLogsResponse where
        parseJSON
          = withObject "ListTransferLogsResponse"
              (\ o ->
                 ListTransferLogsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "transferMessages" .!= mempty))

instance ToJSON ListTransferLogsResponse where
        toJSON ListTransferLogsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltlrNextPageToken,
                  ("transferMessages" .=) <$> _ltlrTransferMessages])

-- | A response indicating whether the credentials exist and are valid.
--
-- /See:/ 'checkValidCredsResponse' smart constructor.
newtype CheckValidCredsResponse = CheckValidCredsResponse'
    { _cvcrHasValidCreds :: Maybe Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CheckValidCredsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cvcrHasValidCreds'
checkValidCredsResponse
    :: CheckValidCredsResponse
checkValidCredsResponse =
    CheckValidCredsResponse'
    { _cvcrHasValidCreds = Nothing
    }

-- | If set to \`true\`, the credentials exist and are valid.
cvcrHasValidCreds :: Lens' CheckValidCredsResponse (Maybe Bool)
cvcrHasValidCreds
  = lens _cvcrHasValidCreds
      (\ s a -> s{_cvcrHasValidCreds = a})

instance FromJSON CheckValidCredsResponse where
        parseJSON
          = withObject "CheckValidCredsResponse"
              (\ o ->
                 CheckValidCredsResponse' <$> (o .:? "hasValidCreds"))

instance ToJSON CheckValidCredsResponse where
        toJSON CheckValidCredsResponse'{..}
          = object
              (catMaybes
                 [("hasValidCreds" .=) <$> _cvcrHasValidCreds])

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem'
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem'
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem' <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | Output only. Data transfer specific parameters.
--
-- /See:/ 'transferRunParams' smart constructor.
newtype TransferRunParams = TransferRunParams'
    { _trpAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferRunParams' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trpAddtional'
transferRunParams
    :: HashMap Text JSONValue -- ^ 'trpAddtional'
    -> TransferRunParams
transferRunParams pTrpAddtional_ =
    TransferRunParams'
    { _trpAddtional = _Coerce # pTrpAddtional_
    }

-- | Properties of the object.
trpAddtional :: Lens' TransferRunParams (HashMap Text JSONValue)
trpAddtional
  = lens _trpAddtional (\ s a -> s{_trpAddtional = a})
      . _Coerce

instance FromJSON TransferRunParams where
        parseJSON
          = withObject "TransferRunParams"
              (\ o -> TransferRunParams' <$> (parseJSONObject o))

instance ToJSON TransferRunParams where
        toJSON = toJSON . _trpAddtional

-- | Represents a data source parameter with validation rules, so that
-- parameters can be rendered in the UI. These parameters are given to us
-- by supported data sources, and include all needed information for
-- rendering and validation. Thus, whoever uses this api can decide to
-- generate either generic ui, or custom data source specific forms.
--
-- /See:/ 'dataSourceParameter' smart constructor.
data DataSourceParameter = DataSourceParameter'
    { _dspMaxValue              :: !(Maybe (Textual Double))
    , _dspParamId               :: !(Maybe Text)
    , _dspImmutable             :: !(Maybe Bool)
    , _dspRecurse               :: !(Maybe Bool)
    , _dspValidationDescription :: !(Maybe Text)
    , _dspRequired              :: !(Maybe Bool)
    , _dspDisplayName           :: !(Maybe Text)
    , _dspType                  :: !(Maybe DataSourceParameterType)
    , _dspAllowedValues         :: !(Maybe [Text])
    , _dspRepeated              :: !(Maybe Bool)
    , _dspDescription           :: !(Maybe Text)
    , _dspValidationRegex       :: !(Maybe Text)
    , _dspMinValue              :: !(Maybe (Textual Double))
    , _dspValidationHelpURL     :: !(Maybe Text)
    , _dspFields                :: !(Maybe [DataSourceParameter])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSourceParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dspMaxValue'
--
-- * 'dspParamId'
--
-- * 'dspImmutable'
--
-- * 'dspRecurse'
--
-- * 'dspValidationDescription'
--
-- * 'dspRequired'
--
-- * 'dspDisplayName'
--
-- * 'dspType'
--
-- * 'dspAllowedValues'
--
-- * 'dspRepeated'
--
-- * 'dspDescription'
--
-- * 'dspValidationRegex'
--
-- * 'dspMinValue'
--
-- * 'dspValidationHelpURL'
--
-- * 'dspFields'
dataSourceParameter
    :: DataSourceParameter
dataSourceParameter =
    DataSourceParameter'
    { _dspMaxValue = Nothing
    , _dspParamId = Nothing
    , _dspImmutable = Nothing
    , _dspRecurse = Nothing
    , _dspValidationDescription = Nothing
    , _dspRequired = Nothing
    , _dspDisplayName = Nothing
    , _dspType = Nothing
    , _dspAllowedValues = Nothing
    , _dspRepeated = Nothing
    , _dspDescription = Nothing
    , _dspValidationRegex = Nothing
    , _dspMinValue = Nothing
    , _dspValidationHelpURL = Nothing
    , _dspFields = Nothing
    }

-- | For integer and double values specifies maxminum allowed value.
dspMaxValue :: Lens' DataSourceParameter (Maybe Double)
dspMaxValue
  = lens _dspMaxValue (\ s a -> s{_dspMaxValue = a}) .
      mapping _Coerce

-- | Parameter identifier.
dspParamId :: Lens' DataSourceParameter (Maybe Text)
dspParamId
  = lens _dspParamId (\ s a -> s{_dspParamId = a})

-- | Cannot be changed after initial creation.
dspImmutable :: Lens' DataSourceParameter (Maybe Bool)
dspImmutable
  = lens _dspImmutable (\ s a -> s{_dspImmutable = a})

-- | Deprecated. This field has no effect.
dspRecurse :: Lens' DataSourceParameter (Maybe Bool)
dspRecurse
  = lens _dspRecurse (\ s a -> s{_dspRecurse = a})

-- | Description of the requirements for this field, in case the user input
-- does not fulfill the regex pattern or min\/max values.
dspValidationDescription :: Lens' DataSourceParameter (Maybe Text)
dspValidationDescription
  = lens _dspValidationDescription
      (\ s a -> s{_dspValidationDescription = a})

-- | Is parameter required.
dspRequired :: Lens' DataSourceParameter (Maybe Bool)
dspRequired
  = lens _dspRequired (\ s a -> s{_dspRequired = a})

-- | Parameter display name in the user interface.
dspDisplayName :: Lens' DataSourceParameter (Maybe Text)
dspDisplayName
  = lens _dspDisplayName
      (\ s a -> s{_dspDisplayName = a})

-- | Parameter type.
dspType :: Lens' DataSourceParameter (Maybe DataSourceParameterType)
dspType = lens _dspType (\ s a -> s{_dspType = a})

-- | All possible values for the parameter.
dspAllowedValues :: Lens' DataSourceParameter [Text]
dspAllowedValues
  = lens _dspAllowedValues
      (\ s a -> s{_dspAllowedValues = a})
      . _Default
      . _Coerce

-- | Deprecated. This field has no effect.
dspRepeated :: Lens' DataSourceParameter (Maybe Bool)
dspRepeated
  = lens _dspRepeated (\ s a -> s{_dspRepeated = a})

-- | Parameter description.
dspDescription :: Lens' DataSourceParameter (Maybe Text)
dspDescription
  = lens _dspDescription
      (\ s a -> s{_dspDescription = a})

-- | Regular expression which can be used for parameter validation.
dspValidationRegex :: Lens' DataSourceParameter (Maybe Text)
dspValidationRegex
  = lens _dspValidationRegex
      (\ s a -> s{_dspValidationRegex = a})

-- | For integer and double values specifies minimum allowed value.
dspMinValue :: Lens' DataSourceParameter (Maybe Double)
dspMinValue
  = lens _dspMinValue (\ s a -> s{_dspMinValue = a}) .
      mapping _Coerce

-- | URL to a help document to further explain the naming requirements.
dspValidationHelpURL :: Lens' DataSourceParameter (Maybe Text)
dspValidationHelpURL
  = lens _dspValidationHelpURL
      (\ s a -> s{_dspValidationHelpURL = a})

-- | Deprecated. This field has no effect.
dspFields :: Lens' DataSourceParameter [DataSourceParameter]
dspFields
  = lens _dspFields (\ s a -> s{_dspFields = a}) .
      _Default
      . _Coerce

instance FromJSON DataSourceParameter where
        parseJSON
          = withObject "DataSourceParameter"
              (\ o ->
                 DataSourceParameter' <$>
                   (o .:? "maxValue") <*> (o .:? "paramId") <*>
                     (o .:? "immutable")
                     <*> (o .:? "recurse")
                     <*> (o .:? "validationDescription")
                     <*> (o .:? "required")
                     <*> (o .:? "displayName")
                     <*> (o .:? "type")
                     <*> (o .:? "allowedValues" .!= mempty)
                     <*> (o .:? "repeated")
                     <*> (o .:? "description")
                     <*> (o .:? "validationRegex")
                     <*> (o .:? "minValue")
                     <*> (o .:? "validationHelpUrl")
                     <*> (o .:? "fields" .!= mempty))

instance ToJSON DataSourceParameter where
        toJSON DataSourceParameter'{..}
          = object
              (catMaybes
                 [("maxValue" .=) <$> _dspMaxValue,
                  ("paramId" .=) <$> _dspParamId,
                  ("immutable" .=) <$> _dspImmutable,
                  ("recurse" .=) <$> _dspRecurse,
                  ("validationDescription" .=) <$>
                    _dspValidationDescription,
                  ("required" .=) <$> _dspRequired,
                  ("displayName" .=) <$> _dspDisplayName,
                  ("type" .=) <$> _dspType,
                  ("allowedValues" .=) <$> _dspAllowedValues,
                  ("repeated" .=) <$> _dspRepeated,
                  ("description" .=) <$> _dspDescription,
                  ("validationRegex" .=) <$> _dspValidationRegex,
                  ("minValue" .=) <$> _dspMinValue,
                  ("validationHelpUrl" .=) <$> _dspValidationHelpURL,
                  ("fields" .=) <$> _dspFields])

-- | A response to schedule transfer runs for a time range.
--
-- /See:/ 'scheduleTransferRunsResponse' smart constructor.
newtype ScheduleTransferRunsResponse = ScheduleTransferRunsResponse'
    { _strrRuns :: Maybe [TransferRun]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ScheduleTransferRunsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'strrRuns'
scheduleTransferRunsResponse
    :: ScheduleTransferRunsResponse
scheduleTransferRunsResponse =
    ScheduleTransferRunsResponse'
    { _strrRuns = Nothing
    }

-- | The transfer runs that were scheduled.
strrRuns :: Lens' ScheduleTransferRunsResponse [TransferRun]
strrRuns
  = lens _strrRuns (\ s a -> s{_strrRuns = a}) .
      _Default
      . _Coerce

instance FromJSON ScheduleTransferRunsResponse where
        parseJSON
          = withObject "ScheduleTransferRunsResponse"
              (\ o ->
                 ScheduleTransferRunsResponse' <$>
                   (o .:? "runs" .!= mempty))

instance ToJSON ScheduleTransferRunsResponse where
        toJSON ScheduleTransferRunsResponse'{..}
          = object (catMaybes [("runs" .=) <$> _strrRuns])

-- | Returns list of supported data sources and their metadata.
--
-- /See:/ 'listDataSourcesResponse' smart constructor.
data ListDataSourcesResponse = ListDataSourcesResponse'
    { _ldsrNextPageToken :: !(Maybe Text)
    , _ldsrDataSources   :: !(Maybe [DataSource])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListDataSourcesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldsrNextPageToken'
--
-- * 'ldsrDataSources'
listDataSourcesResponse
    :: ListDataSourcesResponse
listDataSourcesResponse =
    ListDataSourcesResponse'
    { _ldsrNextPageToken = Nothing
    , _ldsrDataSources = Nothing
    }

-- | Output only. The next-pagination token. For multiple-page list results,
-- this token can be used as the \`ListDataSourcesRequest.page_token\` to
-- request the next page of list results.
ldsrNextPageToken :: Lens' ListDataSourcesResponse (Maybe Text)
ldsrNextPageToken
  = lens _ldsrNextPageToken
      (\ s a -> s{_ldsrNextPageToken = a})

-- | List of supported data sources and their transfer settings.
ldsrDataSources :: Lens' ListDataSourcesResponse [DataSource]
ldsrDataSources
  = lens _ldsrDataSources
      (\ s a -> s{_ldsrDataSources = a})
      . _Default
      . _Coerce

instance FromJSON ListDataSourcesResponse where
        parseJSON
          = withObject "ListDataSourcesResponse"
              (\ o ->
                 ListDataSourcesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "dataSources" .!= mempty))

instance ToJSON ListDataSourcesResponse where
        toJSON ListDataSourcesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldsrNextPageToken,
                  ("dataSources" .=) <$> _ldsrDataSources])

-- | Represents data source metadata. Metadata is sufficient to render UI and
-- request proper OAuth tokens.
--
-- /See:/ 'dataSource' smart constructor.
data DataSource = DataSource'
    { _dsClientId                     :: !(Maybe Text)
    , _dsMinimumScheduleInterval      :: !(Maybe Duration)
    , _dsSupportsCustomSchedule       :: !(Maybe Bool)
    , _dsUpdateDeadlineSeconds        :: !(Maybe (Textual Int32))
    , _dsManualRunsDisabled           :: !(Maybe Bool)
    , _dsDataSourceId                 :: !(Maybe Text)
    , _dsTransferType                 :: !(Maybe DataSourceTransferType)
    , _dsScopes                       :: !(Maybe [Text])
    , _dsSupportsMultipleTransfers    :: !(Maybe Bool)
    , _dsName                         :: !(Maybe Text)
    , _dsParameters                   :: !(Maybe [DataSourceParameter])
    , _dsHelpURL                      :: !(Maybe Text)
    , _dsDefaultDataRefreshWindowDays :: !(Maybe (Textual Int32))
    , _dsDisplayName                  :: !(Maybe Text)
    , _dsDataRefreshType              :: !(Maybe DataSourceDataRefreshType)
    , _dsAuthorizationType            :: !(Maybe DataSourceAuthorizationType)
    , _dsDefaultSchedule              :: !(Maybe Text)
    , _dsDescription                  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsClientId'
--
-- * 'dsMinimumScheduleInterval'
--
-- * 'dsSupportsCustomSchedule'
--
-- * 'dsUpdateDeadlineSeconds'
--
-- * 'dsManualRunsDisabled'
--
-- * 'dsDataSourceId'
--
-- * 'dsTransferType'
--
-- * 'dsScopes'
--
-- * 'dsSupportsMultipleTransfers'
--
-- * 'dsName'
--
-- * 'dsParameters'
--
-- * 'dsHelpURL'
--
-- * 'dsDefaultDataRefreshWindowDays'
--
-- * 'dsDisplayName'
--
-- * 'dsDataRefreshType'
--
-- * 'dsAuthorizationType'
--
-- * 'dsDefaultSchedule'
--
-- * 'dsDescription'
dataSource
    :: DataSource
dataSource =
    DataSource'
    { _dsClientId = Nothing
    , _dsMinimumScheduleInterval = Nothing
    , _dsSupportsCustomSchedule = Nothing
    , _dsUpdateDeadlineSeconds = Nothing
    , _dsManualRunsDisabled = Nothing
    , _dsDataSourceId = Nothing
    , _dsTransferType = Nothing
    , _dsScopes = Nothing
    , _dsSupportsMultipleTransfers = Nothing
    , _dsName = Nothing
    , _dsParameters = Nothing
    , _dsHelpURL = Nothing
    , _dsDefaultDataRefreshWindowDays = Nothing
    , _dsDisplayName = Nothing
    , _dsDataRefreshType = Nothing
    , _dsAuthorizationType = Nothing
    , _dsDefaultSchedule = Nothing
    , _dsDescription = Nothing
    }

-- | Data source client id which should be used to receive refresh token.
dsClientId :: Lens' DataSource (Maybe Text)
dsClientId
  = lens _dsClientId (\ s a -> s{_dsClientId = a})

-- | The minimum interval for scheduler to schedule runs.
dsMinimumScheduleInterval :: Lens' DataSource (Maybe Scientific)
dsMinimumScheduleInterval
  = lens _dsMinimumScheduleInterval
      (\ s a -> s{_dsMinimumScheduleInterval = a})
      . mapping _Duration

-- | Specifies whether the data source supports a user defined schedule, or
-- operates on the default schedule. When set to \`true\`, user can
-- override default schedule.
dsSupportsCustomSchedule :: Lens' DataSource (Maybe Bool)
dsSupportsCustomSchedule
  = lens _dsSupportsCustomSchedule
      (\ s a -> s{_dsSupportsCustomSchedule = a})

-- | The number of seconds to wait for an update from the data source before
-- the Data Transfer Service marks the transfer as FAILED.
dsUpdateDeadlineSeconds :: Lens' DataSource (Maybe Int32)
dsUpdateDeadlineSeconds
  = lens _dsUpdateDeadlineSeconds
      (\ s a -> s{_dsUpdateDeadlineSeconds = a})
      . mapping _Coerce

-- | Disables backfilling and manual run scheduling for the data source.
dsManualRunsDisabled :: Lens' DataSource (Maybe Bool)
dsManualRunsDisabled
  = lens _dsManualRunsDisabled
      (\ s a -> s{_dsManualRunsDisabled = a})

-- | Data source id.
dsDataSourceId :: Lens' DataSource (Maybe Text)
dsDataSourceId
  = lens _dsDataSourceId
      (\ s a -> s{_dsDataSourceId = a})

-- | Deprecated. This field has no effect.
dsTransferType :: Lens' DataSource (Maybe DataSourceTransferType)
dsTransferType
  = lens _dsTransferType
      (\ s a -> s{_dsTransferType = a})

-- | Api auth scopes for which refresh token needs to be obtained. These are
-- scopes needed by a data source to prepare data and ingest them into
-- BigQuery, e.g., https:\/\/www.googleapis.com\/auth\/bigquery
dsScopes :: Lens' DataSource [Text]
dsScopes
  = lens _dsScopes (\ s a -> s{_dsScopes = a}) .
      _Default
      . _Coerce

-- | Deprecated. This field has no effect.
dsSupportsMultipleTransfers :: Lens' DataSource (Maybe Bool)
dsSupportsMultipleTransfers
  = lens _dsSupportsMultipleTransfers
      (\ s a -> s{_dsSupportsMultipleTransfers = a})

-- | Output only. Data source resource name.
dsName :: Lens' DataSource (Maybe Text)
dsName = lens _dsName (\ s a -> s{_dsName = a})

-- | Data source parameters.
dsParameters :: Lens' DataSource [DataSourceParameter]
dsParameters
  = lens _dsParameters (\ s a -> s{_dsParameters = a})
      . _Default
      . _Coerce

-- | Url for the help document for this data source.
dsHelpURL :: Lens' DataSource (Maybe Text)
dsHelpURL
  = lens _dsHelpURL (\ s a -> s{_dsHelpURL = a})

-- | Default data refresh window on days. Only meaningful when
-- \`data_refresh_type\` = \`SLIDING_WINDOW\`.
dsDefaultDataRefreshWindowDays :: Lens' DataSource (Maybe Int32)
dsDefaultDataRefreshWindowDays
  = lens _dsDefaultDataRefreshWindowDays
      (\ s a -> s{_dsDefaultDataRefreshWindowDays = a})
      . mapping _Coerce

-- | User friendly data source name.
dsDisplayName :: Lens' DataSource (Maybe Text)
dsDisplayName
  = lens _dsDisplayName
      (\ s a -> s{_dsDisplayName = a})

-- | Specifies whether the data source supports automatic data refresh for
-- the past few days, and how it\'s supported. For some data sources, data
-- might not be complete until a few days later, so it\'s useful to refresh
-- data automatically.
dsDataRefreshType :: Lens' DataSource (Maybe DataSourceDataRefreshType)
dsDataRefreshType
  = lens _dsDataRefreshType
      (\ s a -> s{_dsDataRefreshType = a})

-- | Indicates the type of authorization.
dsAuthorizationType :: Lens' DataSource (Maybe DataSourceAuthorizationType)
dsAuthorizationType
  = lens _dsAuthorizationType
      (\ s a -> s{_dsAuthorizationType = a})

-- | Default data transfer schedule. Examples of valid schedules include:
-- \`1st,3rd monday of month 15:30\`, \`every wed,fri of jan,jun 13:15\`,
-- and \`first sunday of quarter 00:00\`.
dsDefaultSchedule :: Lens' DataSource (Maybe Text)
dsDefaultSchedule
  = lens _dsDefaultSchedule
      (\ s a -> s{_dsDefaultSchedule = a})

-- | User friendly data source description string.
dsDescription :: Lens' DataSource (Maybe Text)
dsDescription
  = lens _dsDescription
      (\ s a -> s{_dsDescription = a})

instance FromJSON DataSource where
        parseJSON
          = withObject "DataSource"
              (\ o ->
                 DataSource' <$>
                   (o .:? "clientId") <*>
                     (o .:? "minimumScheduleInterval")
                     <*> (o .:? "supportsCustomSchedule")
                     <*> (o .:? "updateDeadlineSeconds")
                     <*> (o .:? "manualRunsDisabled")
                     <*> (o .:? "dataSourceId")
                     <*> (o .:? "transferType")
                     <*> (o .:? "scopes" .!= mempty)
                     <*> (o .:? "supportsMultipleTransfers")
                     <*> (o .:? "name")
                     <*> (o .:? "parameters" .!= mempty)
                     <*> (o .:? "helpUrl")
                     <*> (o .:? "defaultDataRefreshWindowDays")
                     <*> (o .:? "displayName")
                     <*> (o .:? "dataRefreshType")
                     <*> (o .:? "authorizationType")
                     <*> (o .:? "defaultSchedule")
                     <*> (o .:? "description"))

instance ToJSON DataSource where
        toJSON DataSource'{..}
          = object
              (catMaybes
                 [("clientId" .=) <$> _dsClientId,
                  ("minimumScheduleInterval" .=) <$>
                    _dsMinimumScheduleInterval,
                  ("supportsCustomSchedule" .=) <$>
                    _dsSupportsCustomSchedule,
                  ("updateDeadlineSeconds" .=) <$>
                    _dsUpdateDeadlineSeconds,
                  ("manualRunsDisabled" .=) <$> _dsManualRunsDisabled,
                  ("dataSourceId" .=) <$> _dsDataSourceId,
                  ("transferType" .=) <$> _dsTransferType,
                  ("scopes" .=) <$> _dsScopes,
                  ("supportsMultipleTransfers" .=) <$>
                    _dsSupportsMultipleTransfers,
                  ("name" .=) <$> _dsName,
                  ("parameters" .=) <$> _dsParameters,
                  ("helpUrl" .=) <$> _dsHelpURL,
                  ("defaultDataRefreshWindowDays" .=) <$>
                    _dsDefaultDataRefreshWindowDays,
                  ("displayName" .=) <$> _dsDisplayName,
                  ("dataRefreshType" .=) <$> _dsDataRefreshType,
                  ("authorizationType" .=) <$> _dsAuthorizationType,
                  ("defaultSchedule" .=) <$> _dsDefaultSchedule,
                  ("description" .=) <$> _dsDescription])

-- | The returned list of pipelines in the project.
--
-- /See:/ 'listTransferRunsResponse' smart constructor.
data ListTransferRunsResponse = ListTransferRunsResponse'
    { _ltrrNextPageToken :: !(Maybe Text)
    , _ltrrTransferRuns  :: !(Maybe [TransferRun])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTransferRunsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltrrNextPageToken'
--
-- * 'ltrrTransferRuns'
listTransferRunsResponse
    :: ListTransferRunsResponse
listTransferRunsResponse =
    ListTransferRunsResponse'
    { _ltrrNextPageToken = Nothing
    , _ltrrTransferRuns = Nothing
    }

-- | Output only. The next-pagination token. For multiple-page list results,
-- this token can be used as the \`ListTransferRunsRequest.page_token\` to
-- request the next page of list results.
ltrrNextPageToken :: Lens' ListTransferRunsResponse (Maybe Text)
ltrrNextPageToken
  = lens _ltrrNextPageToken
      (\ s a -> s{_ltrrNextPageToken = a})

-- | Output only. The stored pipeline transfer runs.
ltrrTransferRuns :: Lens' ListTransferRunsResponse [TransferRun]
ltrrTransferRuns
  = lens _ltrrTransferRuns
      (\ s a -> s{_ltrrTransferRuns = a})
      . _Default
      . _Coerce

instance FromJSON ListTransferRunsResponse where
        parseJSON
          = withObject "ListTransferRunsResponse"
              (\ o ->
                 ListTransferRunsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "transferRuns" .!= mempty))

instance ToJSON ListTransferRunsResponse where
        toJSON ListTransferRunsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltrrNextPageToken,
                  ("transferRuns" .=) <$> _ltrrTransferRuns])

-- | Represents a user facing message for a particular data transfer run.
--
-- /See:/ 'transferMessage' smart constructor.
data TransferMessage = TransferMessage'
    { _tmSeverity    :: !(Maybe TransferMessageSeverity)
    , _tmMessageTime :: !(Maybe DateTime')
    , _tmMessageText :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmSeverity'
--
-- * 'tmMessageTime'
--
-- * 'tmMessageText'
transferMessage
    :: TransferMessage
transferMessage =
    TransferMessage'
    { _tmSeverity = Nothing
    , _tmMessageTime = Nothing
    , _tmMessageText = Nothing
    }

-- | Message severity.
tmSeverity :: Lens' TransferMessage (Maybe TransferMessageSeverity)
tmSeverity
  = lens _tmSeverity (\ s a -> s{_tmSeverity = a})

-- | Time when message was logged.
tmMessageTime :: Lens' TransferMessage (Maybe UTCTime)
tmMessageTime
  = lens _tmMessageTime
      (\ s a -> s{_tmMessageTime = a})
      . mapping _DateTime

-- | Message text.
tmMessageText :: Lens' TransferMessage (Maybe Text)
tmMessageText
  = lens _tmMessageText
      (\ s a -> s{_tmMessageText = a})

instance FromJSON TransferMessage where
        parseJSON
          = withObject "TransferMessage"
              (\ o ->
                 TransferMessage' <$>
                   (o .:? "severity") <*> (o .:? "messageTime") <*>
                     (o .:? "messageText"))

instance ToJSON TransferMessage where
        toJSON TransferMessage'{..}
          = object
              (catMaybes
                 [("severity" .=) <$> _tmSeverity,
                  ("messageTime" .=) <$> _tmMessageTime,
                  ("messageText" .=) <$> _tmMessageText])

-- | Cross-service attributes for the location. For example
-- {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'locationLabels' smart constructor.
newtype LocationLabels = LocationLabels'
    { _llAddtional :: HashMap Text Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llAddtional'
locationLabels
    :: HashMap Text Text -- ^ 'llAddtional'
    -> LocationLabels
locationLabels pLlAddtional_ =
    LocationLabels'
    { _llAddtional = _Coerce # pLlAddtional_
    }

llAddtional :: Lens' LocationLabels (HashMap Text Text)
llAddtional
  = lens _llAddtional (\ s a -> s{_llAddtional = a}) .
      _Coerce

instance FromJSON LocationLabels where
        parseJSON
          = withObject "LocationLabels"
              (\ o -> LocationLabels' <$> (parseJSONObject o))

instance ToJSON LocationLabels where
        toJSON = toJSON . _llAddtional

-- | Service-specific metadata. For example the available capacity at the
-- given location.
--
-- /See:/ 'locationMetadata' smart constructor.
newtype LocationMetadata = LocationMetadata'
    { _lmAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmAddtional'
locationMetadata
    :: HashMap Text JSONValue -- ^ 'lmAddtional'
    -> LocationMetadata
locationMetadata pLmAddtional_ =
    LocationMetadata'
    { _lmAddtional = _Coerce # pLmAddtional_
    }

-- | Properties of the object. Contains field \'type with type URL.
lmAddtional :: Lens' LocationMetadata (HashMap Text JSONValue)
lmAddtional
  = lens _lmAddtional (\ s a -> s{_lmAddtional = a}) .
      _Coerce

instance FromJSON LocationMetadata where
        parseJSON
          = withObject "LocationMetadata"
              (\ o -> LocationMetadata' <$> (parseJSONObject o))

instance ToJSON LocationMetadata where
        toJSON = toJSON . _lmAddtional

-- | The returned list of pipelines in the project.
--
-- /See:/ 'listTransferConfigsResponse' smart constructor.
data ListTransferConfigsResponse = ListTransferConfigsResponse'
    { _ltcrNextPageToken   :: !(Maybe Text)
    , _ltcrTransferConfigs :: !(Maybe [TransferConfig])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListTransferConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltcrNextPageToken'
--
-- * 'ltcrTransferConfigs'
listTransferConfigsResponse
    :: ListTransferConfigsResponse
listTransferConfigsResponse =
    ListTransferConfigsResponse'
    { _ltcrNextPageToken = Nothing
    , _ltcrTransferConfigs = Nothing
    }

-- | Output only. The next-pagination token. For multiple-page list results,
-- this token can be used as the \`ListTransferConfigsRequest.page_token\`
-- to request the next page of list results.
ltcrNextPageToken :: Lens' ListTransferConfigsResponse (Maybe Text)
ltcrNextPageToken
  = lens _ltcrNextPageToken
      (\ s a -> s{_ltcrNextPageToken = a})

-- | Output only. The stored pipeline transfer configurations.
ltcrTransferConfigs :: Lens' ListTransferConfigsResponse [TransferConfig]
ltcrTransferConfigs
  = lens _ltcrTransferConfigs
      (\ s a -> s{_ltcrTransferConfigs = a})
      . _Default
      . _Coerce

instance FromJSON ListTransferConfigsResponse where
        parseJSON
          = withObject "ListTransferConfigsResponse"
              (\ o ->
                 ListTransferConfigsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "transferConfigs" .!= mempty))

instance ToJSON ListTransferConfigsResponse where
        toJSON ListTransferConfigsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ltcrNextPageToken,
                  ("transferConfigs" .=) <$> _ltcrTransferConfigs])

-- | Represents a data transfer configuration. A transfer configuration
-- contains all metadata needed to perform a data transfer. For example,
-- \`destination_dataset_id\` specifies where data should be stored. When a
-- new transfer configuration is created, the specified
-- \`destination_dataset_id\` is created when needed and shared with the
-- appropriate data source service account.
--
-- /See:/ 'transferConfig' smart constructor.
data TransferConfig = TransferConfig'
    { _tcState                 :: !(Maybe TransferConfigState)
    , _tcSchedule              :: !(Maybe Text)
    , _tcDisabled              :: !(Maybe Bool)
    , _tcDataSourceId          :: !(Maybe Text)
    , _tcParams                :: !(Maybe TransferConfigParams)
    , _tcUserId                :: !(Maybe (Textual Int64))
    , _tcUpdateTime            :: !(Maybe DateTime')
    , _tcName                  :: !(Maybe Text)
    , _tcDataSetRegion         :: !(Maybe Text)
    , _tcDisplayName           :: !(Maybe Text)
    , _tcNextRunTime           :: !(Maybe DateTime')
    , _tcDestinationDataSetId  :: !(Maybe Text)
    , _tcDataRefreshWindowDays :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransferConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcState'
--
-- * 'tcSchedule'
--
-- * 'tcDisabled'
--
-- * 'tcDataSourceId'
--
-- * 'tcParams'
--
-- * 'tcUserId'
--
-- * 'tcUpdateTime'
--
-- * 'tcName'
--
-- * 'tcDataSetRegion'
--
-- * 'tcDisplayName'
--
-- * 'tcNextRunTime'
--
-- * 'tcDestinationDataSetId'
--
-- * 'tcDataRefreshWindowDays'
transferConfig
    :: TransferConfig
transferConfig =
    TransferConfig'
    { _tcState = Nothing
    , _tcSchedule = Nothing
    , _tcDisabled = Nothing
    , _tcDataSourceId = Nothing
    , _tcParams = Nothing
    , _tcUserId = Nothing
    , _tcUpdateTime = Nothing
    , _tcName = Nothing
    , _tcDataSetRegion = Nothing
    , _tcDisplayName = Nothing
    , _tcNextRunTime = Nothing
    , _tcDestinationDataSetId = Nothing
    , _tcDataRefreshWindowDays = Nothing
    }

-- | Output only. State of the most recently updated transfer run.
tcState :: Lens' TransferConfig (Maybe TransferConfigState)
tcState = lens _tcState (\ s a -> s{_tcState = a})

-- | Data transfer schedule. If the data source does not support a custom
-- schedule, this should be empty. If it is empty, the default value for
-- the data source will be used. The specified times are in UTC. Examples
-- of valid format: \`1st,3rd monday of month 15:30\`, \`every wed,fri of
-- jan,jun 13:15\`, and \`first sunday of quarter 00:00\`. See more
-- explanation about the format here:
-- https:\/\/cloud.google.com\/appengine\/docs\/flexible\/python\/scheduling-jobs-with-cron-yaml#the_schedule_format
-- NOTE: the granularity should be at least 8 hours, or less frequent.
tcSchedule :: Lens' TransferConfig (Maybe Text)
tcSchedule
  = lens _tcSchedule (\ s a -> s{_tcSchedule = a})

-- | Is this config disabled. When set to true, no runs are scheduled for a
-- given transfer.
tcDisabled :: Lens' TransferConfig (Maybe Bool)
tcDisabled
  = lens _tcDisabled (\ s a -> s{_tcDisabled = a})

-- | Data source id. Cannot be changed once data transfer is created.
tcDataSourceId :: Lens' TransferConfig (Maybe Text)
tcDataSourceId
  = lens _tcDataSourceId
      (\ s a -> s{_tcDataSourceId = a})

-- | Data transfer specific parameters.
tcParams :: Lens' TransferConfig (Maybe TransferConfigParams)
tcParams = lens _tcParams (\ s a -> s{_tcParams = a})

-- | Deprecated. Unique ID of the user on whose behalf transfer is done.
tcUserId :: Lens' TransferConfig (Maybe Int64)
tcUserId
  = lens _tcUserId (\ s a -> s{_tcUserId = a}) .
      mapping _Coerce

-- | Output only. Data transfer modification time. Ignored by server on
-- input.
tcUpdateTime :: Lens' TransferConfig (Maybe UTCTime)
tcUpdateTime
  = lens _tcUpdateTime (\ s a -> s{_tcUpdateTime = a})
      . mapping _DateTime

-- | The resource name of the transfer config. Transfer config names have the
-- form of
-- \`projects\/{project_id}\/locations\/{region}\/transferConfigs\/{config_id}\`.
-- The name is automatically generated based on the config_id specified in
-- CreateTransferConfigRequest along with project_id and region. If
-- config_id is not provided, usually a uuid, even though it is not
-- guaranteed or required, will be generated for config_id.
tcName :: Lens' TransferConfig (Maybe Text)
tcName = lens _tcName (\ s a -> s{_tcName = a})

-- | Output only. Region in which BigQuery dataset is located.
tcDataSetRegion :: Lens' TransferConfig (Maybe Text)
tcDataSetRegion
  = lens _tcDataSetRegion
      (\ s a -> s{_tcDataSetRegion = a})

-- | User specified display name for the data transfer.
tcDisplayName :: Lens' TransferConfig (Maybe Text)
tcDisplayName
  = lens _tcDisplayName
      (\ s a -> s{_tcDisplayName = a})

-- | Output only. Next time when data transfer will run.
tcNextRunTime :: Lens' TransferConfig (Maybe UTCTime)
tcNextRunTime
  = lens _tcNextRunTime
      (\ s a -> s{_tcNextRunTime = a})
      . mapping _DateTime

-- | The BigQuery target dataset id.
tcDestinationDataSetId :: Lens' TransferConfig (Maybe Text)
tcDestinationDataSetId
  = lens _tcDestinationDataSetId
      (\ s a -> s{_tcDestinationDataSetId = a})

-- | The number of days to look back to automatically refresh the data. For
-- example, if \`data_refresh_window_days = 10\`, then every day BigQuery
-- reingests data for [today-10, today-1], rather than ingesting data for
-- just [today-1]. Only valid if the data source supports the feature. Set
-- the value to 0 to use the default value.
tcDataRefreshWindowDays :: Lens' TransferConfig (Maybe Int32)
tcDataRefreshWindowDays
  = lens _tcDataRefreshWindowDays
      (\ s a -> s{_tcDataRefreshWindowDays = a})
      . mapping _Coerce

instance FromJSON TransferConfig where
        parseJSON
          = withObject "TransferConfig"
              (\ o ->
                 TransferConfig' <$>
                   (o .:? "state") <*> (o .:? "schedule") <*>
                     (o .:? "disabled")
                     <*> (o .:? "dataSourceId")
                     <*> (o .:? "params")
                     <*> (o .:? "userId")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "datasetRegion")
                     <*> (o .:? "displayName")
                     <*> (o .:? "nextRunTime")
                     <*> (o .:? "destinationDatasetId")
                     <*> (o .:? "dataRefreshWindowDays"))

instance ToJSON TransferConfig where
        toJSON TransferConfig'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _tcState,
                  ("schedule" .=) <$> _tcSchedule,
                  ("disabled" .=) <$> _tcDisabled,
                  ("dataSourceId" .=) <$> _tcDataSourceId,
                  ("params" .=) <$> _tcParams,
                  ("userId" .=) <$> _tcUserId,
                  ("updateTime" .=) <$> _tcUpdateTime,
                  ("name" .=) <$> _tcName,
                  ("datasetRegion" .=) <$> _tcDataSetRegion,
                  ("displayName" .=) <$> _tcDisplayName,
                  ("nextRunTime" .=) <$> _tcNextRunTime,
                  ("destinationDatasetId" .=) <$>
                    _tcDestinationDataSetId,
                  ("dataRefreshWindowDays" .=) <$>
                    _tcDataRefreshWindowDays])
