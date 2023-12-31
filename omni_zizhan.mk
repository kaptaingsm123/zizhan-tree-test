#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from zizhan device
$(call inherit-product, device/xiaomi/zizhan/device.mk)

PRODUCT_DEVICE := zizhan
PRODUCT_NAME := omni_zizhan
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 22061218C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="zizhan-user 12 SKQ1.230401.001 V816.0.23.12.18.DEV release-keys"

BUILD_FINGERPRINT := Xiaomi/zizhan/zizhan:12/SKQ1.230401.001/V816.0.23.12.18.DEV:user/release-keys
