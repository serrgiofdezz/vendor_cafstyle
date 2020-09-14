# Telephony
IS_PHONE := true

# Telephony packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    CAFServices \
    CAFSettings

# Dual SIM - allow setting calling account to 'Ask every time'
# rather than resetting to sub 1 every boot
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.radio.caf_usr_pref_sel=true

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    net.tethering.noprovisioning=true

# Disable mobile data in roaming by default.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false

# Inherit full common CodeAurora stuff
$(call inherit-product, vendor/cafstyle/config/common.mk)
