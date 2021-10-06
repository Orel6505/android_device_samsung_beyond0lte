#
# Copyright (C) 2021 The LineageOS Project
#

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Inherit from beyond0lte device
$(call inherit-product, device/samsung/beyond0lte/device.mk)

## Boot Animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

## Device identifier, this must come after all inclusions
PRODUCT_NAME := lineage_beyond0lte
PRODUCT_DEVICE := beyond0lte
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy S10e
PRODUCT_MANUFACTURER := Samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
