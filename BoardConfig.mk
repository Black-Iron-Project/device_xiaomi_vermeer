#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/vermeer

# Inherit from sm8550-common
include device/xiaomi/sm8550-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 530
TARGET_USE_YCRCB_CAMERA_ENCODE := true

BOARD_VENDOR_KERNEL_MODULES_LOAD += \
        aw882xx_dlkm.ko \
	cs35l41_dlkm.ko \
	goodix_fod.ko \
	goodix_core.ko \
        wl2868c.ko \
        wl2866d.ko

# OTA
TARGET_OTA_ASSERT_DEVICE := vermeer

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/configs/properties/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/properties/vendor.prop
