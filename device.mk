#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/zizhan
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl-qti \
    android.hardware.boot@1.2-impl-qti.recovery \
    android.hardware.boot@1.2-service

# Decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Recovery Modules/Binaries
TARGET_RECOVERY_DEVICE_MODULES += \
    android.hidl.allocator@1.0 \
    android.hidl.memory@1.0 \
    android.hidl.memory.token@1.0 \
    libdmabufheap \
    libhidlmemory \
    libion \
    libnetutils \
    libxml2 \
    vendor.display.config@1.0 \
    vendor.display.config@2.0 \
    debuggerd \
    strace

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.allocator@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory.token@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libdmabufheap.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhidlmemory.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libnetutils.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libxml2.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@1.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@2.0.so

# Relax
RELAX_USES_LIBRARY_CHECK := true

RECOVERY_BINARY_SOURCE_FILES += \
    $(TARGET_OUT_EXECUTABLES)/debuggerd \
    $(TARGET_OUT_EXECUTABLES)/strace

# OTA
TARGET_ENFORCE_AB_OTA_PARTITION_LIST := true

# Set GRF/Vendor freeze properties
BOARD_SHIPPING_API_LEVEL := 31
BOARD_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)
SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)
PRODUCT_SHIPPING_API_LEVEL := $(BOARD_SHIPPING_API_LEVEL)

# Userdata checkpoint
PRODUCT_PACKAGES += \
    checkpoint_gc

# Update Engine
PRODUCT_PACKAGES += \
    update_engine \
    update_verifier \
    update_engine_sideload

# Update Script
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh

# VNDK/SDK
PRODUCT_TARGET_VNDK_VERSION := $(BOARD_SHIPPING_API_LEVEL)
BOARD_SYSTEMSDK_VERSIONS := $(BOARD_SHIPPING_API_LEVEL)

# fastboot/d HAL
PRODUCT_PACKAGES += fastbootd
PRODUCT_PACKAGES += android.hardware.fastboot@1.1-impl-mock

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# VNDK/SDK
PRODUCT_TARGET_VNDK_VERSION := $(BOARD_SHIPPING_API_LEVEL)
BOARD_SYSTEMSDK_VERSIONS := $(BOARD_SHIPPING_API_LEVEL)
