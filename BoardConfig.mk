#
# Copyright (C) 2022 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/infinix/X6532

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

TARGET_USES_64_BIT_BINDER := true

# Force any prefer32 targets to be compiled as 64 bit.
IGNORE_PREFER32_ON_DEVICE := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Assert
TARGET_OTA_ASSERT_DEVICE := Infinix-X6532,AGo-64 

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := Infinix-X6532
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 320

TARGET_NO_KERNEL := true
BOARD_RAMDISK_USE_LZ4 := true
BOARD_KERNEL_SEPARATED_DTBO := true

TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img

BOARD_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000
BOARD_PAGE_SIZE := 4096
BOARD_TAGS_OFFSET := 0x0bc08000
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_DTB_SIZE := 163731
BOARD_DTB_OFFSET := 0x0bc08000
BOARD_VENDOR_BASE := 0x40078000
BOARD_VENDOR_CMDLINE := bootopt=64S3,32N2,64N2

BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --vendor_cmdline $(BOARD_VENDOR_CMDLINE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_PAGE_SIZE) --board ""
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)

# Verified Boot
BOARD_AVB_ENABLE := true

# Encryption
BOARD_USES_METADATA_PARTITION := true
PLATFORM_VERSION := 16.1.0
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
PLATFORM_SECURITY_PATCH := 2099-12-31
BOOT_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Platform
TARGET_BOARD_PLATFORM := mt6768

# VNDK
BOARD_VNDK_VERSION := current

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Init
TARGET_INIT_VENDOR_LIB := libinit_Infinix-X6532
TARGET_RECOVERY_DEVICE_MODULES := libinit_Infinix-X6532

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_GENERIC_KERNEL_IMAGE := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

## Inherit partitions flags
include device/infinix/X6532/partitions.mk

#flags
include device/infinix/X6532/TW_flags.mk
