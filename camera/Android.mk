LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE        := NubiaCamera
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_MODULE_OWNER  := nubia
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES     := NubiaCamera.apk
LOCAL_CERTIFICATE   := shared
LOCAL_OVERRIDES_PACKAGES := Camera2

AV_LIBS := libavcodec.so libavfilter.so libavformat.so libavutil.so libnubia_delay_recorder.so
AV_SYMLINKS := $(addprefix $(TARGET_OUT_APPS)/$(LOCAL_MODULE)/lib/arm64/,$(notdir $(AV_LIBS)))

$(AV_SYMLINKS):
	@mkdir -p $(dir $@)
	ln -sf /system/lib64/$(notdir $@) $@

LOCAL_ADDITIONAL_DEPENDENCIES := $(AV_SYMLINKS)

include $(BUILD_PREBUILT)
