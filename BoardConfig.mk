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

# Inherit from common klimt-common
-include device/samsung/klimt-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/klimtlte

# Bootloader
TARGET_OTA_ASSERT_DEVICE := klimtlte

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_deathly_klimtlte_defconfig

# PowerHAL
TARGET_POWERHAL_VARIANT := klimtlte

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.universal5420

# Radio
BOARD_RIL_CLASS := ../../../device/samsung/klimtlte/ril

# inherit from the proprietary version
-include vendor/samsung/klimtlte/BoardConfigVendor.mk
