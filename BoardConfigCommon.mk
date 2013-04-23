# inherit from the proprietary version
#-include vendor/huawei/msm7x30-common/BoardConfigVendor.mk
TARGET_SPECIFIC_HEADER_PATH := device/huawei/msm7x30-common/include

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON :=true
ARCH_ARM_HAVE_VFP := true
TARGET_HAVE_TSLIB := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_COMPRESS_MODULE_SYMBOLS := false
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
BOARD_ALWAYS_INSECURE := true

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true

# Display
TARGET_NO_HW_VSYNC := true
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
BOARD_EGL_CFG := device/huawei/msm7x30-common/config/egl.cfg
DCHECK_FOR_EXTERNAL_FORMAT := true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE
TARGET_FORCE_CPU_UPLOAD := true
TARGET_GRALLOC_USES_ASHMEM := true
BOARD_NO_RGBX_8888 := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_USE_LEGACY_GRALLOC := true

# Web
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL := true
WEBCORE_INPAGE_VIDEO := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

#TARGET_KERNEL_SOURCE := kernel/huawei/honor
#TARGET_KERNEL_CONFIG := shendu_honor_defconfig
TARGET_PREBUILT_KERNEL := device/huawei/msm7x30-common/kernel

# Wifi
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE                := bcm4329
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/firmware.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/firmware_apsta.bin"
WIFI_DRIVER_MODULE_NAME          :=  "dhd"
WIFI_DRIVER_MODULE_ARG           :=  "firmware_path=/system/etc/firmware/firmware.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_BAND                        := 802_11_ABG
BOARD_USE_SERNUM_FOR_MAC := true

# Light
TARGET_USE_HUAWEI_LIBLIGHTS := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x30
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_GPS_LIBRARIES := libloc_api

# Vold
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 14

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 274464768
BOARD_USERDATAIMAGE_PARTITION_SIZE := 274464768
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_RMT_STORAGE := true
RECOVERY_CHARGEMODE := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
TARGET_RECOVERY_INITRC := device/huawei/msm7x30-common/recovery/recovery.rc
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/msm7x30-common/recovery_kernel
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

# Some more flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_ICS_COMPAT -DQCOM_ICS_DECODERS -DQCOM_NO_SECURE_PLAYBACK
