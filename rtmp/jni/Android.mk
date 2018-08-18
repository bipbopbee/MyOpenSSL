LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
 
include $(CLEAR_VARS)
LOCAL_MODULE    := crypto
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_SRC_FILES := $(LOCAL_PATH)/../../libs/armeabi-v7a/libcrypto.so
else
    ifeq ($(TARGET_ARCH_ABI),armeabi)
        LOCAL_SRC_FILES := $(LOCAL_PATH)/../../libs/armeabi/libcrypto.so
    endif
endif  
include $(PREBUILT_SHARED_LIBRARY)
###########################################
include $(CLEAR_VARS)
LOCAL_MODULE    := ssl
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_SRC_FILES := $(LOCAL_PATH)/../../libs/armeabi-v7a/libssl.so
else
    ifeq ($(TARGET_ARCH_ABI),armeabi)
        LOCAL_SRC_FILES := $(LOCAL_PATH)/../../libs/armeabi/libssl.so
    endif
endif
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../../include/openssl
include $(PREBUILT_SHARED_LIBRARY)
###########################################
 
include $(CLEAR_VARS)
 
LOCAL_SRC_FILES:= \
		librtmp/amf.c      \
		librtmp/hashswf.c  \
		librtmp/log.c      \
		librtmp/parseurl.c \
		librtmp/rtmp.c
 
LOCAL_LDLIBS    += -lm -llog -lz
LOCAL_CFLAGS +=  -D__STDC_CONSTANT_MACROS
 
LOCAL_C_INCLUDES :=                    		\
		$(LOCAL_PATH)                   \
		$(LOCAL_PATH)/../../include
 
LOCAL_MODULE:= librtmp
 
LOCAL_STATIC_LIBRARIES := \
			crypto \
			ssl
 
 
LOCAL_MODULE_TAGS:= optional
 
include $(BUILD_SHARED_LIBRARY)
