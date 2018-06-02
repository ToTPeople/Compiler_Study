LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos_tolua_static
LOCAL_MODULE_FILENAME := libtolua

# 编译源文件，需要去掉路径前缀；不然使用库时可能会有问题
LS_C=$(subst $(LOCAL_PATH)/,,$(wildcard $(1)/*.c))

LOCAL_SRC_FILES :=  $(call LS_C,$(LOCAL_PATH)/src)


include $(BUILD_STATIC_LIBRARY)
