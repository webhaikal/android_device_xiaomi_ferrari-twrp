#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Product-specific compile-time definitions.
#

LOCAL_PATH := device/xiaomi/ferrari

TARGET_BOARD_VENDOR := xiaomi

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_VARIANT := msm8939
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_PREBUILT_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt $(LOCAL_PATH)/prebuilt/dt.img
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Partitions
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOTIMAGE_PARTITION_SIZE      := 0x002000000
BOARD_CACHEIMAGE_PARTITION_SIZE     := 0x018000000
BOARD_PERSISTIMAGE_PARTITION_SIZE   := 0x002000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 0x002000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 0x068000000
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 0x307dfbc00
BOARD_FLASH_BLOCK_SIZE := 131072

# Crypto
#TARGET_HW_DISK_ENCRYPTION := false
#TW_INCLUDE_CRYPTO := true

#Recovery
BOARD_SUPPRESS_EMMC_WIPE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp.fstab
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"
TWHAVE_SELINUX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_EXCLUDE_SUPERSU := true
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_NO_USB_STORAGE := true
TW_OEM_BUILD := false
TW_THEME := portrait_hdpi

#MultiROM config. MultiROM also uses parts of TWRP config
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := $(LOCAL_PATH)/multirom/mr_init_devices.c
MR_DPI := xhdpi
MR_DPI_FONT := 340
MR_FSTAB := $(LOCAL_PATH)/multirom/mrom.fstab
MR_KEXEC_MEM_MIN := 0x82000000
MR_KEXEC_DTB := true
MR_USE_MROM_FSTAB := true
MR_CONTINUOUS_FB_UPDATE := true
MR_NO_KEXEC := enabled
TARGET_RECOVERY_IS_MULTIROM := true
