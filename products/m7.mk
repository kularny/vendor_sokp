# Inherit AOSP device configuration for m7.
$(call inherit-product, device/samsung/m7/full_m7.mk)

# Inherit common product files.
$(call inherit-product, vendor/sokp/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/sokp/configs/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := sokp_m7
PRODUCT_BRAND := htc
PRODUCT_DEVICE := m7
PRODUCT_MANUFACTURER := htc

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m7 TARGET_DEVICE=m7 BUILD_FINGERPRINT="samsung/t03gxx/t03g:4.1.1/JRO03C/N7100XXALJ3:user/release-keys" PRIVATE_BUILD_DESC="t03gxx-user 4.1.1 JRO03C N7100XXALJ3 release-keys"


PRODUCT_COPY_FILES += \
    vendor/sokp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation.zip