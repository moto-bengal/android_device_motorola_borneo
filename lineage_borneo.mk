#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from borneo device
$(call inherit-product, device/motorola/borneo/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_borneo
PRODUCT_DEVICE := borneo
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto G Power (2021)
PRODUCT_MANUFACTURER := Motorola

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

# Build info
BUILD_FINGERPRINT := "motorola/msi/msi:11/RZBS31.Q2-143-27-13/b542c:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=borneo_retail \
    PRIVATE_BUILD_DESC="borneo_retail-user 11 RZBS31.Q2-143-27-13 b542c release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-motorola
