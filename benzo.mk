# Release name
PRODUCT_RELEASE_NAME := Nexus6

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/benzo/config/common.mk)
$(call inherit-product, vendor/benzo/config/common_full_phone.mk)

# CM Overlay
DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := shamu
PRODUCT_NAME := benzo_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=shamu \
        BUILD_FINGERPRINT="google/shamu/shamu:6.0.1/MMB29Q/2480792:user/release-keys" 
        PRIVATE_BUILD_DESC="shamu-user 6.0.1 MMB29Q 2480792 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/benzo/prebuilt/common/bootanimations/bootanimation.zip:system/media/bootanimation.zip

# libxml2
PRODUCT_PACKAGES += \
    libxml2
