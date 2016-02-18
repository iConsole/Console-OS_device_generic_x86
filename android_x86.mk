#
# Copyright (C) 2016 Console, Inc.
# Copyright (C) 2014 The Android-x86 Open Source Project
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

# includes the base of Android-x86 platform
$(call inherit-product,device/generic/common/x86.mk)

# Open Gapps (disabled)
#$(call inherit-product, vendor/google/build/opengapps-packages.mk)
#GAPPS_VARIANT := pico

# Overrides
PRODUCT_NAME := android_x86
PRODUCT_BRAND := Android-x86
PRODUCT_DEVICE := x86
PRODUCT_MODEL := Generic Android-x86

# Console: Added to force kernel back to 32-bit
# This switch forces a 32-bit clean build of Android
# This is good for devices that have driver or component issues with 64-bit
# By default, the kernel will build as 64-bit in Mixed Mode for Lollipop and beyond
#TARGET_KERNEL_ARCH := x86
#TARGET_CPU_VARIANT := x86
