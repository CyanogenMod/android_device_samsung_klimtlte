#
# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit from common exynos5420-common
-include device/samsung/exynos5420-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/klimtlte

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootloader
TARGET_OTA_ASSERT_DEVICE := klimtlte

# Kernel
TARGET_KERNEL_CONFIG := klimtlte_01_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/klimtwifi

# Battery
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Hardware
BOARD_HARDWARE_CLASS += device/samsung/klimtlte/cmhw

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12629049344

# PowerHAL
TARGET_POWERHAL_VARIANT := klimtlte

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.universal5420

# Scaler
BOARD_USES_SCALER := true

# SurfaceFlinger
BOARD_USES_SYNC_MODE_FOR_MEDIA := true

# Radio
BOARD_RIL_CLASS := ../../../device/samsung/klimtlte/ril

# inherit from the proprietary version
-include vendor/samsung/klimtlte/BoardConfigVendor.mk
