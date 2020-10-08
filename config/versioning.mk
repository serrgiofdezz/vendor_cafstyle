#
# Copyright (C) 2020 The BBJProjeK Team
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Versioning System
CUSTOM_VERSION = 6.0
CUSTOM_CODENAME := vanadium

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

TARGET_PRODUCT_SHORT := $(subst caf_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := brainrepo_$(CUSTOM_VERSION)_$(CUSTOM_BUILD)-$(CUSTOM_VERSION_PROP)-$(CUSTOM_BUILD_DATE)
CUSTOM_VERSION_PROP := 11
CUSTOM_PLATFORM_VERSION := eleven

CUSTOM_PROPERTIES := \
    ro.build.version.custom=$(CUSTOM_VERSION)
    ro.build.version.codename=$(CUSTOM_CODENAME)
