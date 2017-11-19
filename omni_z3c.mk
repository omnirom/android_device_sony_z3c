# Copyright (C) 2011 The Android Open Source Project
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

# Inherit OMNI common Phone stuff.
$(call inherit-product, device/sony/z3c/z3c.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 720p

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=D5803
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/D5803/D5833:6.0.1/23.5.A.1.291/2769308465:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="D5803-user 6.0.1 23.5.A.1.291 2769308465 release-keys"

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := omni_z3c
PRODUCT_DEVICE := z3c
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia Z3C

# Inherit from z3c device
$(call inherit-product, vendor/omni/config/gsm.mk)

