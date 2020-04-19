#
# Copyright (C) 2020 The Code Aurora Forum Project
# Copyright (C) 2020 The BBJProjeK Company LLC
# Licensed under the BBJProjeK Public License, Version 1-0 (the "License");
# you may not use this file except in compliance with the License.
#

# This makefile is intended to serve as a base for completely CAF based
# mainline devices, It contain the mainline system partition and sensible
# defaults for the product and vendor partition.
$(call inherit-product, $(SRC_TARGET_DIR)/product/mainline_system.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_product.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_product.mk)

ifeq ($(CUSTOM_BUILD),)
$(call inherit-product, frameworks/base/data/sounds/AllAudio.mk)

endif

ifeq ($(CUSTOM_BUILD),)
PRODUCT_COPY_FILES += device/sample/etc/apns-full-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml
endif
