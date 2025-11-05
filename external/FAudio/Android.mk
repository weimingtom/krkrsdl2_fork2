LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE:= FAudio

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include \
	$(LOCAL_PATH)/src \
	$(LOCAL_PATH)/../SDL/include

LOCAL_CFLAGS += 

LOCAL_SRC_FILES := \
src/F3DAudio.c \
src/FACT3D.c \
src/FACT.c \
src/FACT_internal.c \
src/FAPOBase.c \
src/FAPOFX.c \
src/FAPOFX_echo.c \
src/FAPOFX_eq.c \
src/FAPOFX_masteringlimiter.c \
src/FAPOFX_reverb.c \
src/FAudio.c \
src/FAudioFX_reverb.c \
src/FAudioFX_volumemeter.c \
src/FAudio_internal.c \
src/FAudio_internal_simd.c \
src/FAudio_operationset.c \
src/FAudio_platform_sdl2.c \
src/FAudio_platform_win32.c \
src/XNA_Song.c

include $(BUILD_STATIC_LIBRARY)
