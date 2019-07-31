#
# This file is part of Teseo Android HAL
#
# Copyright (c) 2016-2017, STMicroelectronics - All Rights Reserved
# Author(s): Baudouin Feildel <baudouin.feildel@st.com> for STMicroelectronics.
#
# License terms: Apache 2.0.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

# libteseo.model module
include $(CLEAR_VARS)

LOCAL_MODULE := libteseo.model
LOCAL_MODULE_OWNER := stm
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true

LOCAL_CPPFLAGS := $(TESEO_GLOBAL_CPPFLAGS)

LOCAL_SHARED_LIBRARIES := \
	libc                  \
	liblog                \
	libcutils             \
	libsysutils           \
	libhardware           \
	libteseo.utils

LOCAL_SRC_FILES :=              \
	src/Almanac.cpp             \
	src/Constellations.cpp      \
	src/converters.cpp          \
	src/Coordinate.cpp          \
	src/Ephemeris.cpp           \
	src/Location.cpp            \
	src/NmeaMessage.cpp         \
	src/SatInfo.cpp             \
	src/TalkerId.cpp            \
	src/Version.cpp

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/include

LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)

