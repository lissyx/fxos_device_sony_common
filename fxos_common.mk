# FxOS Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.moz.has_home_button=0 \
    ro.moz.ril.subscription_control=true

# FxOS Bluedroid
PRODUCT_PACKAGES += \
    bluetooth.default

# FxOS GPS
PRODUCT_PACKAGES += \
    libandroid_runtime

# FxOS RIL
PRODUCT_PACKAGES += \
    rilproxy \

# Common generic Sony Resources
$(call inherit-product, device/sony/common/common.mk)

