#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2020-2021 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

# Version and Variant
export FOX_VERISON="R12.1"
export FOX_VARIANT="A14"
export FOX_BUILD_TYPE="Test 4"

#OTA
export OF_DISABLE_OTA_MENU=1
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export TARGET_ARCH=arm
export TARGET_DEVICE_ALT="Infinix-X6532,X6532"
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1

export OF_FLASHLIGHT_ENABLE=1

export OF_MAINTAINER="chongkessob"

# OrangeFox Addons
export FOX_USE_BASH_SHELL=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_ASH_IS_BASH=1
export OF_ENABLE_LPTOOLS=1
export FOX_DELETE_MAGISK_ADDON=1
export FOX_DELETE_AROMAFM=1
export FOX_ENABLE_APP_MANAGER=1
export OF_SUPPORT_VBMETA_AVB2_PATCHING=1

export FOX_VENDOR_BOOT_RECOVERY=1

export FOX_USE_DATA_RECOVERY_FOR_SETTINGS=1

export OF_LOOP_DEVICE_ERRORS_TO_LOG=1

export OF_USE_LZ4_COMPRESSION=true

# Fix Battery
export OF_USE_LEGACY_BATTERY_SERVICES=1

export OF_SCREEN_H=2400
export OF_STATUS_H=95
export OF_STATUS_INDENT_LEFT=52
export OF_STATUS_INDENT_RIGHT=52
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=1

export OF_DEFAULT_TIMEZONE="CET-1"
