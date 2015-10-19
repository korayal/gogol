{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Classroom.Courses.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course or for access errors. * \`NOT_FOUND\` if no course
-- exists with the requested ID.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @ClassroomCoursesGet@.
module Network.Google.Resource.Classroom.Courses.Get
    (
    -- * REST Resource
      CoursesGetResource

    -- * Creating a Request
    , coursesGet'
    , CoursesGet'

    -- * Request Lenses
    , cgXgafv
    , cgUploadProtocol
    , cgPp
    , cgAccessToken
    , cgUploadType
    , cgBearerToken
    , cgId
    , cgCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @ClassroomCoursesGet@ method which the
-- 'CoursesGet'' request conforms to.
type CoursesGetResource =
     "v1" :>
       "courses" :>
         Capture "id" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Course

-- | Returns a course. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- the requested course or for access errors. * \`NOT_FOUND\` if no course
-- exists with the requested ID.
--
-- /See:/ 'coursesGet'' smart constructor.
data CoursesGet' = CoursesGet'
    { _cgXgafv          :: !(Maybe Text)
    , _cgUploadProtocol :: !(Maybe Text)
    , _cgPp             :: !Bool
    , _cgAccessToken    :: !(Maybe Text)
    , _cgUploadType     :: !(Maybe Text)
    , _cgBearerToken    :: !(Maybe Text)
    , _cgId             :: !Text
    , _cgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoursesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgXgafv'
--
-- * 'cgUploadProtocol'
--
-- * 'cgPp'
--
-- * 'cgAccessToken'
--
-- * 'cgUploadType'
--
-- * 'cgBearerToken'
--
-- * 'cgId'
--
-- * 'cgCallback'
coursesGet'
    :: Text -- ^ 'id'
    -> CoursesGet'
coursesGet' pCgId_ =
    CoursesGet'
    { _cgXgafv = Nothing
    , _cgUploadProtocol = Nothing
    , _cgPp = True
    , _cgAccessToken = Nothing
    , _cgUploadType = Nothing
    , _cgBearerToken = Nothing
    , _cgId = pCgId_
    , _cgCallback = Nothing
    }

-- | V1 error format.
cgXgafv :: Lens' CoursesGet' (Maybe Text)
cgXgafv = lens _cgXgafv (\ s a -> s{_cgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cgUploadProtocol :: Lens' CoursesGet' (Maybe Text)
cgUploadProtocol
  = lens _cgUploadProtocol
      (\ s a -> s{_cgUploadProtocol = a})

-- | Pretty-print response.
cgPp :: Lens' CoursesGet' Bool
cgPp = lens _cgPp (\ s a -> s{_cgPp = a})

-- | OAuth access token.
cgAccessToken :: Lens' CoursesGet' (Maybe Text)
cgAccessToken
  = lens _cgAccessToken
      (\ s a -> s{_cgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cgUploadType :: Lens' CoursesGet' (Maybe Text)
cgUploadType
  = lens _cgUploadType (\ s a -> s{_cgUploadType = a})

-- | OAuth bearer token.
cgBearerToken :: Lens' CoursesGet' (Maybe Text)
cgBearerToken
  = lens _cgBearerToken
      (\ s a -> s{_cgBearerToken = a})

-- | Identifier of the course to return. This identifier can be either the
-- Classroom-assigned identifier or an alias.
cgId :: Lens' CoursesGet' Text
cgId = lens _cgId (\ s a -> s{_cgId = a})

-- | JSONP
cgCallback :: Lens' CoursesGet' (Maybe Text)
cgCallback
  = lens _cgCallback (\ s a -> s{_cgCallback = a})

instance GoogleRequest CoursesGet' where
        type Rs CoursesGet' = Course
        requestClient CoursesGet'{..}
          = go _cgId _cgXgafv _cgUploadProtocol (Just _cgPp)
              _cgAccessToken
              _cgUploadType
              _cgBearerToken
              _cgCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient (Proxy :: Proxy CoursesGetResource)
                      mempty
