# Telephony
IS_TABLET := true

# Telephony packages
PRODUCT_PACKAGES += \
    CAFwifionlyServices

# Inherit full common stuff
$(call inherit-product, vendor/cafstyle/config/common.mk)
