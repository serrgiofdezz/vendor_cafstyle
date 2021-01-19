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

PRODUCT_BRAND ?= ElementOS
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PACKAGES += \
    SimpleDeviceConfig \
    ElementOSWallsStub

# SetupWizard configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.esim_cid_ignore=00000001 \
    ro.setupwizard.rotation_locked=true \
    setupwizard.enable_assist_gesture_training=true \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    setupwizard.feature.device_default_dark_mode=true \
    setupwizard.feature.show_pai_screen_in_main_flow.carrier1839=false \
    setupwizard.feature.show_pixel_tos=true \
    setupwizard.feature.skip_button_use_mobile_data.carrier1839=true \
    setupwizard.theme=glif_v3_light

# StorageManager configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.storage_manager.show_opt_in=false \
		ro.storage_manager.enabled=true

# OPA configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.opa.eligible_device=true

# Google legal
PRODUCT_PRODUCT_PROPERTIES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html

# Google Play services configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.clientidbase=android-google \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent

# CarrierSetup configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.carriersetup.vzw_consent_page=true

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# Gboard configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.bs_theme=true \
    ro.com.google.ime.theme_id=5 \
    ro.com.google.ime.system_lm_dir=/product/usr/share/ime/google/d3_lms

# Include product overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/cafstyle/overlay

# Enable blurs based on targets
ifeq ($(TARGET_SUPPORTS_BLUR),true)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1 \
    ro.sf.blurs_are_expensive=1
endif

# Inherit from apex config
$(call inherit-product, vendor/cafstyle/config/apex.mk)

# Inherit from audio config
$(call inherit-product, vendor/cafstyle/config/audio.mk)

# Inherit from bootanimation config
$(call inherit-product, vendor/cafstyle/config/bootanimation.mk)

# Inherit from CarrrierSettings config
$(call inherit-product, vendor/cafstyle/config/carriers.mk)

# Inherit from fonts config
$(call inherit-product, vendor/cafstyle/config/fonts.mk)

# Inherit from rro config
$(call inherit-product, vendor/cafstyle/config/rro_overlays.mk)

# Inherit from sepolicy config
$(call inherit-product, vendor/cafstyle/config/sepolicy.mk)

# Inherit from textclassifier config
$(call inherit-product, vendor/cafstyle/config/textclassifier.mk)

# Inherit from branding config
$(call inherit-product, vendor/cafstyle/config/versioning.mk)

# External Packages
# Inherit from GMS product config
$(call inherit-product, vendor/gms/gms_full.mk)

# Inherit from googlab config
$(call inherit-product-if-exists, vendor/googlab/packages.mk)
