# BLOBs init script
PRODUCT_COPY_FILES += $(LOCAL_PATH)/releasetools/initblobs.sh:initblobs.sh
PRODUCT_COPY_FILES += $(LOCAL_PATH)/releasetools/build.prop.dual:build.prop.dual

# Add the script in update.zip
TARGET_RELEASETOOLS_EXTENSIONS := device/sony/z3/releasetools
