LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := main

## for krkrsdl2
#LOCAL_CFLAGS += -DUSE_SDL2_DISPLAY=1

LOCAL_CFLAGS += -DHAVE_CONFIG_H   # opus, onig, libpng, libogg, freetype
LOCAL_CFLAGS += -DFT2_BUILD_LIBRARY  #freetype2
LOCAL_CFLAGS += -DUSE_ALLOCA  #opus, angle
LOCAL_CFLAGS += -DOPUS_BUILD  #opus
LOCAL_CFLAGS += -DHAVE_LRINTF  #opus
LOCAL_CFLAGS += -DHAVE_LRINT  #opus
LOCAL_CFLAGS += -DFLOAT_APPROX  #opus
LOCAL_CFLAGS += -DPNG_ARM_NEON_OPT=0 #lpng

LOCAL_CFLAGS += -DTVP_COMPILING_KRKRSDL2
LOCAL_CFLAGS += -DTVP_OPUS_DECODER_IMPLEMENT
LOCAL_CFLAGS += -DTVP_LOG_TO_COMMANDLINE_CONSOLE
LOCAL_CFLAGS += -DTVP_FAUDIO_IMPLEMENT
###LOCAL_CFLAGS += -DKRKRZ_ENABLE_CANVAS
LOCAL_CFLAGS += -DTVP_COMPILING_KRKRSDL2

LOCAL_CFLAGS += -DTVP_TEXT_READ_ANSI_MBCS=1
LOCAL_CFLAGS += -DUSE_KIRIKIROID2_TEXTSTREAM=1
LOCAL_CFLAGS += -DUSE_KIRIKIROID2_OGGVORBIS=1
LOCAL_CFLAGS += -DUSE_DEBUG_INPUT=1
LOCAL_CFLAGS += -DUSE_SKIP_PLUGIN=1 
LOCAL_CFLAGS += -DUSE_SKIP_FONT=1
LOCAL_CFLAGS += -DUSE_POLYFILL=1
LOCAL_CFLAGS += -DUSE_NO_TRANSITION_ERROR=1

LOCAL_CPPFLAGS += -std=c++11

LOCAL_CPP_FEATURES += exceptions
LOCAL_C_INCLUDES += \
$(LOCAL_PATH)/../environ/ \
$(LOCAL_PATH)/../environ/sdl2 \
$(LOCAL_PATH)/../tjs2 \
$(LOCAL_PATH)/../external/onig/src \
$(LOCAL_PATH)/../external/lpng \
$(LOCAL_PATH)/../external/freetype/include \
$(LOCAL_PATH)/../external/libjpeg-turbo \
$(LOCAL_PATH)/../external/libjpeg-turbo/android \
$(LOCAL_PATH)/../external/glm \
$(LOCAL_PATH)/../external/opusfile/include \
$(LOCAL_PATH)/../external/libogg/include \
$(LOCAL_PATH)/../external/opus/include \
$(LOCAL_PATH)/../external/SDL/include \
$(LOCAL_PATH)/../external \
$(LOCAL_PATH)/../external/simde \
$(LOCAL_PATH)/../external/FAudio/include \
$(LOCAL_PATH)/../base \
$(LOCAL_PATH)/../base/sdl2 \
$(LOCAL_PATH)/../extension \
$(LOCAL_PATH)/../sound \
$(LOCAL_PATH)/../sound/sdl2 \
$(LOCAL_PATH)/../movie \
$(LOCAL_PATH)/../msg \
$(LOCAL_PATH)/../msg/sdl2 \
$(LOCAL_PATH)/../utils \
$(LOCAL_PATH)/../utils/sdl2 \
$(LOCAL_PATH)/../visual \
$(LOCAL_PATH)/../visual/sdl2 \
$(LOCAL_PATH)/../visual/sdl2/opengl \
$(LOCAL_PATH)/../visual/gl \
$(LOCAL_PATH)/../visual/opengl \
$(LOCAL_PATH)/../visual/IA32 \
$(LOCAL_PATH)/../sdl2 \
$(LOCAL_PATH)/../config \
$(LOCAL_PATH)/../plugins \
$(NDK)/source/cpufeatures \
$(LOCAL_PATH)/../external/libvorbis-1.2.0/include

LOCAL_SRC_FILES := \
../tjs2/tjs.cpp \
../tjs2/tjs.tab.cpp \
../tjs2/tjsArray.cpp \
../tjs2/tjsBinarySerializer.cpp \
../tjs2/tjsByteCodeLoader.cpp \
../tjs2/tjsCompileControl.cpp \
../tjs2/tjsConfig.cpp \
../tjs2/tjsConstArrayData.cpp \
../tjs2/tjsDate.cpp \
../tjs2/tjsdate.tab.cpp \
../tjs2/tjsDateParser.cpp \
../tjs2/tjsDebug.cpp \
../tjs2/tjsDictionary.cpp \
../tjs2/tjsDisassemble.cpp \
../tjs2/tjsError.cpp \
../tjs2/tjsException.cpp \
../tjs2/tjsGlobalStringMap.cpp \
../tjs2/tjsInterCodeExec.cpp \
../tjs2/tjsInterCodeGen.cpp \
../tjs2/tjsInterface.cpp \
../tjs2/tjsLex.cpp \
../tjs2/tjsMath.cpp \
../tjs2/tjsMessage.cpp \
../tjs2/tjsMT19937ar-cok.cpp \
../tjs2/tjsNamespace.cpp \
../tjs2/tjsNative.cpp \
../tjs2/tjsObject.cpp \
../tjs2/tjsObjectExtendable.cpp \
../tjs2/tjsOctPack.cpp \
../tjs2/tjspp.tab.cpp \
../tjs2/tjsRandomGenerator.cpp \
../tjs2/tjsRegExp.cpp \
../tjs2/tjsScriptBlock.cpp \
../tjs2/tjsScriptCache.cpp \
../tjs2/tjsSnprintf.cpp \
../tjs2/tjsString.cpp \
../tjs2/tjsUtils.cpp \
../tjs2/tjsVariant.cpp \
../tjs2/tjsVariantString.cpp \
../base/BinaryStream.cpp \
../base/CharacterSet.cpp \
../base/EventIntf.cpp \
../base/PluginIntf.cpp \
../base/ScriptMgnIntf.cpp \
../base/StorageIntf.cpp \
../base/SysInitIntf.cpp \
../base/SystemIntf.cpp \
../base/TextStream.cpp \
../base/UtilStreams.cpp \
../base/XP3Archive.cpp \
../base/sdl2/AndroidAssetManager.c \
../base/sdl2/EventImpl.cpp \
../base/sdl2/FileSelector.cpp \
../base/sdl2/FuncStubs.cpp \
../base/sdl2/NativeEventQueue.cpp \
../base/sdl2/PluginImpl.cpp \
../base/sdl2/ScriptMgnImpl.cpp \
../base/sdl2/StorageImpl.cpp \
../base/sdl2/SysInitImpl.cpp \
../base/sdl2/SystemImpl.cpp \
../environ/TouchPoint.cpp \
../environ/sdl2/Application.cpp \
../environ/sdl2/DetectCPU.cpp \
../environ/sdl2/SystemControl.cpp \
../extension/Extension.cpp \
../msg/MsgIntf.cpp \
../msg/sdl2/MsgImpl.cpp \
../msg/sdl2/MsgLoad.cpp \
../sound/MathAlgorithms.cpp \
../sound/PhaseVocoderDSP.cpp \
../sound/PhaseVocoderFilter.cpp \
../sound/QueueSoundBufferImpl.cpp \
../sound/RealFFT.cpp \
../sound/SoundBufferBaseIntf.cpp \
../sound/SoundBufferBaseImpl.cpp \
../sound/SoundDecodeThread.cpp \
../sound/SoundEventThread.cpp \
../sound/SoundPlayer.cpp \
../sound/WaveFormatConverter.cpp \
../sound/WaveIntf.cpp \
../sound/WaveLoopManager.cpp \
../sound/WaveSegmentQueue.cpp \
../sound/OpusCodecDecoder.cpp \
../sound/xmmlib.cpp \
../sound/sdl2/AudioDeviceCreator.cpp \
../sound/sdl2/FAudioDevice.cpp \
../sound/sdl2/NullAudioDevice.cpp \
../sound/sdl2/OpenALWaveMixer.cpp \
../sound/sdl2/WaveImpl.cpp \
../utils/ClipboardIntf.cpp \
../utils/cp932_uni.cpp \
../utils/DebugIntf.cpp \
../utils/md5.c \
../utils/MiscUtility.cpp \
../utils/Random.cpp \
../utils/ThreadIntf.cpp \
../utils/TickCount.cpp \
../utils/TimerThread.cpp \
../utils/TimerIntf.cpp \
../utils/TVPTimer.cpp \
../utils/uni_cp932.cpp \
../utils/VelocityTracker.cpp \
../utils/sdl2/ClipboardImpl.cpp \
../visual/BitmapIntf.cpp \
../visual/BitmapLayerTreeOwner.cpp \
../visual/CharacterData.cpp \
../visual/ComplexRect.cpp \
../visual/DrawDevice.cpp \
../visual/FontSystem.cpp \
../visual/FreeType.cpp \
../visual/FreeTypeFontRasterizer.cpp \
../visual/GraphicsLoaderIntf.cpp \
../visual/GraphicsLoadThread.cpp \
../visual/ImageFunction.cpp \
../visual/LayerBitmapImpl.cpp \
../visual/LayerBitmapIntf.cpp \
../visual/LayerIntf.cpp \
../visual/LayerManager.cpp \
../visual/LayerTreeOwnerImpl.cpp \
../visual/LoadJPEG.cpp \
../visual/LoadPNG.cpp \
../visual/LoadTLG.cpp \
../visual/NullDrawDevice.cpp \
../visual/PrerenderedFont.cpp \
../visual/RectItf.cpp \
../visual/SaveTLG5.cpp \
../visual/SaveTLG6.cpp \
../visual/TransIntf.cpp \
../visual/tvpgl.c \
../visual/VideoOvlIntf.cpp \
../visual/WindowIntf.cpp \
../visual/sdl2/BasicDrawDevice.cpp \
../visual/sdl2/BitmapBitsAlloc.cpp \
../visual/sdl2/BitmapInfomation.cpp \
../visual/sdl2/GraphicsLoaderImpl.cpp \
../visual/sdl2/LayerImpl.cpp \
../visual/sdl2/TVPScreen.cpp \
../visual/sdl2/VideoOvlImpl.cpp \
../visual/sdl2/WindowImpl.cpp \
../visual/sdl2/opengl/OpenGLPlatformSDL2.cpp \
../visual/gl/blend_function.cpp \
../visual/gl/ResampleImage.cpp \
../visual/gl/WeightFunctor.cpp \
../visual/gl/x86simdutil.cpp \
../sdl2/SDLApplication.cpp \
../sdl2/SDLBitmapCompletion.cpp \
../sound/MathAlgorithms_SSE.cpp \
../sound/RealFFT_SSE.cpp \
../sound/WaveFormatConverter_SSE.cpp \
../visual/gl/ResampleImageSSE2.cpp \
../visual/gl/adjust_color_sse2.cpp \
../visual/gl/blend_function_sse2.cpp \
../visual/gl/boxblur_sse2.cpp \
../visual/gl/colorfill_sse2.cpp \
../visual/gl/colormap_sse2.cpp \
../visual/gl/pixelformat_sse2.cpp \
../visual/gl/tlg_sse2.cpp \
../visual/gl/univtrans_sse2.cpp \
../visual/gl/ResampleImageAVX2.cpp \
../visual/gl/blend_function_avx2.cpp \
../visual/gl/x86simdutilAVX2.cpp \
../utils/encoding/gbk2unicode.c \
../utils/encoding/jis2unicode.c \
../sound/VorbisWaveDecoder.cpp


#should not use this line, will run environ/android/Application.cpp::JNI_OnLoad failed
####LOCAL_LDFLAGS += -Wl,--version-script=../libkrkrz.map



LOCAL_LDLIBS    := -llog -landroid -lEGL -lGLESv1_CM -lGLESv2 -lOpenSLES -lz 
#-latomic
LOCAL_WHOLE_STATIC_LIBRARIES += libonig libpng libfreetype libjpeg-turbo libopusfile libopus libvorbis libogg SDL2 FAudio
#LOCAL_SHARED_LIBRARIES += SDL2
#LOCAL_STATIC_LIBRARIES := android_native_app_glue cpufeatures ndk_helper

include $(BUILD_SHARED_LIBRARY)

$(call import-module,external/freetype)
$(call import-module,external/libjpeg-turbo)
$(call import-module,external/onig)
$(call import-module,external/lpng)
$(call import-module,external/opusfile)
$(call import-module,external/opus)
$(call import-module,external/libogg)
$(call import-module,external/SDL)
$(call import-module,external/FAudio)
$(call import-module,external/libvorbis-1.2.0)

#$(call import-module,android/cpufeatures)
#$(call import-module,android/native_app_glue)
#$(call import-module,android/ndk_helper)
