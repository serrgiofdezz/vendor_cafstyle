
PRODUCT_BRAND ?= BrainRepo
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Inherit from fonts config
$(call inherit-product, vendor/cafstyle/config/fonts.mk)

# Inherit from overlays config
$(call inherit-product, vendor/cafstyle/config/overlay.mk)

# Inherit from audio config
$(call inherit-product, vendor/cafstyle/config/audio.mk)

# Inherit from CarrrierSettings config
$(call inherit-product, vendor/cafstyle/config/carriers.mk)

# Inherit from apex config
$(call inherit-product, vendor/cafstyle/config/apex.mk)

# Inherit from branding config
$(call inherit-product, vendor/cafstyle/config/versioning.mk)

# Inherit from bootanimation config
$(call inherit-product, vendor/cafstyle/config/bootanimation.mk)

# Inherit from Google customization config
$(call inherit-product, vendor/customization/config.mk)

# Inherit from GMS product config
$(call inherit-product, vendor/gms/gms_full.mk)

# Inherit from lewdboratory config
ifeq ($(TARGET_GAPPS_ARCH),arm64)
$(call inherit-product-if-exists, vendor/lewdboratory/packages.mk)
endif

# Prebuilt Packages
PRODUCT_PACKAGES += \
    Fonts \
    BubbleWall

ifeq ($(CUSTOM_BUILD_TYPE), OFFICIAL)
PRODUCT_PACKAGES += \
    Papers
endif

TARGET_MINIMAL_APPS ?= false

# Files
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/etc,$(TARGET_COPY_OUT_PRODUCT)/etc)

# SetupWizard configuration
PRODUCT_PRODUCT_PROPERTIES += \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.rotation_locked=true \
    setupwizard.enable_assist_gesture_training=true \
    setupwizard.theme=glif_v3_light \
    setupwizard.feature.skip_button_use_mobile_data.carrier1839=true \
    setupwizard.feature.show_pai_screen_in_main_flow.carrier1839=false \
    setupwizard.feature.show_pixel_tos=false

# StorageManager configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.storage_manager.show_opt_in=false

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

# Include product overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.debug.alloc=0 \
    ro.error.receiver.system.apps=com.google.codeaurora.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.codeaurora.dataroaming=false \
    ro.atrace.core.services=com.google.codeaurora.gms,com.google.codeaurora.gms.ui,com.google.codeaurora.gms.persistent \
    ro.com.codeaurora.dateformat=MM-dd-yyyy \
    persist.sys.disable_rescue=true \
    ro.setupwizard.rotation_locked=true

# ADB authentication
ifeq ($(TARGET_BUILD_VARIANT),eng)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.adb.secure=0
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# AOSP recovery flashing
ifeq ($(TARGET_USES_AOSP_RECOVERY),true)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.recovery_update=true
endif

# Enforce privapp-permissions whitelist
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.control_privapp_permissions=log

# Power whitelist
PRODUCT_COPY_FILES += \
    vendor/cafstyle/config/permissions/custom-power-whitelist.xml:system/etc/sysconfig/custom-power-whitelist.xml

# Storage manager
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.storage_manager.enabled=true

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI \
    NexusLauncherRelease
