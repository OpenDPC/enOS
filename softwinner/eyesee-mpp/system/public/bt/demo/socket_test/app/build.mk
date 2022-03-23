TARGET_PATH :=$(call my-dir)

#########################################
include $(ENV_CLEAR)

TARGET_SRC :=   ../native/bluetooth.cpp \
                ../frameworks/adapter_property.cpp \
                ../frameworks/adapter_state.cpp \
                ../frameworks/bond_state.cpp \
                ../frameworks/bt_util.cpp \
                ../frameworks/remote_device.cpp \
                ./sock.cpp \
                ./main.cpp

TARGET_INC := $(TARGET_PATH) \
              $(TARGET_PATH)/../include \
              $(TARGET_TOP)/system/include

TARGET_CPPFLAGS += -DHAS_BDROID_BUILDCFG -DLINUX_NATIVE -DANDROID_USE_LOGCAT=FALSE -DSBC_FOR_EMBEDDED_LINUX
TARGET_LDFLAGS += -ldl -lpthread
TARGET_SHARED_LIB +=
TARGET_CFLAGS += -DHAS_BDROID_BUILDCFG -DLINUX_NATIVE -DANDROID_USE_LOGCAT=FALSE -DSBC_FOR_EMBEDDED_LINUX
TARGET_MODULE := btsock
include $(BUILD_BIN)

