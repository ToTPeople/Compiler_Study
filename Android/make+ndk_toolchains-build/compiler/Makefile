# Makefile Written by ticktick
# Show how to cross-compile c/c++ code for android platform

.PHONY: clean

NDKROOT=/Applications/Android-NDK/android-ndk-r14b
PLATFORM=$(NDKROOT)/platforms/android-14/arch-arm
#PLATFORM=$(NDKROOT)/platforms/android-21/arch-arm64
#PLATFORM=$(NDKROOT)/platforms/android-21/arch-mips
#PLATFORM=$(NDKROOT)/platforms/android-21/arch-mips64
#PLATFORM=$(NDKROOT)/platforms/android-21/arch-x86
#PLATFORM=$(NDKROOT)/platforms/android-21/arch-x86_64

CROSS_COMPILE=/Users/meitu/Learn/my_tools/android-toolchain/arm/bin/arm-linux-androideabi-
#CROSS_COMPILE=/Users/meitu/Learn/my_tools/android-toolchain/arm64/bin/aarch64-linux-android-
#CROSS_COMPILE=/Users/meitu/Learn/my_tools/android-toolchain/mips/bin/mipsel-linux-android-
#CROSS_COMPILE=/Users/meitu/Learn/my_tools/android-toolchain/mips64/bin/mips64el-linux-android-
#CROSS_COMPILE=/Users/meitu/Learn/my_tools/android-toolchain/x86/bin/i686-linux-android-
#CROSS_COMPILE=/Users/meitu/Learn/my_tools/android-toolchain/x86_64/bin/x86_64-linux-android-

CC=$(CROSS_COMPILE)gcc
AR=$(CROSS_COMPILE)ar
LD=$(CROSS_COMPILE)ld

############################################################################################
# normal
CFLAGS = -I$(PWD) -I$(PLATFORM)/usr/include -Wall -O2 -fPIC -DANDROID -DHAVE_PTHREAD 
#-mfpu=neon -mfloat-abi=softfp
LDFLAGS =

# armeabi-v7a
#CFLAGS = -I$(PWD) -I$(PLATFORM)/usr/include -Wall -O2 -fPIC -DANDROID -DHAVE_PTHREAD -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16
#LDFLAGS= -march=armv7-a -Wl,--fix-cortex-a8

############################################################################################

TARGET = libtolua.a
SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)

all: $(OBJS)
	$(AR) -rc $(TARGET) $(OBJS)
clean:
	rm -f *.o *.a *.so


