# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from z2pro device
$(call inherit-product, device/nubia/nx569j/full_nx569j.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)


TARGET_VENDOR := ZUK
PRODUCT_NAME := lineage_z2pro
PRODUCT_DEVICE := z2pro
PRODUCT_MANUFACTURER := ZUK
PRODUCT_BRAND := ZUK
PRODUCT_MODEL := ZUK Z2121

PRODUCT_GMS_CLIENTID_BASE := android-zuk

TARGET_VENDOR_PRODUCT_NAME := z2_row
TARGET_VENDOR_DEVICE_NAME := z2_row
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=z2_row PRODUCT_NAME=z2_row

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=ZUK/z2_row/z2_row:7.0/NRD90M/2.5.335_170116:user/release-keys \
    PRIVATE_BUILD_DESC="z2_row-user 7.0 NRD90M 2.5.335_170116 release-keys"

TARGET_VENDOR := ZUK

-include vendor/aicp/configs/bootanimation.mk
