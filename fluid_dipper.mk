#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/dipper/device.mk)

# Inherit some common Fluid stuff.
TARGET_BOOT_ANIMATION_RES := 1080
#TARGET_INCLUDE_GAPPS := true
#TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_INCLUDE_MINIMAL_GAPPS := false
TARGET_INCLUDE_AOSP_REPLACEMENTS := true
FLUID_BUILD_TYPE := OFFICIAL
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := fluid_dipper
PRODUCT_DEVICE := dipper
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/dipper/dipper:8.1.0/OPM1.171019.011/V9.5.5.0.OEAMIFA:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dipper-user 8.1.0 OPM1.171019.011 V9.5.5.0.OEAMIFA release-keys" \
    PRODUCT_NAME="dipper"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
