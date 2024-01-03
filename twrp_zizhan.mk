#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from zizhan device
$(call inherit-product, device/xiaomi/zizhan/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := zizhan
PRODUCT_NAME := twrp_zizhan
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 22061218C
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_RELEASE_NAME := Mi Mix Fold 2 (zizhan)

