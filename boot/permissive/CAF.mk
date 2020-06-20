# Copyright 2020 The Code Aurora Forum Project
# Copyright 2020 The Brain Repo Project

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := SLQLib
LOCAL_MODULE_TAGS := optional
LOCAL_REQUIRED_MODULES := $(_img_modules) $(_anim_modules)
include $(BUILD_PHONY_PACKAGE)
