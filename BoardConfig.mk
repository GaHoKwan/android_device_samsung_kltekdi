# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common klte
-include device/samsung/klte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := kltekdi,klte

# Kernel
BOARD_KERNEL_SEPARATED_DT := false
TARGET_KERNEL_CONFIG := 
TARGET_KERNEL_VARIANT_CONFIG := 
TARGET_KERNEL_SELINUX_CONFIG :=
TARGET_KERNEL_SOURCE :=

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/samsung/kltekdi/init/init_klte.cpp
TARGET_UNIFIED_DEVICE := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --dt device/samsung/kltekdi/dtb --tags_offset 0x01e00000

# NFC
BOARD_NFC_CHIPSET := pn547

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_CACHEIMAGE_PARTITION_SIZE := 524288000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2631925760
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28222406144

TARGET_PREBUILT_KERNEL := device/samsung/kltekdi/kernel

# inherit from the proprietary version
-include vendor/samsung/kltekdi/BoardConfigVendor.mk

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

TARGET_RECOVERY_FSTAB := device/samsung/kltekdi/recovery/recovery.fstab
#TWRP specific build flags
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_BRIGHTNESS_PATH := "/sys/devices/mdp.0/qcom\x2cmdss_fb_primary.192/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_NO_EXFAT_FUSE := false
TW_NO_EXFAT := false
GET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_MTP := true
TARGET_USERIMAGES_USE_F2FS := false
TW_BUILD_ZH_CN_SUPPORT := true

# LZMA ramdisk
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/kltekdi/custombootimg.mk
