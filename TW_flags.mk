#build hacks
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Vendor Modules
TW_LOAD_VENDOR_MODULES := $(shell echo \"$(shell ls $(DEVICE_PATH)/recovery/root/lib/modules) $(shell ls $(DEVICE_PATH)/recovery/root/vendor/lib/modules)\")

# TWRP Configuration
#TW_THEME := portrait_hdpi
#TW_EXTRA_LANGUAGES := true
#TW_INPUT_BLACKLIST := "hbtp_vm"
#TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
#TW_INCLUDE_NTFS_3G := true
#TW_USE_TOOLBOX := true
#RECOVERY_SDCARD_ON_DATA := true
#TW_USE_EXTERNAL_STORAGE := true
#TW_EXCLUDE_DEFAULT_USB_INIT := true
#TW_EXCLUDE_TWRPAPP := true
#TW_NO_BIND_SYSTEM := true
#TW_NO_SCREEN_BLANK := true
#TW_NO_LEGACY_PROPS := true
#TW_OVERRIDE_SYSTEM_PROPS := "ro.build.version.sdk"
#BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
#TW_DEFAULT_BRIGHTNESS := 500
#TW_MAX_BRIGHTNESS := 4000

#maintainer
BOARD_MAINTAINER_NAME := Chongkessob | X6532
TW_DEVICE_VERSION := $(BOARD_MAINTAINER_NAME)
OF_MAINTAINER := $(BOARD_MAINTAINER_NAME)
PB_MAIN_VERSION := $(BOARD_MAINTAINER_NAME)

# resetprop & repacktools
#TW_INCLUDE_RESETPROP := true
#TW_INCLUDE_REPACKTOOLS := true
#TW_INCLUDE_LIBRESETPROP := true

# Debugging
#TWRP_EVENT_LOGGING := true
#TWRP_INCLUDE_LOGCAT := true
#TARGET_USES_LOGD := true

# Apex
#TW_EXCLUDE_APEX := true

# Tools
TW_INCLUDE_FB2PNG := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_RESETPROP_SOURCE := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_LIBRESETPROP_SOURCE := true

# TWRP Configs
TW_DEFAULT_BRIGHTNESS := 2047
TW_MAX_BRIGHTNESS := 4095
TW_EXCLUDE_APEX := true
TW_EXCLUDE_LPDUMP := true
TW_EXTRA_LANGUAGES := true
TW_FRAMERATE := 60
TW_THEME := portrait_hdpi
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TARGET_USES_MKE2FS := true
TW_STATUS_ICONS_ALIGN := center
TW_NO_CPU_TEMP := true
TW_Y_OFFSET := 100
TW_H_OFFSET := -100
