$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/bq/bardock_pro/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += device/bq/bardock_pro/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := bardock_pro
PRODUCT_NAME := omni_bardock_pro
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris X Pro
PRODUCT_MANUFACTURER := bq

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=bardock-pro PRODUCT_NAME=bardock-pro
