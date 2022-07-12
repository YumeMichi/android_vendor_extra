# Default ADB shell prompt
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.adb.shell=/system_ext/bin/bash

# Google Apps
ifeq ($(WITH_GMS), true)
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
endif

# ih8sn
PRODUCT_PACKAGES += ih8sn

PRODUCT_COPY_FILES += \
    vendor/extra/ih8sn/ih8sn.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/ih8sn.conf

# iperf3
PRODUCT_PACKAGES += iperf3

# tinymix
PRODUCT_PACKAGES += tinymix
