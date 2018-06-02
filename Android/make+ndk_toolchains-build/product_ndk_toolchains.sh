#!/bin/bash

export NDK_HOME=/Applications/Android-NDK/android-ndk-r14b 
  
  
platform=android-14 
shmake=$NDK_HOME/build/tools/make-standalone-toolchain.sh  
  
archs=(  
    'arm'  
    'arm64'  
    'x86'  
    'x86_64'  
    'mips'  
    'mips64'  
)  
  
toolchains=(  
    'arm-linux-androideabi-4.9'  
    'aarch64-linux-android-4.9'  
    'x86-4.9'  
    'x86_64-4.9'  
    'mipsel-linux-android-4.9'  
    'mips64el-linux-android-4.9'  
)  
  
echo $NDK_HOME  
num=${#archs[@]}  
for ((i=0;i<$num;i++))  
do  
   sh $shmake --arch=${archs[i]} --platform=$platform --force --install-dir=/Users/meitu/Learn/my_tools/${archs[i]} --toolchain=${toolchains[i]}  
done  

