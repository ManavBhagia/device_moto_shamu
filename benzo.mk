# Release name
PRODUCT_RELEASE_NAME := Nexus6

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/benzo/config/common.mk)
$(call inherit-product, vendor/benzo/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := shamu
PRODUCT_NAME := benzo_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

TARGET_VENDOR := moto

PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_FINGERPRINT=google/shamu/shamu:5.1.1/LVY48E/2116406:user/release-keys \
PRIVATE_BUILD_DESC="shamu-user 5.1.1 LVY48E 2116406 release-keys" 

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/common/bootanimations/bootanimation.zip:system/media/bootanimation.zip
