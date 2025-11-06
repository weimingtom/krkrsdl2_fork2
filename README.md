# krkrsdl2_fork2
[WIP] My second krkrsdl2 fork for code reading and SDL2 porting learning  
Code base (same as weimingtom/krkrsdl2-miyoo-a30):  
https://github.com/krkrsdl2/krkrsdl2/tree/638f8203c202163971ae1c483a2316ffcb9ef0ba    
https://github.com/weimingtom/krkrsdl2-miyoo-a30  

## TODO
* Where is savedata folder of Android version ?

## How to build for Linux, Xubuntu 20.04 64bit, Xubuntu 25.04 64bit  
* $ sudo apt update  
* $ sudo apt install libsdl2-dev  
* $ make clean  
* $ make -j3  
* $ make test  
* $ ./krkrsdl2    
* $ make debug  
* $ make testdata   

## How to build for Android
* Modify console.bat, point to NDK path. Recommended NDK r25 (you can also try NDK r10e)  
* Double click to run console.bat  
```
::@set PATH=D:\android-ndk-r10e;%PATH%
@set PATH=D:\home\soft\android_studio_sdk\ndk\25.2.9519653;%PATH%
::@set PATH=D:\home\soft\android_studio_sdk\ndk\20.0.5594570;%PATH%
::@set PATH=D:\home\soft\android_studio_sdk\ndk\20.1.5948944;%PATH%
@set NDK_MODULE_PATH=%CD%
@cmd
```
* Run ndk-build, or ndk-build -j8, or ndk-build NDK_DEBUG=1 V=1.  
* Import, compile and run with Android ADT, see android_adt\ .project  
