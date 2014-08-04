# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# Boot Logo
PRODUCT_COPY_FILES += \
     device/sony/common/bootlogo/$(TARGET_SCREEN_WIDTH)x$(TARGET_SCREEN_HEIGHT).rle:root/logo.rle

# Offline charging animation
PRODUCT_COPY_FILES += \
     device/sony/common/animations/charging_animation_01.png:system/semc/chargemon/data/charging_animation_01.png \
     device/sony/common/animations/charging_animation_02.png:system/semc/chargemon/data/charging_animation_02.png \
     device/sony/common/animations/charging_animation_03.png:system/semc/chargemon/data/charging_animation_03.png \
     device/sony/common/animations/charging_animation_04.png:system/semc/chargemon/data/charging_animation_04.png \
     device/sony/common/animations/charging_animation_05.png:system/semc/chargemon/data/charging_animation_05.png \
     device/sony/common/animations/charging_animation_06.png:system/semc/chargemon/data/charging_animation_06.png \
     device/sony/common/animations/charging_animation_07.png:system/semc/chargemon/data/charging_animation_07.png \
     device/sony/common/animations/non-charging_animation_01.png:system/semc/chargemon/data/non-charging_animation_01.png \
     device/sony/common/animations/non-charging_animation_02.png:system/semc/chargemon/data/non-charging_animation_02.png \
     device/sony/common/animations/non-charging_animation_03.png:system/semc/chargemon/data/non-charging_animation_03.png \
     device/sony/common/animations/non-charging_animation_04.png:system/semc/chargemon/data/non-charging_animation_04.png \
     device/sony/common/animations/non-charging_animation_05.png:system/semc/chargemon/data/non-charging_animation_05.png \
     device/sony/common/animations/non-charging_animation_06.png:system/semc/chargemon/data/non-charging_animation_06.png \
     device/sony/common/animations/non-charging_animation_07.png:system/semc/chargemon/data/non-charging_animation_07.png

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/audio.conf:system/etc/bluetooth/audio.conf \
    system/bluetooth/data/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
    system/bluetooth/data/blacklist.conf:system/etc/bluetooth/blacklist.conf \
    system/bluetooth/data/input.conf:system/etc/bluetooth/input.conf \
    system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf \
    system/bluetooth/data/network.conf:system/etc/bluetooth/network.conf \

# Audio
PRODUCT_PACKAGES += \
    audio_policy.$(QCOM_CHIPSET_FAMILY) \
    audio.primary.$(QCOM_CHIPSET_FAMILY) \
    audio.a2dp.default \
    audio_policy.default \
    audio.primary.default \
    audio.r_submix.default \
    audio.usb.default \
    libaudioparameter \
    libaudio-resampler \
    tinymix

# BT
PRODUCT_PACKAGES += \
    hci_qcomm_init

# Camera wrapper
PRODUCT_PACKAGES += \
    camera.qcom

# Display
PRODUCT_PACKAGES += \
    copybit.$(QCOM_CHIPSET_FAMILY) \
    gralloc.$(QCOM_CHIPSET_FAMILY) \
    hwcomposer.$(QCOM_CHIPSET_FAMILY) \
    memtrack.$(QCOM_CHIPSET_FAMILY) \
    libmemalloc \
    liboverlay \
    libqdutils \
    libI420colorconvert

ifeq ($(QCOM_CHIPSET_FAMILY),msm8960)
# Display
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libgenlock \
    libtilerenderer
endif

# Filesystem tools
PRODUCT_PACKAGES += \
    ks \
    qcks \
    efsks \
    e2fsck \
    make_ext4fs \
    setup_fs
    
# Lights wrapper
PRODUCT_PACKAGES += \
    lights.qcom

#MM_AUDIO
PRODUCT_PACKAGES += \
    libOmxAacDec \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxMp3Dec \
    libOmxQcelp13Enc \
    libOmxAc3HwDec

#MM_CORE
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore

#MM_VIDEO
PRODUCT_PACKAGES += \
    libdashplayer \
    libdivxdrmdecrypt \
    liblasic \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# NFC Support
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Power
PRODUCT_PACKAGES += \
    power.qcom

# QCOM libQD
PRODUCT_PACKAGES += \
    libqdMetaData \
    libqdutils

# Qualcomm random numbers generator
PRODUCT_PACKAGES += \
    qrngd

# Recovery
PRODUCT_PACKAGES += \
    extract_elf_ramdisk \
    librecovery

# SoftAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg \
    libqsap_sdk

# WIFI MAC update
PRODUCT_PACKAGES += \
    mac-update

# Wifi service
PRODUCT_PACKAGES += \
    wcnss_service

# QCOM RIL Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    persist.radio.apm_sim_not_pwdn=1
