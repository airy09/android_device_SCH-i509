## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := SCH-i509

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/SCH-i509/device_SCH-i509.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := SCH-i509
PRODUCT_NAME := SCH-i509
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-i509
PRODUCT_MANUFACTURER := samsung
