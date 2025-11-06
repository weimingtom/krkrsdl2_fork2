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

=======
## Original readme

# 吉里吉里SDL2 / Kirikiri SDL2

吉里吉里SDL2は、macOSやLinuxなど、[SDL2](https://www.libsdl.org/)をサポートするプラットフォームで実行できる[吉里吉里Z](https://krkrz.github.io/)の移植版です。  

詳細については、次の Web ページを参照してください: https://krkrsdl2.github.io/krkrsdl2/  

Kirikiri SDL2 is a port of [Kirikiri Z](https://krkrz.github.io/) that can be run on platforms supporting [SDL2](https://www.libsdl.org/), such as macOS and Linux.  

Please visit the following webpage for more information: https://krkrsdl2.github.io/krkrsdl2/en/  

## 商用ゲームの実行に関する注意 / A note on running commercial games

このプロジェクトを使用して変更されていない商用ゲームを実行することはサポートされていません。  
代わりに[Wine](https://www.winehq.org/)または[Kirikiroid2](https://play.google.com/store/apps/details?id=org.tvp.kirikiri2)を使用してください。    

Running unmodified commercial games using this project is not supported.  
Please use [Wine](https://www.winehq.org/) or [Kirikiroid2](https://play.google.com/store/apps/details?id=org.tvp.kirikiri2) instead.  

## ライセンス / License

吉里吉里SDL2ソース（`src`ディレクトリ内）のコードは、MITライセンスの下でライセンスされています。 詳細については、`LICENSE`をお読みください。  
このプロジェクトには、サードパーティのコンポーネントが含まれています (GPL に基づいてライセンスされていません)。詳細については、各コンポーネントのライセンスファイルを参照してください。  

The code of the Kirikiri SDL2 source (inside the `src` directory) is licensed under the MIT license. Please read `LICENSE` for more information.  
This project contains third-party components (not licensed under the GPL). Please view the license file in each component for more information.  
