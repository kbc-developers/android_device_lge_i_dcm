## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/i_dcm/i_dcm.mk)

PRODUCT_NAME := cm_i_dcm

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusLTE
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i_dcm

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_iproj BUILD_FINGERPRINT=LGE/i_dcm/i_dcm:4.0.4/IMM76D/L01D-V20e.1e818742da:user/release-keys PRIVATE_BUILD_DESC="i_dcm-user 4.0.4 IMM76D 4e186480 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch WiFiDirectDemo
