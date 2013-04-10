$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_as_supl.mk)
$(call inherit-product, vendor/huawei/msm7x30-common/msm7x30-common-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/msm7x30-common/overlay

PRODUCT_LOCALES += hdpi
#PRODUCT_LOCALES := zh_CN zh_TW en_US

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x30 \
	audio_policy.msm7x30 \
    audio.a2dp.default \
    libaudioutils

# Display
PRODUCT_PACKAGES += \
	copybit.msm7x30 \
	gralloc.msm7x30 \
	libmemalloc \
	lights.msm7x30 \
	libqdutils \
	libgenlock \
	hwcomposer.msm7x30 \
	libhwcexternal \
	libhwcservice \
	liboverlay \
	libtilerenderer

# GPS
PRODUCT_PACKAGES += \
	gps.msm7x30 \
	libloc_api-rpc

# Media
PRODUCT_PACKAGES += \
	libI420colorconvert \
	libstagefrighthw \
	libOmxCore \
	libmm-omxcore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	mm-venc-omx-test720p \
    mm-video-encdrv-test \
    mm-vdec-omx-test \
    mm-video-driver-test

# Power
PRODUCT_PACKAGES += \
	power.msm7x30

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
	DisplayFix
	
# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    e2fsck

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# iptables
PRODUCT_PACKAGES += \
	iptables \
	ip6tables

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.faketouch.multitouch.distinct.xml:system/etc/permissions/android.hardware.faketouch.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.faketouch.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.faketouch.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Ramdisk files
PRODUCT_COPY_FILES += \
	device/huawei/msm7x30-common/ramdisk/init.huawei.rc:root/init.huawei.rc \
	device/huawei/msm7x30-common/ramdisk/init.huawei.usb.rc:root/init.huawei.usb.rc \
	device/huawei/msm7x30-common/ramdisk/init.qcom.sh:root/init.qcom.sh \
	device/huawei/msm7x30-common/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
	device/huawei/msm7x30-common/ramdisk/ueventd.huawei.rc:root/ueventd.huawei.rc
	
# Config files
PRODUCT_COPY_FILES += \
	device/huawei/msm7x30-common/config/AudioFilter.csv:system/etc/AudioFilter.csv \
	device/huawei/msm7x30-common/config/audio_policy.conf:system/etc/audio_policy.conf \
	device/huawei/msm7x30-common/config/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
	device/huawei/msm7x30-common/config/BCM4329.hcd:system/etc/bluetooth/BCM4329.hcd \
	device/huawei/msm7x30-common/config/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
	device/huawei/msm7x30-common/config/egl.cfg:system/lib/egl/egl.cfg \
	device/huawei/msm7x30-common/config/init.bcm.bt.sh:system/etc/bluetooth/init.bcm.bt.sh \
	device/huawei/msm7x30-common/config/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
	device/huawei/msm7x30-common/config/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
	device/huawei/msm7x30-common/config/media_codecs.xml:system/etc/media_codecs.xml \
	device/huawei/msm7x30-common/config/media_profiles.xml:system/etc/media_profiles.xml \
	device/huawei/msm7x30-common/config/nvram.txt:system/etc/wifi/nvram.txt \
	device/huawei/msm7x30-common/config/vold.fstab:system/etc/vold.fstab \
	device/huawei/msm7x30-common/config/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/huawei/msm7x30-common/config/dhd.ko:system/lib/modules/dhd.ko
    
# Firmware
PRODUCT_COPY_FILES += \
	device/huawei/msm7x30-common/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
	device/huawei/msm7x30-common/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
	device/huawei/msm7x30-common/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
	device/huawei/msm7x30-common/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
	device/huawei/msm7x30-common/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
	device/huawei/msm7x30-common/firmware/cyttsp_7630_fluid.hex:system/etc/firmware/cyttsp_7630_fluid.hex \
	device/huawei/msm7x30-common/firmware/firmware.bin:system/etc/firmware/firmware.bin \
	device/huawei/msm7x30-common/firmware/firmware_apsta.bin:system/etc/firmware/firmware_apsta.bin \
	device/huawei/msm7x30-common/firmware/firmware_both.bin:system/etc/firmware/firmware_both.bin \
	device/huawei/msm7x30-common/firmware/firmware_test.bin:system/etc/firmware/firmware_test.bin \
	device/huawei/msm7x30-common/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
	device/huawei/msm7x30-common/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
	device/huawei/msm7x30-common/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
	device/huawei/msm7x30-common/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
	device/huawei/msm7x30-common/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
	device/huawei/msm7x30-common/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
	device/huawei/msm7x30-common/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
	device/huawei/msm7x30-common/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
	device/huawei/msm7x30-common/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
	device/huawei/msm7x30-common/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
	device/huawei/msm7x30-common/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# usr files
PRODUCT_COPY_FILES += \
	device/huawei/msm7x30-common/idc/atmel-rmi-touchscreen.idc:system/usr/idc/atmel-rmi-touchscreen.idc \
	device/huawei/msm7x30-common/idc/synaptics.idc:system/usr/idc/synaptics.idc \
	device/huawei/msm7x30-common/keychars/surf_keypad.kcm:system/usr/keychars/surf_keypad.kcm \
	device/huawei/msm7x30-common/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
	device/huawei/msm7x30-common/keylayout/fluid-keypad.kl:system/usr/keylayout/fluid-keypad.kl \
	device/huawei/msm7x30-common/keylayout/msm_tma300_ts.kl:system/usr/keylayout/msm_tma300_ts.kl \
	device/huawei/msm7x30-common/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/huawei/msm7x30-common/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# Props
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.heapstartsize=5m
	dalvik.vm.heapgrowthlimit=32m
	dalvik.vm.heapsize=80m
	dalvik.vm.dexopt-data-only=0

$(call inherit-product, build/target/product/full.mk)
#$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
