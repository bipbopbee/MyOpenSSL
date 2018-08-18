# libRtmpForAndroidBuildInstruction

由于linux自带openssl，编译android系统时，不必编译openssl，要是我们自己写Android程序，尤其是在Windows上写Android小程序，就必须要重新编译Openssl了。
编译步骤见 http://blog.csdn.net/bupt073114/article/details/44565965<BR/><BR/>
编译librtmp参考https://blog.csdn.net/vnanyesheshou/article/details/54706075<BR/><BR/>
执行步骤：1.cd myopenssl/jni目录，执行ndk-build NDK_PROJECT_PATH=../               APP_BUILD_SCRIPT=../Android.mk<BR/><BR/>
         2.cd rtmp/jni目录，执行ndk-build<BR/><BR/>
