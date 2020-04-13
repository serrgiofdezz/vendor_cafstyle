# Copyright (C) 2030 The Brain Repo Project
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

# Prebuilt Packages
PRODUCT_PACKAGES += \
    IntelBootPickerPrebuilt \
    NexusLauncherPrebuilt \
    WellbeingPrebuilt \
    Fonts

ifeq ($(TARGET_APPS_ARCH),arm64)
PRODUCT_PACKAGES += \
    MatchmakerPrebuilt
else ifeq ($(TARGET_APPS_ARCH),x86)
PRODUCT_PACKAGES += \
    IntelLegacyPrebuilt
endif

TARGET_MINIMAL_APPS ?= false

# Boot Mode
ifeq ($(TARGET_BOOT_MODE),enforcing)
     PRODUCT_COPY_FILES += vendor/cafstyle/boot/enforcing/CAF.mk
else ifeq ($(TARGET_BOOT_MODE),permissive)
     PRODUCT_COPY_FILES += vendor/cafstyle/boot/permissive/CAF.mk
else ifeq ($(TARGET_BOOT_MODE),disabled)
     PRODUCT_COPY_FILES += vendor/cafstyle/boot/disabled/CAF.mk
else
    ifeq ($(TARGET_BOOT_MODE),)
        $(warning "CAFStyle: TARGET_BOOT_MODE is undefined, assuming enforcing mode")
    endif
    PRODUCT_COPY_FILES += vendor/cafstyle/boot/enforcing/CAF.mk
endif

# Files
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/etc,$(TARGET_COPY_OUT_PRODUCT)/etc)
