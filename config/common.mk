PRODUCT_BRAND ?= ElementOS
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Inherit from fonts config
$(call inherit-product, vendor/cafstyle/config/fonts.mk)

# Inherit from rro_overlays config
$(call inherit-product, vendor/cafstyle/config/rro_overlays.mk)

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

# Inherit from sepolicy config
$(call inherit-product, vendor/cafstyle/config/sepolicy.mk)

# Inherit from googlab config
$(call inherit-product-if-exists, vendor/googlab/packages.mk)

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
    vendor/cafstyle/overlay

PRODUCT_ENFORCE_RRO_TARGETS := *

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.debug.alloc=0 \
    ro.error.receiver.system.apps=com.google.codeaurora.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.codeaurora.dataroaming=false \
    ro.atrace.core.services=com.google.codeaurora.gms,com.google.codeaurora.gms.ui,com.google.codeaurora.gms.persistent \
    ro.com.codeaurora.dateformat=MM-dd-yyyy \
    persist.sys.disable_rescue=true \
    ro.setupwizard.rotation_locked=true

# Enforce privapp-permissions whitelist
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.control_privapp_permissions=log

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

# Gboard configuration
PRODUCT_PRODUCT_PROPERTIES += \
    ro.com.google.ime.bs_theme=true \
    ro.com.google.ime.theme_id=5 \
    ro.com.google.ime.system_lm_dir=/product/usr/share/ime/google/d3_lms
