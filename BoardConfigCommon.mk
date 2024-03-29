#
# Copyright (C) 2011 The Android Open-Source Project
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
USE_CAMERA_STUB := true

BOARD_FAMILY := celox

# inherit from common msm8660
-include device/samsung/msm8660-common/BoardConfigCommon.mk

# Kernel
BOARD_KERNEL_CMDLINE        := androidboot.hardware=qcom usb_id_pin_rework=true no_console_suspend=true zcache
BOARD_KERNEL_BASE           := 0x40400000
BOARD_KERNEL_PAGESIZE       := 2048
BOARD_MKBOOTIMG_ARGS        := --ramdisk_offset 0x01400000

BOARD_HAS_NO_SELECT_BUTTON := true

# Suppress the WIPE command since it can brick our EMMC
BOARD_SUPPRESS_EMMC_WIPE := true

# Disable initlogo, Samsungs framebuffer is weird
TARGET_NO_INITLOGO := true

# Preload the boot animation to avoid jerkiness
TARGET_BOOTANIMATION_PRELOAD := true

