# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from V220A device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := vsmart
PRODUCT_DEVICE := V220A
PRODUCT_MANUFACTURER := vsmart
PRODUCT_NAME := lineage_V220A
PRODUCT_MODEL := Bee

PRODUCT_GMS_CLIENTID_BASE := android-vsmart
TARGET_VENDOR := vsmart
TARGET_VENDOR_PRODUCT_NAME := V220A
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="V220A_open-user 8.1.0 O11019 V220A_OPEN_U_M5_20200206 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := vsmart/V220A_open/V220A:8.1.0/O11019/V220A_OPEN_U_M5_20200206:user/release-keys
