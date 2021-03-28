$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/sony/maple_dsds/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

### BOOTANIMATION
# vendor/evolution/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
# vendor/evolution/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### evolution
CUSTOM_BUILD_TYPE := UNOFFICIAL
EVO_DONATE_URL := NONEED
EVO_MAINTAINER := Sharakovia@reallyshow
EVO_SUPPORT_URL := https://github.com/sharakovia
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_WIFI_EXT := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCREMENTAL_BLOCK_BASED := true
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := evolution_maple_dsds
PRODUCT_DEVICE := maple_dsds
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8142
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=maple_dsds \
    PRIVATE_BUILD_DESC="G8142-user 9 47.2.A.10.107 172320177 release-keys"

BUILD_FINGERPRINT := Sony/G8142/G8142:9/47.2.A.10.107/172320177:user/release-keys

ifneq ($(LINEAGE_DEV_CERTIFICATE),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(LINEAGE_DEV_CERTIFICATE)
endif

ifneq ($(LINEAGE_VERITY_CERTIFICATE),)
    PRODUCT_VERITY_SIGNING_KEY := $(LINEAGE_VERITY_CERTIFICATE)
endif
