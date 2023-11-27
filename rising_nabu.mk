# Copyright (C) 2023 The LineageOS Project
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

# Inherit some common Rising stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

RISING_CHIPSET := SDM860
RISING_DEVICE := nabu
#TARGET_FACE_UNLOCK_SUPPORTED := true
#EXTRA_UDFPS_ANIMATIONS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
RISING_MAINTAINER := Badr98-t
WITH_GMS := true
TARGET_BUILD_APERTURE_CAMERA := true

# Inherit some common AOSP stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration for nabu.
$(call inherit-product, device/xiaomi/nabu/device.mk)

PRODUCT_NAME := rising_nabu
PRODUCT_DEVICE := nabu
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Xiaomi Pad 5

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="nabu_global-user 12 SKQ1.220303.001 V13.1.4.0.SKXMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/nabu_global/nabu:12/RKQ1.200826.002/V13.1.4.0.SKXMIXM:user/release-keys