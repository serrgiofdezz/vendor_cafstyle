# Copyright (C) 2020 The Brain Repo Project
# Copyright (C) 2020 The Code Aurora Forum Project
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

ifeq ($(TARGET_GAPPS_ARCH),)
$(error "GAPPS: TARGET_GAPPS_ARCH is undefined")
endif

ifneq ($(TARGET_GAPPS_ARCH),arm)
ifneq ($(TARGET_GAPPS_ARCH),x86)
$(error "GAPPS: Only arm64 and x86 are allowed")
endif
endif

# App
ifeq ($(IS_PHONE),true)
PRODUCT_PACKAGES += \
    PrebuiltBugle
endif

ifeq ($(TARGET_INCLUDE_STOCK_ARCORE),true)
PRODUCT_PACKAGES += \
    arcore
endif

# Product priv-app
PRODUCT_PACKAGES += \
    CarrierServices

# Inherit from the common blobs
$(call inherit-product, vendor/gapps/common-blobs.mk)
