TARGET  = libJPEG.a
SRCS	= 	ckconfig  \
		jcapimin \
		jcapistd \
		jccoefct \
		jccolor \
		jcdctmgr \
		jchuff \
		jcinit \
		jcmainct \
		jcmarker \
		jcmaster \
		jcomapi \
		jcparam \
		jcphuff \
		jcprepct \
		jcsample \
		jctrans \
		jdapimin \
		jdapistd \
		jdatadst \
		jdatasrc \
		jdcoefct \
		jdcolor \
		jddctmgr \
		jdhuff \
		jdinput \
		jdmainct \
		jdmarker \
		jdmaster \
		jdmerge \
		jdphuff \
		jdpostct \
		jdsample \
		jdtrans \
		jerror \
		jfdctflt \
		jfdctfst \
		jfdctint \
		jidctflt \
		jidctfst \
		jidctint \
		jidctred \
		jmemmgr \
		jmemnobs \
		jquant1 \
		jquant2 \
		jutils 


CC   = g++
CFLAGS		+=
LFLAGS		+=

OBJECTS		= ${addsuffix .o, ${SRCS}}
CLEAN		= *.o ${TARGET}

#############################################################
all: debug

debug: CFLAGS += -DDEBUG -g3
debug: ${TARGET}

release: CFLAGS += -O2 -DRELEASE -pipe -fomit-frame-pointer
release: ${TARGET}

${TARGET}: depend ${OBJECTS} 
	ar r ${TARGET} ${OBJECTS}

clean:	
	/bin/rm -f ${CLEAN}

.cpp.o:
	${CC} ${CFLAGS} -c $<

depend: 
	makedepend -- ${CFLAGS} -- ${addsuffix .cpp, ${SRCS}}
# DO NOT DELETE

ckconfig.o: /usr/include/stdio.h /usr/include/features.h
ckconfig.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
ckconfig.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
ckconfig.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
ckconfig.o: /usr/include/libio.h /usr/include/_G_config.h
ckconfig.o: /usr/include/wchar.h /usr/include/bits/stdio_lim.h
ckconfig.o: /usr/include/bits/sys_errlist.h /usr/include/string.h
ckconfig.o: /usr/include/xlocale.h
jcapimin.o: jinclude.h jconfig.h /usr/include/stdlib.h
jcapimin.o: /usr/include/features.h /usr/include/stdc-predef.h
jcapimin.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jcapimin.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jcapimin.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jcapimin.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jcapimin.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jcapimin.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jcapimin.o: /usr/include/time.h /usr/include/sys/select.h
jcapimin.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jcapimin.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jcapimin.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jcapimin.o: /usr/include/stdio.h /usr/include/libio.h
jcapimin.o: /usr/include/_G_config.h /usr/include/wchar.h
jcapimin.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jcapimin.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jcapimin.o: jpegint.h jerror.h
jcapistd.o: jinclude.h jconfig.h /usr/include/stdlib.h
jcapistd.o: /usr/include/features.h /usr/include/stdc-predef.h
jcapistd.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jcapistd.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jcapistd.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jcapistd.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jcapistd.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jcapistd.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jcapistd.o: /usr/include/time.h /usr/include/sys/select.h
jcapistd.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jcapistd.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jcapistd.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jcapistd.o: /usr/include/stdio.h /usr/include/libio.h
jcapistd.o: /usr/include/_G_config.h /usr/include/wchar.h
jcapistd.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jcapistd.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jcapistd.o: jpegint.h jerror.h
jccoefct.o: jinclude.h jconfig.h /usr/include/stdlib.h
jccoefct.o: /usr/include/features.h /usr/include/stdc-predef.h
jccoefct.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jccoefct.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jccoefct.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jccoefct.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jccoefct.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jccoefct.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jccoefct.o: /usr/include/time.h /usr/include/sys/select.h
jccoefct.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jccoefct.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jccoefct.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jccoefct.o: /usr/include/stdio.h /usr/include/libio.h
jccoefct.o: /usr/include/_G_config.h /usr/include/wchar.h
jccoefct.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jccoefct.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jccoefct.o: jpegint.h jerror.h
jccolor.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jccolor.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jccolor.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jccolor.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jccolor.o: /usr/include/endian.h /usr/include/bits/endian.h
jccolor.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jccolor.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jccolor.o: /usr/include/sys/types.h /usr/include/time.h
jccolor.o: /usr/include/sys/select.h /usr/include/bits/select.h
jccolor.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jccolor.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jccolor.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jccolor.o: /usr/include/_G_config.h /usr/include/wchar.h
jccolor.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jccolor.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jccolor.o: jpegint.h jerror.h
jcdctmgr.o: jinclude.h jconfig.h /usr/include/stdlib.h
jcdctmgr.o: /usr/include/features.h /usr/include/stdc-predef.h
jcdctmgr.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jcdctmgr.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jcdctmgr.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jcdctmgr.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jcdctmgr.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jcdctmgr.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jcdctmgr.o: /usr/include/time.h /usr/include/sys/select.h
jcdctmgr.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jcdctmgr.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jcdctmgr.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jcdctmgr.o: /usr/include/stdio.h /usr/include/libio.h
jcdctmgr.o: /usr/include/_G_config.h /usr/include/wchar.h
jcdctmgr.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jcdctmgr.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jcdctmgr.o: jpegint.h jerror.h jdct.h
jchuff.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jchuff.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jchuff.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jchuff.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jchuff.o: /usr/include/endian.h /usr/include/bits/endian.h
jchuff.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jchuff.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jchuff.o: /usr/include/sys/types.h /usr/include/time.h
jchuff.o: /usr/include/sys/select.h /usr/include/bits/select.h
jchuff.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jchuff.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jchuff.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jchuff.o: /usr/include/_G_config.h /usr/include/wchar.h
jchuff.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jchuff.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jchuff.o: jpegint.h jerror.h jchuff.h
jcinit.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jcinit.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jcinit.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jcinit.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jcinit.o: /usr/include/endian.h /usr/include/bits/endian.h
jcinit.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jcinit.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jcinit.o: /usr/include/sys/types.h /usr/include/time.h
jcinit.o: /usr/include/sys/select.h /usr/include/bits/select.h
jcinit.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jcinit.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jcinit.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jcinit.o: /usr/include/_G_config.h /usr/include/wchar.h
jcinit.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jcinit.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jcinit.o: jpegint.h jerror.h
jcmainct.o: jinclude.h jconfig.h /usr/include/stdlib.h
jcmainct.o: /usr/include/features.h /usr/include/stdc-predef.h
jcmainct.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jcmainct.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jcmainct.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jcmainct.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jcmainct.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jcmainct.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jcmainct.o: /usr/include/time.h /usr/include/sys/select.h
jcmainct.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jcmainct.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jcmainct.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jcmainct.o: /usr/include/stdio.h /usr/include/libio.h
jcmainct.o: /usr/include/_G_config.h /usr/include/wchar.h
jcmainct.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jcmainct.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jcmainct.o: jpegint.h jerror.h
jcmarker.o: jinclude.h jconfig.h /usr/include/stdlib.h
jcmarker.o: /usr/include/features.h /usr/include/stdc-predef.h
jcmarker.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jcmarker.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jcmarker.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jcmarker.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jcmarker.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jcmarker.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jcmarker.o: /usr/include/time.h /usr/include/sys/select.h
jcmarker.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jcmarker.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jcmarker.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jcmarker.o: /usr/include/stdio.h /usr/include/libio.h
jcmarker.o: /usr/include/_G_config.h /usr/include/wchar.h
jcmarker.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jcmarker.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jcmarker.o: jpegint.h jerror.h
jcmaster.o: jinclude.h jconfig.h /usr/include/stdlib.h
jcmaster.o: /usr/include/features.h /usr/include/stdc-predef.h
jcmaster.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jcmaster.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jcmaster.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jcmaster.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jcmaster.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jcmaster.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jcmaster.o: /usr/include/time.h /usr/include/sys/select.h
jcmaster.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jcmaster.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jcmaster.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jcmaster.o: /usr/include/stdio.h /usr/include/libio.h
jcmaster.o: /usr/include/_G_config.h /usr/include/wchar.h
jcmaster.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jcmaster.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jcmaster.o: jpegint.h jerror.h
jcomapi.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jcomapi.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jcomapi.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jcomapi.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jcomapi.o: /usr/include/endian.h /usr/include/bits/endian.h
jcomapi.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jcomapi.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jcomapi.o: /usr/include/sys/types.h /usr/include/time.h
jcomapi.o: /usr/include/sys/select.h /usr/include/bits/select.h
jcomapi.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jcomapi.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jcomapi.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jcomapi.o: /usr/include/_G_config.h /usr/include/wchar.h
jcomapi.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jcomapi.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jcomapi.o: jpegint.h jerror.h
jcparam.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jcparam.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jcparam.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jcparam.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jcparam.o: /usr/include/endian.h /usr/include/bits/endian.h
jcparam.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jcparam.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jcparam.o: /usr/include/sys/types.h /usr/include/time.h
jcparam.o: /usr/include/sys/select.h /usr/include/bits/select.h
jcparam.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jcparam.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jcparam.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jcparam.o: /usr/include/_G_config.h /usr/include/wchar.h
jcparam.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jcparam.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jcparam.o: jpegint.h jerror.h
jcphuff.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jcphuff.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jcphuff.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jcphuff.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jcphuff.o: /usr/include/endian.h /usr/include/bits/endian.h
jcphuff.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jcphuff.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jcphuff.o: /usr/include/sys/types.h /usr/include/time.h
jcphuff.o: /usr/include/sys/select.h /usr/include/bits/select.h
jcphuff.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jcphuff.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jcphuff.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jcphuff.o: /usr/include/_G_config.h /usr/include/wchar.h
jcphuff.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jcphuff.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jcphuff.o: jpegint.h jerror.h jchuff.h
jcprepct.o: jinclude.h jconfig.h /usr/include/stdlib.h
jcprepct.o: /usr/include/features.h /usr/include/stdc-predef.h
jcprepct.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jcprepct.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jcprepct.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jcprepct.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jcprepct.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jcprepct.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jcprepct.o: /usr/include/time.h /usr/include/sys/select.h
jcprepct.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jcprepct.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jcprepct.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jcprepct.o: /usr/include/stdio.h /usr/include/libio.h
jcprepct.o: /usr/include/_G_config.h /usr/include/wchar.h
jcprepct.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jcprepct.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jcprepct.o: jpegint.h jerror.h
jcsample.o: jinclude.h jconfig.h /usr/include/stdlib.h
jcsample.o: /usr/include/features.h /usr/include/stdc-predef.h
jcsample.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jcsample.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jcsample.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jcsample.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jcsample.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jcsample.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jcsample.o: /usr/include/time.h /usr/include/sys/select.h
jcsample.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jcsample.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jcsample.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jcsample.o: /usr/include/stdio.h /usr/include/libio.h
jcsample.o: /usr/include/_G_config.h /usr/include/wchar.h
jcsample.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jcsample.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jcsample.o: jpegint.h jerror.h
jctrans.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jctrans.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jctrans.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jctrans.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jctrans.o: /usr/include/endian.h /usr/include/bits/endian.h
jctrans.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jctrans.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jctrans.o: /usr/include/sys/types.h /usr/include/time.h
jctrans.o: /usr/include/sys/select.h /usr/include/bits/select.h
jctrans.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jctrans.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jctrans.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jctrans.o: /usr/include/_G_config.h /usr/include/wchar.h
jctrans.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jctrans.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jctrans.o: jpegint.h jerror.h
jdapimin.o: jinclude.h jconfig.h /usr/include/stdlib.h
jdapimin.o: /usr/include/features.h /usr/include/stdc-predef.h
jdapimin.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jdapimin.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jdapimin.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jdapimin.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jdapimin.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jdapimin.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jdapimin.o: /usr/include/time.h /usr/include/sys/select.h
jdapimin.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jdapimin.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jdapimin.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jdapimin.o: /usr/include/stdio.h /usr/include/libio.h
jdapimin.o: /usr/include/_G_config.h /usr/include/wchar.h
jdapimin.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdapimin.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdapimin.o: jpegint.h jerror.h
jdapistd.o: jinclude.h jconfig.h /usr/include/stdlib.h
jdapistd.o: /usr/include/features.h /usr/include/stdc-predef.h
jdapistd.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jdapistd.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jdapistd.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jdapistd.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jdapistd.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jdapistd.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jdapistd.o: /usr/include/time.h /usr/include/sys/select.h
jdapistd.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jdapistd.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jdapistd.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jdapistd.o: /usr/include/stdio.h /usr/include/libio.h
jdapistd.o: /usr/include/_G_config.h /usr/include/wchar.h
jdapistd.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdapistd.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdapistd.o: jpegint.h jerror.h
jdatadst.o: jinclude.h jconfig.h /usr/include/stdlib.h
jdatadst.o: /usr/include/features.h /usr/include/stdc-predef.h
jdatadst.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jdatadst.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jdatadst.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jdatadst.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jdatadst.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jdatadst.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jdatadst.o: /usr/include/time.h /usr/include/sys/select.h
jdatadst.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jdatadst.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jdatadst.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jdatadst.o: /usr/include/stdio.h /usr/include/libio.h
jdatadst.o: /usr/include/_G_config.h /usr/include/wchar.h
jdatadst.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdatadst.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdatadst.o: jpegint.h jerror.h
jdatasrc.o: jinclude.h jconfig.h /usr/include/stdlib.h
jdatasrc.o: /usr/include/features.h /usr/include/stdc-predef.h
jdatasrc.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jdatasrc.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jdatasrc.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jdatasrc.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jdatasrc.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jdatasrc.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jdatasrc.o: /usr/include/time.h /usr/include/sys/select.h
jdatasrc.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jdatasrc.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jdatasrc.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jdatasrc.o: /usr/include/stdio.h /usr/include/libio.h
jdatasrc.o: /usr/include/_G_config.h /usr/include/wchar.h
jdatasrc.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdatasrc.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdatasrc.o: jpegint.h jerror.h
jdcoefct.o: jinclude.h jconfig.h /usr/include/stdlib.h
jdcoefct.o: /usr/include/features.h /usr/include/stdc-predef.h
jdcoefct.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jdcoefct.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jdcoefct.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jdcoefct.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jdcoefct.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jdcoefct.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jdcoefct.o: /usr/include/time.h /usr/include/sys/select.h
jdcoefct.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jdcoefct.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jdcoefct.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jdcoefct.o: /usr/include/stdio.h /usr/include/libio.h
jdcoefct.o: /usr/include/_G_config.h /usr/include/wchar.h
jdcoefct.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdcoefct.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdcoefct.o: jpegint.h jerror.h
jdcolor.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jdcolor.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jdcolor.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jdcolor.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jdcolor.o: /usr/include/endian.h /usr/include/bits/endian.h
jdcolor.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jdcolor.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jdcolor.o: /usr/include/sys/types.h /usr/include/time.h
jdcolor.o: /usr/include/sys/select.h /usr/include/bits/select.h
jdcolor.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jdcolor.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jdcolor.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jdcolor.o: /usr/include/_G_config.h /usr/include/wchar.h
jdcolor.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdcolor.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdcolor.o: jpegint.h jerror.h
jddctmgr.o: jinclude.h jconfig.h /usr/include/stdlib.h
jddctmgr.o: /usr/include/features.h /usr/include/stdc-predef.h
jddctmgr.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jddctmgr.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jddctmgr.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jddctmgr.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jddctmgr.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jddctmgr.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jddctmgr.o: /usr/include/time.h /usr/include/sys/select.h
jddctmgr.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jddctmgr.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jddctmgr.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jddctmgr.o: /usr/include/stdio.h /usr/include/libio.h
jddctmgr.o: /usr/include/_G_config.h /usr/include/wchar.h
jddctmgr.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jddctmgr.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jddctmgr.o: jpegint.h jerror.h jdct.h
jdhuff.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jdhuff.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jdhuff.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jdhuff.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jdhuff.o: /usr/include/endian.h /usr/include/bits/endian.h
jdhuff.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jdhuff.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jdhuff.o: /usr/include/sys/types.h /usr/include/time.h
jdhuff.o: /usr/include/sys/select.h /usr/include/bits/select.h
jdhuff.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jdhuff.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jdhuff.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jdhuff.o: /usr/include/_G_config.h /usr/include/wchar.h
jdhuff.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdhuff.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdhuff.o: jpegint.h jerror.h jdhuff.h
jdinput.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jdinput.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jdinput.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jdinput.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jdinput.o: /usr/include/endian.h /usr/include/bits/endian.h
jdinput.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jdinput.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jdinput.o: /usr/include/sys/types.h /usr/include/time.h
jdinput.o: /usr/include/sys/select.h /usr/include/bits/select.h
jdinput.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jdinput.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jdinput.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jdinput.o: /usr/include/_G_config.h /usr/include/wchar.h
jdinput.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdinput.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdinput.o: jpegint.h jerror.h
jdmainct.o: jinclude.h jconfig.h /usr/include/stdlib.h
jdmainct.o: /usr/include/features.h /usr/include/stdc-predef.h
jdmainct.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jdmainct.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jdmainct.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jdmainct.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jdmainct.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jdmainct.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jdmainct.o: /usr/include/time.h /usr/include/sys/select.h
jdmainct.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jdmainct.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jdmainct.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jdmainct.o: /usr/include/stdio.h /usr/include/libio.h
jdmainct.o: /usr/include/_G_config.h /usr/include/wchar.h
jdmainct.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdmainct.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdmainct.o: jpegint.h jerror.h
jdmarker.o: jinclude.h jconfig.h /usr/include/stdlib.h
jdmarker.o: /usr/include/features.h /usr/include/stdc-predef.h
jdmarker.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jdmarker.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jdmarker.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jdmarker.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jdmarker.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jdmarker.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jdmarker.o: /usr/include/time.h /usr/include/sys/select.h
jdmarker.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jdmarker.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jdmarker.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jdmarker.o: /usr/include/stdio.h /usr/include/libio.h
jdmarker.o: /usr/include/_G_config.h /usr/include/wchar.h
jdmarker.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdmarker.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdmarker.o: jpegint.h jerror.h
jdmaster.o: jinclude.h jconfig.h /usr/include/stdlib.h
jdmaster.o: /usr/include/features.h /usr/include/stdc-predef.h
jdmaster.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jdmaster.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jdmaster.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jdmaster.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jdmaster.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jdmaster.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jdmaster.o: /usr/include/time.h /usr/include/sys/select.h
jdmaster.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jdmaster.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jdmaster.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jdmaster.o: /usr/include/stdio.h /usr/include/libio.h
jdmaster.o: /usr/include/_G_config.h /usr/include/wchar.h
jdmaster.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdmaster.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdmaster.o: jpegint.h jerror.h
jdmerge.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jdmerge.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jdmerge.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jdmerge.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jdmerge.o: /usr/include/endian.h /usr/include/bits/endian.h
jdmerge.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jdmerge.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jdmerge.o: /usr/include/sys/types.h /usr/include/time.h
jdmerge.o: /usr/include/sys/select.h /usr/include/bits/select.h
jdmerge.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jdmerge.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jdmerge.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jdmerge.o: /usr/include/_G_config.h /usr/include/wchar.h
jdmerge.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdmerge.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdmerge.o: jpegint.h jerror.h
jdphuff.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jdphuff.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jdphuff.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jdphuff.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jdphuff.o: /usr/include/endian.h /usr/include/bits/endian.h
jdphuff.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jdphuff.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jdphuff.o: /usr/include/sys/types.h /usr/include/time.h
jdphuff.o: /usr/include/sys/select.h /usr/include/bits/select.h
jdphuff.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jdphuff.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jdphuff.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jdphuff.o: /usr/include/_G_config.h /usr/include/wchar.h
jdphuff.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdphuff.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdphuff.o: jpegint.h jerror.h jdhuff.h
jdpostct.o: jinclude.h jconfig.h /usr/include/stdlib.h
jdpostct.o: /usr/include/features.h /usr/include/stdc-predef.h
jdpostct.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jdpostct.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jdpostct.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jdpostct.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jdpostct.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jdpostct.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jdpostct.o: /usr/include/time.h /usr/include/sys/select.h
jdpostct.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jdpostct.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jdpostct.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jdpostct.o: /usr/include/stdio.h /usr/include/libio.h
jdpostct.o: /usr/include/_G_config.h /usr/include/wchar.h
jdpostct.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdpostct.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdpostct.o: jpegint.h jerror.h
jdsample.o: jinclude.h jconfig.h /usr/include/stdlib.h
jdsample.o: /usr/include/features.h /usr/include/stdc-predef.h
jdsample.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jdsample.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jdsample.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jdsample.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jdsample.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jdsample.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jdsample.o: /usr/include/time.h /usr/include/sys/select.h
jdsample.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jdsample.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jdsample.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jdsample.o: /usr/include/stdio.h /usr/include/libio.h
jdsample.o: /usr/include/_G_config.h /usr/include/wchar.h
jdsample.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdsample.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdsample.o: jpegint.h jerror.h
jdtrans.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jdtrans.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jdtrans.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jdtrans.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jdtrans.o: /usr/include/endian.h /usr/include/bits/endian.h
jdtrans.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jdtrans.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jdtrans.o: /usr/include/sys/types.h /usr/include/time.h
jdtrans.o: /usr/include/sys/select.h /usr/include/bits/select.h
jdtrans.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jdtrans.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jdtrans.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jdtrans.o: /usr/include/_G_config.h /usr/include/wchar.h
jdtrans.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jdtrans.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jdtrans.o: jpegint.h jerror.h
jerror.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jerror.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jerror.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jerror.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jerror.o: /usr/include/endian.h /usr/include/bits/endian.h
jerror.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jerror.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jerror.o: /usr/include/sys/types.h /usr/include/time.h
jerror.o: /usr/include/sys/select.h /usr/include/bits/select.h
jerror.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jerror.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jerror.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jerror.o: /usr/include/_G_config.h /usr/include/wchar.h
jerror.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jerror.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jerror.o: jpegint.h jerror.h jversion.h
jfdctflt.o: jinclude.h jconfig.h /usr/include/stdlib.h
jfdctflt.o: /usr/include/features.h /usr/include/stdc-predef.h
jfdctflt.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jfdctflt.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jfdctflt.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jfdctflt.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jfdctflt.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jfdctflt.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jfdctflt.o: /usr/include/time.h /usr/include/sys/select.h
jfdctflt.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jfdctflt.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jfdctflt.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jfdctflt.o: /usr/include/stdio.h /usr/include/libio.h
jfdctflt.o: /usr/include/_G_config.h /usr/include/wchar.h
jfdctflt.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jfdctflt.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jfdctflt.o: jpegint.h jerror.h jdct.h
jfdctfst.o: jinclude.h jconfig.h /usr/include/stdlib.h
jfdctfst.o: /usr/include/features.h /usr/include/stdc-predef.h
jfdctfst.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jfdctfst.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jfdctfst.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jfdctfst.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jfdctfst.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jfdctfst.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jfdctfst.o: /usr/include/time.h /usr/include/sys/select.h
jfdctfst.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jfdctfst.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jfdctfst.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jfdctfst.o: /usr/include/stdio.h /usr/include/libio.h
jfdctfst.o: /usr/include/_G_config.h /usr/include/wchar.h
jfdctfst.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jfdctfst.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jfdctfst.o: jpegint.h jerror.h jdct.h
jfdctint.o: jinclude.h jconfig.h /usr/include/stdlib.h
jfdctint.o: /usr/include/features.h /usr/include/stdc-predef.h
jfdctint.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jfdctint.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jfdctint.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jfdctint.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jfdctint.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jfdctint.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jfdctint.o: /usr/include/time.h /usr/include/sys/select.h
jfdctint.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jfdctint.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jfdctint.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jfdctint.o: /usr/include/stdio.h /usr/include/libio.h
jfdctint.o: /usr/include/_G_config.h /usr/include/wchar.h
jfdctint.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jfdctint.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jfdctint.o: jpegint.h jerror.h jdct.h
jidctflt.o: jinclude.h jconfig.h /usr/include/stdlib.h
jidctflt.o: /usr/include/features.h /usr/include/stdc-predef.h
jidctflt.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jidctflt.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jidctflt.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jidctflt.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jidctflt.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jidctflt.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jidctflt.o: /usr/include/time.h /usr/include/sys/select.h
jidctflt.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jidctflt.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jidctflt.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jidctflt.o: /usr/include/stdio.h /usr/include/libio.h
jidctflt.o: /usr/include/_G_config.h /usr/include/wchar.h
jidctflt.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jidctflt.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jidctflt.o: jpegint.h jerror.h jdct.h
jidctfst.o: jinclude.h jconfig.h /usr/include/stdlib.h
jidctfst.o: /usr/include/features.h /usr/include/stdc-predef.h
jidctfst.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jidctfst.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jidctfst.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jidctfst.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jidctfst.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jidctfst.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jidctfst.o: /usr/include/time.h /usr/include/sys/select.h
jidctfst.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jidctfst.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jidctfst.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jidctfst.o: /usr/include/stdio.h /usr/include/libio.h
jidctfst.o: /usr/include/_G_config.h /usr/include/wchar.h
jidctfst.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jidctfst.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jidctfst.o: jpegint.h jerror.h jdct.h
jidctint.o: jinclude.h jconfig.h /usr/include/stdlib.h
jidctint.o: /usr/include/features.h /usr/include/stdc-predef.h
jidctint.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jidctint.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jidctint.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jidctint.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jidctint.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jidctint.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jidctint.o: /usr/include/time.h /usr/include/sys/select.h
jidctint.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jidctint.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jidctint.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jidctint.o: /usr/include/stdio.h /usr/include/libio.h
jidctint.o: /usr/include/_G_config.h /usr/include/wchar.h
jidctint.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jidctint.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jidctint.o: jpegint.h jerror.h jdct.h
jidctred.o: jinclude.h jconfig.h /usr/include/stdlib.h
jidctred.o: /usr/include/features.h /usr/include/stdc-predef.h
jidctred.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jidctred.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jidctred.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jidctred.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jidctred.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jidctred.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jidctred.o: /usr/include/time.h /usr/include/sys/select.h
jidctred.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jidctred.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jidctred.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jidctred.o: /usr/include/stdio.h /usr/include/libio.h
jidctred.o: /usr/include/_G_config.h /usr/include/wchar.h
jidctred.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jidctred.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jidctred.o: jpegint.h jerror.h jdct.h
jmemmgr.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jmemmgr.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jmemmgr.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jmemmgr.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jmemmgr.o: /usr/include/endian.h /usr/include/bits/endian.h
jmemmgr.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jmemmgr.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jmemmgr.o: /usr/include/sys/types.h /usr/include/time.h
jmemmgr.o: /usr/include/sys/select.h /usr/include/bits/select.h
jmemmgr.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jmemmgr.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jmemmgr.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jmemmgr.o: /usr/include/_G_config.h /usr/include/wchar.h
jmemmgr.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jmemmgr.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jmemmgr.o: jpegint.h jerror.h jmemsys.h
jmemnobs.o: jinclude.h jconfig.h /usr/include/stdlib.h
jmemnobs.o: /usr/include/features.h /usr/include/stdc-predef.h
jmemnobs.o: /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h
jmemnobs.o: /usr/include/gnu/stubs.h /usr/include/bits/waitflags.h
jmemnobs.o: /usr/include/bits/waitstatus.h /usr/include/endian.h
jmemnobs.o: /usr/include/bits/endian.h /usr/include/bits/byteswap.h
jmemnobs.o: /usr/include/bits/types.h /usr/include/bits/typesizes.h
jmemnobs.o: /usr/include/bits/byteswap-16.h /usr/include/sys/types.h
jmemnobs.o: /usr/include/time.h /usr/include/sys/select.h
jmemnobs.o: /usr/include/bits/select.h /usr/include/bits/sigset.h
jmemnobs.o: /usr/include/bits/time.h /usr/include/sys/sysmacros.h
jmemnobs.o: /usr/include/bits/pthreadtypes.h /usr/include/alloca.h
jmemnobs.o: /usr/include/stdio.h /usr/include/libio.h
jmemnobs.o: /usr/include/_G_config.h /usr/include/wchar.h
jmemnobs.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jmemnobs.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jmemnobs.o: jpegint.h jerror.h jmemsys.h
jquant1.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jquant1.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jquant1.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jquant1.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jquant1.o: /usr/include/endian.h /usr/include/bits/endian.h
jquant1.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jquant1.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jquant1.o: /usr/include/sys/types.h /usr/include/time.h
jquant1.o: /usr/include/sys/select.h /usr/include/bits/select.h
jquant1.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jquant1.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jquant1.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jquant1.o: /usr/include/_G_config.h /usr/include/wchar.h
jquant1.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jquant1.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jquant1.o: jpegint.h jerror.h
jquant2.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jquant2.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jquant2.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jquant2.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jquant2.o: /usr/include/endian.h /usr/include/bits/endian.h
jquant2.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jquant2.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jquant2.o: /usr/include/sys/types.h /usr/include/time.h
jquant2.o: /usr/include/sys/select.h /usr/include/bits/select.h
jquant2.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jquant2.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jquant2.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jquant2.o: /usr/include/_G_config.h /usr/include/wchar.h
jquant2.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jquant2.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jquant2.o: jpegint.h jerror.h
jutils.o: jinclude.h jconfig.h /usr/include/stdlib.h /usr/include/features.h
jutils.o: /usr/include/stdc-predef.h /usr/include/sys/cdefs.h
jutils.o: /usr/include/bits/wordsize.h /usr/include/gnu/stubs.h
jutils.o: /usr/include/bits/waitflags.h /usr/include/bits/waitstatus.h
jutils.o: /usr/include/endian.h /usr/include/bits/endian.h
jutils.o: /usr/include/bits/byteswap.h /usr/include/bits/types.h
jutils.o: /usr/include/bits/typesizes.h /usr/include/bits/byteswap-16.h
jutils.o: /usr/include/sys/types.h /usr/include/time.h
jutils.o: /usr/include/sys/select.h /usr/include/bits/select.h
jutils.o: /usr/include/bits/sigset.h /usr/include/bits/time.h
jutils.o: /usr/include/sys/sysmacros.h /usr/include/bits/pthreadtypes.h
jutils.o: /usr/include/alloca.h /usr/include/stdio.h /usr/include/libio.h
jutils.o: /usr/include/_G_config.h /usr/include/wchar.h
jutils.o: /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h
jutils.o: /usr/include/string.h /usr/include/xlocale.h jpeglib.h jmorecfg.h
jutils.o: jpegint.h jerror.h
