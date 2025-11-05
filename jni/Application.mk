#ndk-build NDK_DEBUG=1 -j8

#gnustl_static failed
#APP_STL := gnustl_static
APP_STL := c++_static
#APP_STL := stlport_static

#https://www.cnblogs.com/wanggang123/p/13955010.html
#android-24 tested, android-20 failed
APP_PLATFORM := android-21
#APP_PLATFORM := android-20

APP_CPPFLAGS := -frtti -std=c++11 -fpermissive -fexceptions -Wno-undefined-bool-conversion -Wno-null-dereference 
#-D__ANDROID_API__=21
#-fsigned-char 
APP_LDFLAGS := -latomic 

#ifeq ($(NDK_DEBUG),1)
############for more logcat info, see TVP_LOG_TO_COMMANDLINE_CONSOLE and TVPAddLog and __android_log_print, use 'adb logcat -s krkrz'
  APP_CPPFLAGS += -D_DEBUG
  APP_OPTIM := debug
#else
#  APP_CPPFLAGS += -DNDEBUG
#  APP_OPTIM := release
#endif

#don't use armeabi, see libjpeg-turbo
APP_ABI := armeabi-v7a
#APP_ABI := arm64-v8a

