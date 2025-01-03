ifneq ($(filter a15x,$(TARGET_DEVICE)),)

LOCAL_PATH := device/samsung/a15x

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
