# inherit from the proprietary version
-include vendor/lge/i_dcm/BoardConfigVendor.mk

-include device/lge/iprj-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := i_dcm
TARGET_OTA_ASSERT_DEVICE := i_dcm,l01d,L01D,p930,vs920,su640

# Try to build the kernel
TARGET_KERNEL_CONFIG := cyanogenmod_i_dcm_defconfig
# Keep this as a fallback
# TARGET_PREBUILT_KERNEL := device/lge/i_dcm/kernel

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/i_dcm/bluetooth

TARGET_RECOVERY_FSTAB = device/lge/i_dcm/fstab.iprj

# TWRP flags
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_USB_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
