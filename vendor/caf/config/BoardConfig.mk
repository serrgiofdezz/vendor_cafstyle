include vendor/caf/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_INTEL_HARDWARE),true)
include vendor/caf/config/intel/BoardConfig.mk
endif

include vendor/caf/config/BoardConfigSoong.mk

ifneq ($(TARGET_USES_PREBUILT_SENSOR_SERVICE), true)
PRODUCT_SOONG_NAMESPACES += \
    frameworks/av/sensor/sensorserver \
    frameworks/av/services/sensor/libsenseservice
endif

# Namespace for fwk-detect
TARGET_FWK_DETECT_PATH ?= hardware/intel-caf/common
PRODUCT_SOONG_NAMESPACES += \
    $(TARGET_FWK_DETECT_PATH)/fwk-detect
