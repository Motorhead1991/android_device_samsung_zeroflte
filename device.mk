#
# Copyright (C) 2011 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/zeroflte

## (2) Also get non-open-source specific aspects if available
$(call inherit-product, vendor/samsung/zeroflte/zeroflte-vendor-blobs.mk)

#DEVICE_PACKAGE_OVERLAYS += device/samsung/zeroflte/overlay

# Boot animation and screen size
PRODUCT_AAPT_CONFIG := normal xxhdpi xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=640

# Device hardware info
PRODUCT_CHIPSET := Samsung Exynos 7
PRODUCT_CPU := Octocore Dual Arch Exynos7420
PRODUCT_GPU := Mali-T760MP8
PRODUCT_REAR_CAM := 16 MP, 2988 x 5312
PRODUCT_FRONT_CAM := 5 MP, 1440p
PRODUCT_SCREEN_SIZE := 5.1 inches ~577ppi (AMOLED Display)
PRODUCT_SCREEN_RES := $(TARGET_SCREEN_WIDTH) x $(TARGET_SCREEN_HEIGHT)

PRODUCT_PACKAGES += \
    fstab.samsungexynos7420 \
    init.baseband.rc \
    init.rilchip.rc \
    init.samsungexynos7420.rc \
    init.samsungexynos7420.usb.rc \
    ueventd.samsungexynos7420.rc

PRODUCT_COPY_FILES += \
    device/samsung/zeroflte/kernAl:kernel \
    device/samsung/zeroflte/file_contexts:recovery/root/prebuilt_file_contexts \
    device/samsung/zeroflte/init.recovery.samsungexynos7420.rc:root/init.recovery.samsungexynos7420.rc \
    device/samsung/zeroflte/twrp.fstab:recovery/root/etc/twrp.fstab \
    device/samsung/zeroflte/dtb:dt.img

