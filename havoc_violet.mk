#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common HavocOS stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_WIFI_EXT := true
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)
TARGET_INCREMENTAL_BLOCK_BASED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := havoc_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "xiaomi/violet/violet:9/PKQ1.181203.001/V10.3.9.0.PFHINXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="violet" \
    TARGET_DEVICE="violet" \
    PRIVATE_BUILD_DESC="violet-user 9 PKQ1.181203.001 V10.3.9.0.PFHINXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

export export
HAVOC_BUILD_TYPE=Official
PRODUCT_PROPERTY_OVERRIDES += \
    ro.havoc.maintainer=athuld
