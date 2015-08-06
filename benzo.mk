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

PRODUCT_BUILD_PROP_OVERRIDES += \
BUILD_FINGERPRINT=google/shamu/shamu:5.1.1/LMY48I/2074855:user/release-keys \
PRIVATE_BUILD_DESC="shamu-user 5.1.1 LMY48I 2074855 release-keys" 

# Enable Torch
#PRODUCT_PACKAGES += Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/common/bootanimations/bootanimation.zip:system/media/bootanimation.zip
