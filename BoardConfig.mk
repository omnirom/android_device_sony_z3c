# Copyright (C) 2013 The CyanogenMod Project
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

# inherit from the shinano-common definitions
include device/sony/shinano-common/BoardConfigCommonOmni.mk

include device/sony/leo/twrp.mk

DEVICE_PATH := device/sony/aries

# Assert
TARGET_OTA_ASSERT_DEVICE := D5803,D5833,z3c,aries

TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

BOARD_HARDWARE_CLASS += $(DEVICE_PATH)/cmhw

# Kernel properties
TARGET_KERNEL_CONFIG := omni_shinano_aries_defconfig

TARGET_RECOVERY_DEVICE_MODULES += twrp.fstab

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 25
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12656242688 # 12656259072 - 16384

# Radio capabilities
BOARD_HAVE_RADIO := true

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Device-specific props
TARGET_SYSTEM_PROP += device/sony/aries/system.prop

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"

BOARD_KERNEL_SEPARATED_DT := true
