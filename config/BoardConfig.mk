# Kernel
ifeq ($(LOCAL_KERNEL),)
include vendor/cafstyle/config/BoardConfigKernel.mk
PRODUCT_SOONG_NAMESPACES += \
	vendor/cafstyle/build/soong/generator
endif

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/cafstyle/config/BoardConfigQcom.mk
endif

# Soong
include vendor/cafstyle/config/BoardConfigSoong.mk
