# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    net.tethering.noprovisioning=true

# Disable mobile data in roaming by default.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false

# Inherit full common CodeAurora stuff
$(call inherit-product, vendor/cafstyle/config/common.mk)
