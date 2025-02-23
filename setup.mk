DOLBY_PATH := vendor/sony/dolby

# Inherit dolby configs
$(call inherit-product, vendor/sony/dolby/dolby-vendor.mk)

# Audio configs
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
TARGET_EXCLUDES_AUDIOFX := true

# DolbyManager
PRODUCT_PACKAGES += \
   DolbyManager

# Dolby properties
PRODUCT_PRODUCT_PROPERTIES += \
    persist.vendor.audio_fx.current=dolby \
    ro.vendor.audio.dolby.dax.support=true \
    ro.vendor.dolby.dax.version=DAX3_3.7.0.8_r1 \
    ro.audio.monitorWindowRotation=true \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DOLBY_PATH)/sepolicy/vendor
