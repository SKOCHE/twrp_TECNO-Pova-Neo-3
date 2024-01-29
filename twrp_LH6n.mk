#
# Copyright (C) 2022 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := LH6n

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from LH6n device
$(call inherit-product, device/Tecno/LH6n/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := LH6n
PRODUCT_NAME := twrp_LH6n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LH6n
PRODUCT_MANUFACTURER := TECNO

PRODUCT_BUILD_PROP_OVERRIDES += \
PRIVATE_BUILD_DESC="vnd_lh6n_h6930-user 12 SP1A.210812.016 505468 release-keys"
BUILD_FINGERPRINT := TECNO/LH6n-OP/TECNO-LH6n:12/SP1A.210812.016/231217V1603:user/release-keys
