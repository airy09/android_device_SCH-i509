#
# Copyright (C) 2011 The Android Open Source Project
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
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/samsung/SCH-i509/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/SCH-i509/include

# Camera
BOARD_USE_FROYO_LIBCAMERA := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/SCH-i509/prebuilt/kernel
#TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/SCH-i509/prebuilt/recovery_kernel
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x13000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_PAGE_SIZE := 0x00001000

# Graphics
BOARD_EGL_CFG := device/samsung/SCH-i509/prebuilt/lib/egl/egl.cfg
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_USE_SCREENCAP := true
#BOARD_NO_RGBX_8888 := true


# Recovery
BOARD_BML_BOOT := /dev/block/bml9
BOARD_BML_RECOVERY := /dev/block/bml10
TARGET_BOOTLOADER_BOARD_NAME := SCH-i509
TARGET_OTA_ASSERT_DEVICE := SCH-i509,SCH-i509
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_LDPI_RECOVERY := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 248512512
BOARD_USERDATAIMAGE_PARTITION_SIZE := 203161600
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_RECOVERY_INITRC := device/samsung/SCH-i509/recovery.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/SCH-i509/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/SCH-i509/recovery/recovery_ui.c
TARGET_USERIMAGES_USE_EXT4 := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := SCH-i509
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# USB
BOARD_CUSTOM_USB_CONTROLLER := ../../device/samsung/SCH-i509/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# WiFi
BOARD_WLAN_ATHEROS_SDK      := true
BOARD_WEXT_NO_COMBO_SCAN    := true
PRODUCT_WIRELESS_TOOLS      := true
WPA_SUPPLICANT_VERSION      := VER_0_5_X
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
BOARD_WLAN_DEVICE           := ar6000
WIFI_DRIVER_MODULE_PATH     := "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := ar6000

# 3G
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# JIT / Optimizations
#WITH_DEXPREOPT := true
JS_ENGINE := v8

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := bcm2049
#BOARD_USE_BROADCOM_FM_VOLUME_HACK := true
