#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from nx569j device
$(call inherit-product, device/nubia/nx569j/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_PROPERTY_OVERRIDES += \
    ro.mk.maintainer=chenzc

BOARD_VENDOR := nubia

PRODUCT_GMS_CLIENTID_BASE := android-nubia

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=nubia/NX569J/NX569J:6.0.1/MMB29M/nubia04232153:user/release-keys \
    PRIVATE_BUILD_DESC="NX569J-user 6.0.1 MMB29M eng.nubia.20170423.215159 release-keys"
endif
