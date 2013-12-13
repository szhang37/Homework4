TARGET  = Assignment4
SRCS	= 	Util/time \
		Util/cmdLineParser \
		Util/geometry \
		Util/geometry.todo \
		Image/bmp \
		Image/image \
		Image/image.todo \
		Image/jpeg \
		Image/lineSegments \
		Image/lineSegments.todo \
		Ray/mouse \
		Ray/rayBox \
		Ray/rayBox.todo \
		Ray/rayCamera \
		Ray/rayCamera.todo \
		Ray/rayCone \
		Ray/rayCone.todo \
		Ray/rayCylinder \
		Ray/rayCylinder.todo \
		Ray/rayDirectionalLight \
		Ray/rayDirectionalLight.todo \
		Ray/rayFileInstance \
		Ray/rayGroup \
		Ray/rayGroup.todo \
		Ray/rayKey \
		Ray/rayPointLight \
		Ray/rayPointLight.todo \
		Ray/rayScene \
		Ray/rayScene.todo \
		Ray/raySphere \
		Ray/raySphere.todo \
		Ray/raySpotLight \
		Ray/raySpotLight.todo \
		Ray/rayTriangle \
		Ray/rayTriangle.todo \
		Ray/rayWindow \
		main

CC   = g++
CFLAGS		+= -I.
LFLAGS		+= -LJPEG -lJPEG -lglut -lGLU -lGL

OBJECTS		= ${addsuffix .o, ${SRCS}}
CLEAN		= *.o .depend ${TARGET} *.dsp *.dsw *.bak

#############################################################
all: debug

debug: CFLAGS += -DDEBUG -g3
debug: ${TARGET}

release: CFLAGS += -O2 -DRELEASE -pipe -fomit-frame-pointer
release: ${TARGET}

${TARGET}: depend JPEG/libJPEG.a ${OBJECTS}
	${CC} -o $@ ${OBJECTS} ${LFLAGS}

clean:	
	/bin/rm -f ${CLEAN}

.cpp.o:
	${CC} ${CFLAGS} -o $@ -c $<

JPEG/libJPEG.a:
	${MAKE} -C JPEG

depend: 
	makedepend -- ${CFLAGS} -- ${addsuffix .cpp, ${SRCS}}
# DO NOT DELETE

Util/time.o: /usr/include/stdlib.h /usr/include/Availability.h
Util/time.o: /usr/include/AvailabilityInternal.h /usr/include/_types.h
Util/time.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
Util/time.o: /usr/include/sys/_symbol_aliasing.h
Util/time.o: /usr/include/sys/_posix_availability.h
Util/time.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Util/time.o: /usr/include/sys/wait.h /usr/include/sys/_types/_pid_t.h
Util/time.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Util/time.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
Util/time.o: /usr/include/i386/signal.h /usr/include/machine/_mcontext.h
Util/time.o: /usr/include/i386/_mcontext.h /usr/include/mach/i386/_structs.h
Util/time.o: /usr/include/sys/_types/_sigaltstack.h
Util/time.o: /usr/include/sys/_types/_ucontext.h
Util/time.o: /usr/include/sys/_types/_pthread_attr_t.h
Util/time.o: /usr/include/sys/_types/_sigset_t.h
Util/time.o: /usr/include/sys/_types/_size_t.h
Util/time.o: /usr/include/sys/_types/_uid_t.h /usr/include/sys/resource.h
Util/time.o: /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h
Util/time.o: /usr/include/sys/_types/_int16_t.h
Util/time.o: /usr/include/sys/_types/_int32_t.h
Util/time.o: /usr/include/sys/_types/_int64_t.h
Util/time.o: /usr/include/_types/_uint8_t.h /usr/include/_types/_uint16_t.h
Util/time.o: /usr/include/_types/_uint32_t.h /usr/include/_types/_uint64_t.h
Util/time.o: /usr/include/sys/_types/_intptr_t.h
Util/time.o: /usr/include/sys/_types/_uintptr_t.h
Util/time.o: /usr/include/_types/_intmax_t.h /usr/include/_types/_uintmax_t.h
Util/time.o: /usr/include/sys/_types/_timeval.h /usr/include/machine/endian.h
Util/time.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
Util/time.o: /usr/include/libkern/_OSByteOrder.h
Util/time.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
Util/time.o: /usr/include/sys/_types/_ct_rune_t.h
Util/time.o: /usr/include/sys/_types/_rune_t.h
Util/time.o: /usr/include/sys/_types/_wchar_t.h
Util/time.o: /usr/include/sys/_types/_null.h /usr/include/machine/types.h
Util/time.o: /usr/include/i386/types.h /usr/include/sys/_types/___offsetof.h
Util/time.o: /usr/include/sys/_types/_dev_t.h
Util/time.o: /usr/include/sys/_types/_mode_t.h /usr/include/sys/timeb.h
Util/time.o: /usr/include/sys/_types/_time_t.h /usr/include/sys/time.h
Util/time.o: /usr/include/sys/_types/_fd_def.h
Util/time.o: /usr/include/sys/_types/_timespec.h
Util/time.o: /usr/include/sys/_types/_suseconds_t.h
Util/time.o: /usr/include/sys/_types/_fd_setsize.h
Util/time.o: /usr/include/sys/_types/_fd_set.h
Util/time.o: /usr/include/sys/_types/_fd_clr.h
Util/time.o: /usr/include/sys/_types/_fd_isset.h
Util/time.o: /usr/include/sys/_types/_fd_zero.h
Util/time.o: /usr/include/sys/_types/_fd_copy.h /usr/include/time.h
Util/time.o: /usr/include/_structs.h /usr/include/sys/_structs.h
Util/time.o: /usr/include/sys/_types/_clock_t.h /usr/include/sys/_select.h
Util/cmdLineParser.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Util/cmdLineParser.o: /usr/include/sys/_symbol_aliasing.h
Util/cmdLineParser.o: /usr/include/sys/_posix_availability.h
Util/cmdLineParser.o: /usr/include/Availability.h
Util/cmdLineParser.o: /usr/include/AvailabilityInternal.h
Util/cmdLineParser.o: /usr/include/_types.h /usr/include/sys/_types.h
Util/cmdLineParser.o: /usr/include/machine/_types.h
Util/cmdLineParser.o: /usr/include/i386/_types.h
Util/cmdLineParser.o: /usr/include/sys/_types/_va_list.h
Util/cmdLineParser.o: /usr/include/sys/_types/_size_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_null.h
Util/cmdLineParser.o: /usr/include/sys/_types/_off_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_ssize_t.h
Util/cmdLineParser.o: /usr/include/secure/_stdio.h
Util/cmdLineParser.o: /usr/include/secure/_common.h /usr/include/stdlib.h
Util/cmdLineParser.o: /usr/include/sys/wait.h
Util/cmdLineParser.o: /usr/include/sys/_types/_pid_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_id_t.h
Util/cmdLineParser.o: /usr/include/sys/signal.h
Util/cmdLineParser.o: /usr/include/sys/appleapiopts.h
Util/cmdLineParser.o: /usr/include/machine/signal.h
Util/cmdLineParser.o: /usr/include/i386/signal.h
Util/cmdLineParser.o: /usr/include/machine/_mcontext.h
Util/cmdLineParser.o: /usr/include/i386/_mcontext.h
Util/cmdLineParser.o: /usr/include/mach/i386/_structs.h
Util/cmdLineParser.o: /usr/include/sys/_types/_sigaltstack.h
Util/cmdLineParser.o: /usr/include/sys/_types/_ucontext.h
Util/cmdLineParser.o: /usr/include/sys/_types/_pthread_attr_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_sigset_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_uid_t.h
Util/cmdLineParser.o: /usr/include/sys/resource.h /usr/include/stdint.h
Util/cmdLineParser.o: /usr/include/sys/_types/_int8_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_int16_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_int32_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_int64_t.h
Util/cmdLineParser.o: /usr/include/_types/_uint8_t.h
Util/cmdLineParser.o: /usr/include/_types/_uint16_t.h
Util/cmdLineParser.o: /usr/include/_types/_uint32_t.h
Util/cmdLineParser.o: /usr/include/_types/_uint64_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_intptr_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_uintptr_t.h
Util/cmdLineParser.o: /usr/include/_types/_intmax_t.h
Util/cmdLineParser.o: /usr/include/_types/_uintmax_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_timeval.h
Util/cmdLineParser.o: /usr/include/machine/endian.h
Util/cmdLineParser.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
Util/cmdLineParser.o: /usr/include/libkern/_OSByteOrder.h
Util/cmdLineParser.o: /usr/include/libkern/i386/_OSByteOrder.h
Util/cmdLineParser.o: /usr/include/alloca.h
Util/cmdLineParser.o: /usr/include/sys/_types/_ct_rune_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_rune_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_wchar_t.h
Util/cmdLineParser.o: /usr/include/machine/types.h /usr/include/i386/types.h
Util/cmdLineParser.o: /usr/include/sys/_types/___offsetof.h
Util/cmdLineParser.o: /usr/include/sys/_types/_dev_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_mode_t.h /usr/include/string.h
Util/cmdLineParser.o: /usr/include/sys/_types/_rsize_t.h
Util/cmdLineParser.o: /usr/include/sys/_types/_errno_t.h
Util/cmdLineParser.o: /usr/include/strings.h /usr/include/secure/_string.h
Util/cmdLineParser.o: /usr/include/assert.h Util/cmdLineParser.h
Util/geometry.o: /usr/include/stdlib.h /usr/include/Availability.h
Util/geometry.o: /usr/include/AvailabilityInternal.h /usr/include/_types.h
Util/geometry.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
Util/geometry.o: /usr/include/sys/_symbol_aliasing.h
Util/geometry.o: /usr/include/sys/_posix_availability.h
Util/geometry.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Util/geometry.o: /usr/include/sys/wait.h /usr/include/sys/_types/_pid_t.h
Util/geometry.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Util/geometry.o: /usr/include/sys/appleapiopts.h
Util/geometry.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
Util/geometry.o: /usr/include/machine/_mcontext.h
Util/geometry.o: /usr/include/i386/_mcontext.h
Util/geometry.o: /usr/include/mach/i386/_structs.h
Util/geometry.o: /usr/include/sys/_types/_sigaltstack.h
Util/geometry.o: /usr/include/sys/_types/_ucontext.h
Util/geometry.o: /usr/include/sys/_types/_pthread_attr_t.h
Util/geometry.o: /usr/include/sys/_types/_sigset_t.h
Util/geometry.o: /usr/include/sys/_types/_size_t.h
Util/geometry.o: /usr/include/sys/_types/_uid_t.h /usr/include/sys/resource.h
Util/geometry.o: /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h
Util/geometry.o: /usr/include/sys/_types/_int16_t.h
Util/geometry.o: /usr/include/sys/_types/_int32_t.h
Util/geometry.o: /usr/include/sys/_types/_int64_t.h
Util/geometry.o: /usr/include/_types/_uint8_t.h
Util/geometry.o: /usr/include/_types/_uint16_t.h
Util/geometry.o: /usr/include/_types/_uint32_t.h
Util/geometry.o: /usr/include/_types/_uint64_t.h
Util/geometry.o: /usr/include/sys/_types/_intptr_t.h
Util/geometry.o: /usr/include/sys/_types/_uintptr_t.h
Util/geometry.o: /usr/include/_types/_intmax_t.h
Util/geometry.o: /usr/include/_types/_uintmax_t.h
Util/geometry.o: /usr/include/sys/_types/_timeval.h
Util/geometry.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Util/geometry.o: /usr/include/sys/_endian.h
Util/geometry.o: /usr/include/libkern/_OSByteOrder.h
Util/geometry.o: /usr/include/libkern/i386/_OSByteOrder.h
Util/geometry.o: /usr/include/alloca.h /usr/include/sys/_types/_ct_rune_t.h
Util/geometry.o: /usr/include/sys/_types/_rune_t.h
Util/geometry.o: /usr/include/sys/_types/_wchar_t.h
Util/geometry.o: /usr/include/sys/_types/_null.h /usr/include/machine/types.h
Util/geometry.o: /usr/include/i386/types.h
Util/geometry.o: /usr/include/sys/_types/___offsetof.h
Util/geometry.o: /usr/include/sys/_types/_dev_t.h
Util/geometry.o: /usr/include/sys/_types/_mode_t.h /usr/include/math.h
Util/geometry.o: ./SVD/SVDFit.h ./SVD/MatrixMNTC.h ./SVD/comdef.h
Util/geometry.o: ./SVD/MatrixMNTC.inl ./SVD/SVD.h ./SVD/SVD.inl
Util/geometry.o: /usr/include/stdio.h /usr/include/sys/_types/_va_list.h
Util/geometry.o: /usr/include/sys/_types/_off_t.h
Util/geometry.o: /usr/include/sys/_types/_ssize_t.h
Util/geometry.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
Util/geometry.o: /usr/include/memory.h /usr/include/string.h
Util/geometry.o: /usr/include/sys/_types/_rsize_t.h
Util/geometry.o: /usr/include/sys/_types/_errno_t.h /usr/include/strings.h
Util/geometry.o: /usr/include/secure/_string.h ./SVD/SVDFit.inl
Util/geometry.o: ./SVD/MatrixMNTC.h Util/geometry.h
Util/geometry.todo.o: /usr/include/stdlib.h /usr/include/Availability.h
Util/geometry.todo.o: /usr/include/AvailabilityInternal.h
Util/geometry.todo.o: /usr/include/_types.h /usr/include/sys/_types.h
Util/geometry.todo.o: /usr/include/sys/cdefs.h
Util/geometry.todo.o: /usr/include/sys/_symbol_aliasing.h
Util/geometry.todo.o: /usr/include/sys/_posix_availability.h
Util/geometry.todo.o: /usr/include/machine/_types.h
Util/geometry.todo.o: /usr/include/i386/_types.h /usr/include/sys/wait.h
Util/geometry.todo.o: /usr/include/sys/_types/_pid_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_id_t.h
Util/geometry.todo.o: /usr/include/sys/signal.h
Util/geometry.todo.o: /usr/include/sys/appleapiopts.h
Util/geometry.todo.o: /usr/include/machine/signal.h
Util/geometry.todo.o: /usr/include/i386/signal.h
Util/geometry.todo.o: /usr/include/machine/_mcontext.h
Util/geometry.todo.o: /usr/include/i386/_mcontext.h
Util/geometry.todo.o: /usr/include/mach/i386/_structs.h
Util/geometry.todo.o: /usr/include/sys/_types/_sigaltstack.h
Util/geometry.todo.o: /usr/include/sys/_types/_ucontext.h
Util/geometry.todo.o: /usr/include/sys/_types/_pthread_attr_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_sigset_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_size_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_uid_t.h
Util/geometry.todo.o: /usr/include/sys/resource.h /usr/include/stdint.h
Util/geometry.todo.o: /usr/include/sys/_types/_int8_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_int16_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_int32_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_int64_t.h
Util/geometry.todo.o: /usr/include/_types/_uint8_t.h
Util/geometry.todo.o: /usr/include/_types/_uint16_t.h
Util/geometry.todo.o: /usr/include/_types/_uint32_t.h
Util/geometry.todo.o: /usr/include/_types/_uint64_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_intptr_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_uintptr_t.h
Util/geometry.todo.o: /usr/include/_types/_intmax_t.h
Util/geometry.todo.o: /usr/include/_types/_uintmax_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_timeval.h
Util/geometry.todo.o: /usr/include/machine/endian.h
Util/geometry.todo.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
Util/geometry.todo.o: /usr/include/libkern/_OSByteOrder.h
Util/geometry.todo.o: /usr/include/libkern/i386/_OSByteOrder.h
Util/geometry.todo.o: /usr/include/alloca.h
Util/geometry.todo.o: /usr/include/sys/_types/_ct_rune_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_rune_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_wchar_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_null.h
Util/geometry.todo.o: /usr/include/machine/types.h /usr/include/i386/types.h
Util/geometry.todo.o: /usr/include/sys/_types/___offsetof.h
Util/geometry.todo.o: /usr/include/sys/_types/_dev_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_mode_t.h /usr/include/math.h
Util/geometry.todo.o: ./SVD/SVDFit.h ./SVD/MatrixMNTC.h ./SVD/comdef.h
Util/geometry.todo.o: ./SVD/MatrixMNTC.inl ./SVD/SVD.h ./SVD/SVD.inl
Util/geometry.todo.o: /usr/include/stdio.h /usr/include/sys/_types/_va_list.h
Util/geometry.todo.o: /usr/include/sys/_types/_off_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_ssize_t.h
Util/geometry.todo.o: /usr/include/secure/_stdio.h
Util/geometry.todo.o: /usr/include/secure/_common.h /usr/include/memory.h
Util/geometry.todo.o: /usr/include/string.h
Util/geometry.todo.o: /usr/include/sys/_types/_rsize_t.h
Util/geometry.todo.o: /usr/include/sys/_types/_errno_t.h
Util/geometry.todo.o: /usr/include/strings.h /usr/include/secure/_string.h
Util/geometry.todo.o: ./SVD/SVDFit.inl ./SVD/MatrixMNTC.h Util/geometry.h
Image/bmp.o: Image/bmp.h Image/image.h /usr/include/stdio.h
Image/bmp.o: /usr/include/sys/cdefs.h /usr/include/sys/_symbol_aliasing.h
Image/bmp.o: /usr/include/sys/_posix_availability.h
Image/bmp.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
Image/bmp.o: /usr/include/_types.h /usr/include/sys/_types.h
Image/bmp.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Image/bmp.o: /usr/include/sys/_types/_va_list.h
Image/bmp.o: /usr/include/sys/_types/_size_t.h
Image/bmp.o: /usr/include/sys/_types/_null.h /usr/include/sys/_types/_off_t.h
Image/bmp.o: /usr/include/sys/_types/_ssize_t.h /usr/include/secure/_stdio.h
Image/bmp.o: /usr/include/secure/_common.h Image/lineSegments.h
Image/bmp.o: /usr/include/stdlib.h /usr/include/sys/wait.h
Image/bmp.o: /usr/include/sys/_types/_pid_t.h /usr/include/sys/_types/_id_t.h
Image/bmp.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
Image/bmp.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
Image/bmp.o: /usr/include/machine/_mcontext.h /usr/include/i386/_mcontext.h
Image/bmp.o: /usr/include/mach/i386/_structs.h
Image/bmp.o: /usr/include/sys/_types/_sigaltstack.h
Image/bmp.o: /usr/include/sys/_types/_ucontext.h
Image/bmp.o: /usr/include/sys/_types/_pthread_attr_t.h
Image/bmp.o: /usr/include/sys/_types/_sigset_t.h
Image/bmp.o: /usr/include/sys/_types/_uid_t.h /usr/include/sys/resource.h
Image/bmp.o: /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h
Image/bmp.o: /usr/include/sys/_types/_int16_t.h
Image/bmp.o: /usr/include/sys/_types/_int32_t.h
Image/bmp.o: /usr/include/sys/_types/_int64_t.h
Image/bmp.o: /usr/include/_types/_uint8_t.h /usr/include/_types/_uint16_t.h
Image/bmp.o: /usr/include/_types/_uint32_t.h /usr/include/_types/_uint64_t.h
Image/bmp.o: /usr/include/sys/_types/_intptr_t.h
Image/bmp.o: /usr/include/sys/_types/_uintptr_t.h
Image/bmp.o: /usr/include/_types/_intmax_t.h /usr/include/_types/_uintmax_t.h
Image/bmp.o: /usr/include/sys/_types/_timeval.h /usr/include/machine/endian.h
Image/bmp.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
Image/bmp.o: /usr/include/libkern/_OSByteOrder.h
Image/bmp.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
Image/bmp.o: /usr/include/sys/_types/_ct_rune_t.h
Image/bmp.o: /usr/include/sys/_types/_rune_t.h
Image/bmp.o: /usr/include/sys/_types/_wchar_t.h /usr/include/machine/types.h
Image/bmp.o: /usr/include/i386/types.h /usr/include/sys/_types/___offsetof.h
Image/bmp.o: /usr/include/sys/_types/_dev_t.h
Image/bmp.o: /usr/include/sys/_types/_mode_t.h
Image/image.o: /usr/include/string.h /usr/include/_types.h
Image/image.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
Image/image.o: /usr/include/sys/_symbol_aliasing.h
Image/image.o: /usr/include/sys/_posix_availability.h
Image/image.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Image/image.o: /usr/include/Availability.h
Image/image.o: /usr/include/AvailabilityInternal.h
Image/image.o: /usr/include/sys/_types/_size_t.h
Image/image.o: /usr/include/sys/_types/_null.h
Image/image.o: /usr/include/sys/_types/_rsize_t.h
Image/image.o: /usr/include/sys/_types/_errno_t.h
Image/image.o: /usr/include/sys/_types/_ssize_t.h /usr/include/strings.h
Image/image.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
Image/image.o: /usr/include/stdlib.h /usr/include/sys/wait.h
Image/image.o: /usr/include/sys/_types/_pid_t.h
Image/image.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Image/image.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
Image/image.o: /usr/include/i386/signal.h /usr/include/machine/_mcontext.h
Image/image.o: /usr/include/i386/_mcontext.h
Image/image.o: /usr/include/mach/i386/_structs.h
Image/image.o: /usr/include/sys/_types/_sigaltstack.h
Image/image.o: /usr/include/sys/_types/_ucontext.h
Image/image.o: /usr/include/sys/_types/_pthread_attr_t.h
Image/image.o: /usr/include/sys/_types/_sigset_t.h
Image/image.o: /usr/include/sys/_types/_uid_t.h /usr/include/sys/resource.h
Image/image.o: /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h
Image/image.o: /usr/include/sys/_types/_int16_t.h
Image/image.o: /usr/include/sys/_types/_int32_t.h
Image/image.o: /usr/include/sys/_types/_int64_t.h
Image/image.o: /usr/include/_types/_uint8_t.h /usr/include/_types/_uint16_t.h
Image/image.o: /usr/include/_types/_uint32_t.h
Image/image.o: /usr/include/_types/_uint64_t.h
Image/image.o: /usr/include/sys/_types/_intptr_t.h
Image/image.o: /usr/include/sys/_types/_uintptr_t.h
Image/image.o: /usr/include/_types/_intmax_t.h
Image/image.o: /usr/include/_types/_uintmax_t.h
Image/image.o: /usr/include/sys/_types/_timeval.h
Image/image.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Image/image.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
Image/image.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
Image/image.o: /usr/include/sys/_types/_ct_rune_t.h
Image/image.o: /usr/include/sys/_types/_rune_t.h
Image/image.o: /usr/include/sys/_types/_wchar_t.h
Image/image.o: /usr/include/machine/types.h /usr/include/i386/types.h
Image/image.o: /usr/include/sys/_types/___offsetof.h
Image/image.o: /usr/include/sys/_types/_dev_t.h
Image/image.o: /usr/include/sys/_types/_mode_t.h Image/image.h
Image/image.o: /usr/include/stdio.h /usr/include/sys/_types/_va_list.h
Image/image.o: /usr/include/sys/_types/_off_t.h /usr/include/secure/_stdio.h
Image/image.o: Image/lineSegments.h ./Util/cmdLineParser.h ./Image/bmp.h
Image/image.o: ./Image/jpeg.h
Image/image.todo.o: Image/image.h /usr/include/stdio.h
Image/image.todo.o: /usr/include/sys/cdefs.h
Image/image.todo.o: /usr/include/sys/_symbol_aliasing.h
Image/image.todo.o: /usr/include/sys/_posix_availability.h
Image/image.todo.o: /usr/include/Availability.h
Image/image.todo.o: /usr/include/AvailabilityInternal.h /usr/include/_types.h
Image/image.todo.o: /usr/include/sys/_types.h /usr/include/machine/_types.h
Image/image.todo.o: /usr/include/i386/_types.h
Image/image.todo.o: /usr/include/sys/_types/_va_list.h
Image/image.todo.o: /usr/include/sys/_types/_size_t.h
Image/image.todo.o: /usr/include/sys/_types/_null.h
Image/image.todo.o: /usr/include/sys/_types/_off_t.h
Image/image.todo.o: /usr/include/sys/_types/_ssize_t.h
Image/image.todo.o: /usr/include/secure/_stdio.h
Image/image.todo.o: /usr/include/secure/_common.h Image/lineSegments.h
Image/image.todo.o: /usr/include/stdlib.h /usr/include/sys/wait.h
Image/image.todo.o: /usr/include/sys/_types/_pid_t.h
Image/image.todo.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Image/image.todo.o: /usr/include/sys/appleapiopts.h
Image/image.todo.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
Image/image.todo.o: /usr/include/machine/_mcontext.h
Image/image.todo.o: /usr/include/i386/_mcontext.h
Image/image.todo.o: /usr/include/mach/i386/_structs.h
Image/image.todo.o: /usr/include/sys/_types/_sigaltstack.h
Image/image.todo.o: /usr/include/sys/_types/_ucontext.h
Image/image.todo.o: /usr/include/sys/_types/_pthread_attr_t.h
Image/image.todo.o: /usr/include/sys/_types/_sigset_t.h
Image/image.todo.o: /usr/include/sys/_types/_uid_t.h
Image/image.todo.o: /usr/include/sys/resource.h /usr/include/stdint.h
Image/image.todo.o: /usr/include/sys/_types/_int8_t.h
Image/image.todo.o: /usr/include/sys/_types/_int16_t.h
Image/image.todo.o: /usr/include/sys/_types/_int32_t.h
Image/image.todo.o: /usr/include/sys/_types/_int64_t.h
Image/image.todo.o: /usr/include/_types/_uint8_t.h
Image/image.todo.o: /usr/include/_types/_uint16_t.h
Image/image.todo.o: /usr/include/_types/_uint32_t.h
Image/image.todo.o: /usr/include/_types/_uint64_t.h
Image/image.todo.o: /usr/include/sys/_types/_intptr_t.h
Image/image.todo.o: /usr/include/sys/_types/_uintptr_t.h
Image/image.todo.o: /usr/include/_types/_intmax_t.h
Image/image.todo.o: /usr/include/_types/_uintmax_t.h
Image/image.todo.o: /usr/include/sys/_types/_timeval.h
Image/image.todo.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Image/image.todo.o: /usr/include/sys/_endian.h
Image/image.todo.o: /usr/include/libkern/_OSByteOrder.h
Image/image.todo.o: /usr/include/libkern/i386/_OSByteOrder.h
Image/image.todo.o: /usr/include/alloca.h
Image/image.todo.o: /usr/include/sys/_types/_ct_rune_t.h
Image/image.todo.o: /usr/include/sys/_types/_rune_t.h
Image/image.todo.o: /usr/include/sys/_types/_wchar_t.h
Image/image.todo.o: /usr/include/machine/types.h /usr/include/i386/types.h
Image/image.todo.o: /usr/include/sys/_types/___offsetof.h
Image/image.todo.o: /usr/include/sys/_types/_dev_t.h
Image/image.todo.o: /usr/include/sys/_types/_mode_t.h /usr/include/math.h
Image/jpeg.o: Image/jpeg.h Image/image.h /usr/include/stdio.h
Image/jpeg.o: /usr/include/sys/cdefs.h /usr/include/sys/_symbol_aliasing.h
Image/jpeg.o: /usr/include/sys/_posix_availability.h
Image/jpeg.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
Image/jpeg.o: /usr/include/_types.h /usr/include/sys/_types.h
Image/jpeg.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Image/jpeg.o: /usr/include/sys/_types/_va_list.h
Image/jpeg.o: /usr/include/sys/_types/_size_t.h
Image/jpeg.o: /usr/include/sys/_types/_null.h
Image/jpeg.o: /usr/include/sys/_types/_off_t.h
Image/jpeg.o: /usr/include/sys/_types/_ssize_t.h /usr/include/secure/_stdio.h
Image/jpeg.o: /usr/include/secure/_common.h Image/lineSegments.h
Image/jpeg.o: /usr/include/assert.h /usr/include/stdlib.h
Image/jpeg.o: /usr/include/sys/wait.h /usr/include/sys/_types/_pid_t.h
Image/jpeg.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Image/jpeg.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
Image/jpeg.o: /usr/include/i386/signal.h /usr/include/machine/_mcontext.h
Image/jpeg.o: /usr/include/i386/_mcontext.h /usr/include/mach/i386/_structs.h
Image/jpeg.o: /usr/include/sys/_types/_sigaltstack.h
Image/jpeg.o: /usr/include/sys/_types/_ucontext.h
Image/jpeg.o: /usr/include/sys/_types/_pthread_attr_t.h
Image/jpeg.o: /usr/include/sys/_types/_sigset_t.h
Image/jpeg.o: /usr/include/sys/_types/_uid_t.h /usr/include/sys/resource.h
Image/jpeg.o: /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h
Image/jpeg.o: /usr/include/sys/_types/_int16_t.h
Image/jpeg.o: /usr/include/sys/_types/_int32_t.h
Image/jpeg.o: /usr/include/sys/_types/_int64_t.h
Image/jpeg.o: /usr/include/_types/_uint8_t.h /usr/include/_types/_uint16_t.h
Image/jpeg.o: /usr/include/_types/_uint32_t.h /usr/include/_types/_uint64_t.h
Image/jpeg.o: /usr/include/sys/_types/_intptr_t.h
Image/jpeg.o: /usr/include/sys/_types/_uintptr_t.h
Image/jpeg.o: /usr/include/_types/_intmax_t.h
Image/jpeg.o: /usr/include/_types/_uintmax_t.h
Image/jpeg.o: /usr/include/sys/_types/_timeval.h
Image/jpeg.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Image/jpeg.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
Image/jpeg.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
Image/jpeg.o: /usr/include/sys/_types/_ct_rune_t.h
Image/jpeg.o: /usr/include/sys/_types/_rune_t.h
Image/jpeg.o: /usr/include/sys/_types/_wchar_t.h /usr/include/machine/types.h
Image/jpeg.o: /usr/include/i386/types.h /usr/include/sys/_types/___offsetof.h
Image/jpeg.o: /usr/include/sys/_types/_dev_t.h
Image/jpeg.o: /usr/include/sys/_types/_mode_t.h ./JPEG/jpeglib.h
Image/jpeg.o: ./JPEG/jconfig.h ./JPEG/jmorecfg.h /usr/include/setjmp.h
Image/lineSegments.o: Image/lineSegments.h /usr/include/stdio.h
Image/lineSegments.o: /usr/include/sys/cdefs.h
Image/lineSegments.o: /usr/include/sys/_symbol_aliasing.h
Image/lineSegments.o: /usr/include/sys/_posix_availability.h
Image/lineSegments.o: /usr/include/Availability.h
Image/lineSegments.o: /usr/include/AvailabilityInternal.h
Image/lineSegments.o: /usr/include/_types.h /usr/include/sys/_types.h
Image/lineSegments.o: /usr/include/machine/_types.h
Image/lineSegments.o: /usr/include/i386/_types.h
Image/lineSegments.o: /usr/include/sys/_types/_va_list.h
Image/lineSegments.o: /usr/include/sys/_types/_size_t.h
Image/lineSegments.o: /usr/include/sys/_types/_null.h
Image/lineSegments.o: /usr/include/sys/_types/_off_t.h
Image/lineSegments.o: /usr/include/sys/_types/_ssize_t.h
Image/lineSegments.o: /usr/include/secure/_stdio.h
Image/lineSegments.o: /usr/include/secure/_common.h /usr/include/math.h
Image/lineSegments.todo.o: Image/lineSegments.h /usr/include/stdio.h
Image/lineSegments.todo.o: /usr/include/sys/cdefs.h
Image/lineSegments.todo.o: /usr/include/sys/_symbol_aliasing.h
Image/lineSegments.todo.o: /usr/include/sys/_posix_availability.h
Image/lineSegments.todo.o: /usr/include/Availability.h
Image/lineSegments.todo.o: /usr/include/AvailabilityInternal.h
Image/lineSegments.todo.o: /usr/include/_types.h /usr/include/sys/_types.h
Image/lineSegments.todo.o: /usr/include/machine/_types.h
Image/lineSegments.todo.o: /usr/include/i386/_types.h
Image/lineSegments.todo.o: /usr/include/sys/_types/_va_list.h
Image/lineSegments.todo.o: /usr/include/sys/_types/_size_t.h
Image/lineSegments.todo.o: /usr/include/sys/_types/_null.h
Image/lineSegments.todo.o: /usr/include/sys/_types/_off_t.h
Image/lineSegments.todo.o: /usr/include/sys/_types/_ssize_t.h
Image/lineSegments.todo.o: /usr/include/secure/_stdio.h
Image/lineSegments.todo.o: /usr/include/secure/_common.h /usr/include/math.h
Ray/mouse.o: Ray/mouse.h ./Util/geometry.h
Ray/rayBox.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/rayBox.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayBox.o: /usr/include/sys/_posix_availability.h
Ray/rayBox.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
Ray/rayBox.o: /usr/include/_types.h /usr/include/sys/_types.h
Ray/rayBox.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Ray/rayBox.o: /usr/include/sys/_types/_va_list.h
Ray/rayBox.o: /usr/include/sys/_types/_size_t.h
Ray/rayBox.o: /usr/include/sys/_types/_null.h
Ray/rayBox.o: /usr/include/sys/_types/_off_t.h
Ray/rayBox.o: /usr/include/sys/_types/_ssize_t.h /usr/include/secure/_stdio.h
Ray/rayBox.o: /usr/include/secure/_common.h /usr/include/stdlib.h
Ray/rayBox.o: /usr/include/sys/wait.h /usr/include/sys/_types/_pid_t.h
Ray/rayBox.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Ray/rayBox.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
Ray/rayBox.o: /usr/include/i386/signal.h /usr/include/machine/_mcontext.h
Ray/rayBox.o: /usr/include/i386/_mcontext.h /usr/include/mach/i386/_structs.h
Ray/rayBox.o: /usr/include/sys/_types/_sigaltstack.h
Ray/rayBox.o: /usr/include/sys/_types/_ucontext.h
Ray/rayBox.o: /usr/include/sys/_types/_pthread_attr_t.h
Ray/rayBox.o: /usr/include/sys/_types/_sigset_t.h
Ray/rayBox.o: /usr/include/sys/_types/_uid_t.h /usr/include/sys/resource.h
Ray/rayBox.o: /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h
Ray/rayBox.o: /usr/include/sys/_types/_int16_t.h
Ray/rayBox.o: /usr/include/sys/_types/_int32_t.h
Ray/rayBox.o: /usr/include/sys/_types/_int64_t.h
Ray/rayBox.o: /usr/include/_types/_uint8_t.h /usr/include/_types/_uint16_t.h
Ray/rayBox.o: /usr/include/_types/_uint32_t.h /usr/include/_types/_uint64_t.h
Ray/rayBox.o: /usr/include/sys/_types/_intptr_t.h
Ray/rayBox.o: /usr/include/sys/_types/_uintptr_t.h
Ray/rayBox.o: /usr/include/_types/_intmax_t.h
Ray/rayBox.o: /usr/include/_types/_uintmax_t.h
Ray/rayBox.o: /usr/include/sys/_types/_timeval.h
Ray/rayBox.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Ray/rayBox.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
Ray/rayBox.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
Ray/rayBox.o: /usr/include/sys/_types/_ct_rune_t.h
Ray/rayBox.o: /usr/include/sys/_types/_rune_t.h
Ray/rayBox.o: /usr/include/sys/_types/_wchar_t.h /usr/include/machine/types.h
Ray/rayBox.o: /usr/include/i386/types.h /usr/include/sys/_types/___offsetof.h
Ray/rayBox.o: /usr/include/sys/_types/_dev_t.h
Ray/rayBox.o: /usr/include/sys/_types/_mode_t.h /usr/include/math.h
Ray/rayBox.o: Ray/rayBox.h ./Util/geometry.h Ray/rayShape.h Ray/rayScene.h
Ray/rayBox.o: ./Image/image.h Image/lineSegments.h Ray/rayLight.h
Ray/rayBox.o: Ray/rayGroup.h Ray/rayKey.h ./Util/parameterSamples.h
Ray/rayBox.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayBox.todo.o: /usr/include/math.h /usr/include/sys/cdefs.h
Ray/rayBox.todo.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayBox.todo.o: /usr/include/sys/_posix_availability.h
Ray/rayBox.todo.o: /usr/include/Availability.h
Ray/rayBox.todo.o: /usr/include/AvailabilityInternal.h Ray/rayScene.h
Ray/rayBox.todo.o: ./Util/geometry.h ./Image/image.h /usr/include/stdio.h
Ray/rayBox.todo.o: /usr/include/_types.h /usr/include/sys/_types.h
Ray/rayBox.todo.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Ray/rayBox.todo.o: /usr/include/sys/_types/_va_list.h
Ray/rayBox.todo.o: /usr/include/sys/_types/_size_t.h
Ray/rayBox.todo.o: /usr/include/sys/_types/_null.h
Ray/rayBox.todo.o: /usr/include/sys/_types/_off_t.h
Ray/rayBox.todo.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayBox.todo.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
Ray/rayBox.todo.o: Image/lineSegments.h Ray/rayShape.h Ray/rayLight.h
Ray/rayBox.todo.o: Ray/rayGroup.h Ray/rayKey.h ./Util/parameterSamples.h
Ray/rayBox.todo.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayBox.todo.o: Ray/rayBox.h
Ray/rayCamera.o: Ray/rayCamera.h /usr/include/stdio.h
Ray/rayCamera.o: /usr/include/sys/cdefs.h /usr/include/sys/_symbol_aliasing.h
Ray/rayCamera.o: /usr/include/sys/_posix_availability.h
Ray/rayCamera.o: /usr/include/Availability.h
Ray/rayCamera.o: /usr/include/AvailabilityInternal.h /usr/include/_types.h
Ray/rayCamera.o: /usr/include/sys/_types.h /usr/include/machine/_types.h
Ray/rayCamera.o: /usr/include/i386/_types.h
Ray/rayCamera.o: /usr/include/sys/_types/_va_list.h
Ray/rayCamera.o: /usr/include/sys/_types/_size_t.h
Ray/rayCamera.o: /usr/include/sys/_types/_null.h
Ray/rayCamera.o: /usr/include/sys/_types/_off_t.h
Ray/rayCamera.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayCamera.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
Ray/rayCamera.o: ./Util/geometry.h
Ray/rayCamera.todo.o: /usr/include/math.h /usr/include/sys/cdefs.h
Ray/rayCamera.todo.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayCamera.todo.o: /usr/include/sys/_posix_availability.h
Ray/rayCamera.todo.o: /usr/include/Availability.h
Ray/rayCamera.todo.o: /usr/include/AvailabilityInternal.h Ray/rayCamera.h
Ray/rayCamera.todo.o: /usr/include/stdio.h /usr/include/_types.h
Ray/rayCamera.todo.o: /usr/include/sys/_types.h /usr/include/machine/_types.h
Ray/rayCamera.todo.o: /usr/include/i386/_types.h
Ray/rayCamera.todo.o: /usr/include/sys/_types/_va_list.h
Ray/rayCamera.todo.o: /usr/include/sys/_types/_size_t.h
Ray/rayCamera.todo.o: /usr/include/sys/_types/_null.h
Ray/rayCamera.todo.o: /usr/include/sys/_types/_off_t.h
Ray/rayCamera.todo.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayCamera.todo.o: /usr/include/secure/_stdio.h
Ray/rayCamera.todo.o: /usr/include/secure/_common.h ./Util/geometry.h
Ray/rayCone.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/rayCone.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayCone.o: /usr/include/sys/_posix_availability.h
Ray/rayCone.o: /usr/include/Availability.h
Ray/rayCone.o: /usr/include/AvailabilityInternal.h /usr/include/_types.h
Ray/rayCone.o: /usr/include/sys/_types.h /usr/include/machine/_types.h
Ray/rayCone.o: /usr/include/i386/_types.h /usr/include/sys/_types/_va_list.h
Ray/rayCone.o: /usr/include/sys/_types/_size_t.h
Ray/rayCone.o: /usr/include/sys/_types/_null.h
Ray/rayCone.o: /usr/include/sys/_types/_off_t.h
Ray/rayCone.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayCone.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
Ray/rayCone.o: /usr/include/stdlib.h /usr/include/sys/wait.h
Ray/rayCone.o: /usr/include/sys/_types/_pid_t.h
Ray/rayCone.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Ray/rayCone.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
Ray/rayCone.o: /usr/include/i386/signal.h /usr/include/machine/_mcontext.h
Ray/rayCone.o: /usr/include/i386/_mcontext.h
Ray/rayCone.o: /usr/include/mach/i386/_structs.h
Ray/rayCone.o: /usr/include/sys/_types/_sigaltstack.h
Ray/rayCone.o: /usr/include/sys/_types/_ucontext.h
Ray/rayCone.o: /usr/include/sys/_types/_pthread_attr_t.h
Ray/rayCone.o: /usr/include/sys/_types/_sigset_t.h
Ray/rayCone.o: /usr/include/sys/_types/_uid_t.h /usr/include/sys/resource.h
Ray/rayCone.o: /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h
Ray/rayCone.o: /usr/include/sys/_types/_int16_t.h
Ray/rayCone.o: /usr/include/sys/_types/_int32_t.h
Ray/rayCone.o: /usr/include/sys/_types/_int64_t.h
Ray/rayCone.o: /usr/include/_types/_uint8_t.h /usr/include/_types/_uint16_t.h
Ray/rayCone.o: /usr/include/_types/_uint32_t.h
Ray/rayCone.o: /usr/include/_types/_uint64_t.h
Ray/rayCone.o: /usr/include/sys/_types/_intptr_t.h
Ray/rayCone.o: /usr/include/sys/_types/_uintptr_t.h
Ray/rayCone.o: /usr/include/_types/_intmax_t.h
Ray/rayCone.o: /usr/include/_types/_uintmax_t.h
Ray/rayCone.o: /usr/include/sys/_types/_timeval.h
Ray/rayCone.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Ray/rayCone.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
Ray/rayCone.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
Ray/rayCone.o: /usr/include/sys/_types/_ct_rune_t.h
Ray/rayCone.o: /usr/include/sys/_types/_rune_t.h
Ray/rayCone.o: /usr/include/sys/_types/_wchar_t.h
Ray/rayCone.o: /usr/include/machine/types.h /usr/include/i386/types.h
Ray/rayCone.o: /usr/include/sys/_types/___offsetof.h
Ray/rayCone.o: /usr/include/sys/_types/_dev_t.h
Ray/rayCone.o: /usr/include/sys/_types/_mode_t.h /usr/include/math.h
Ray/rayCone.o: Ray/rayCone.h ./Util/geometry.h Ray/rayShape.h Ray/rayScene.h
Ray/rayCone.o: ./Image/image.h Image/lineSegments.h Ray/rayLight.h
Ray/rayCone.o: Ray/rayGroup.h Ray/rayKey.h ./Util/parameterSamples.h
Ray/rayCone.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayCone.todo.o: /usr/include/math.h /usr/include/sys/cdefs.h
Ray/rayCone.todo.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayCone.todo.o: /usr/include/sys/_posix_availability.h
Ray/rayCone.todo.o: /usr/include/Availability.h
Ray/rayCone.todo.o: /usr/include/AvailabilityInternal.h Ray/rayScene.h
Ray/rayCone.todo.o: ./Util/geometry.h ./Image/image.h /usr/include/stdio.h
Ray/rayCone.todo.o: /usr/include/_types.h /usr/include/sys/_types.h
Ray/rayCone.todo.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Ray/rayCone.todo.o: /usr/include/sys/_types/_va_list.h
Ray/rayCone.todo.o: /usr/include/sys/_types/_size_t.h
Ray/rayCone.todo.o: /usr/include/sys/_types/_null.h
Ray/rayCone.todo.o: /usr/include/sys/_types/_off_t.h
Ray/rayCone.todo.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayCone.todo.o: /usr/include/secure/_stdio.h
Ray/rayCone.todo.o: /usr/include/secure/_common.h Image/lineSegments.h
Ray/rayCone.todo.o: Ray/rayShape.h Ray/rayLight.h Ray/rayGroup.h Ray/rayKey.h
Ray/rayCone.todo.o: ./Util/parameterSamples.h
Ray/rayCone.todo.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayCone.todo.o: Ray/rayCone.h
Ray/rayCylinder.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/rayCylinder.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayCylinder.o: /usr/include/sys/_posix_availability.h
Ray/rayCylinder.o: /usr/include/Availability.h
Ray/rayCylinder.o: /usr/include/AvailabilityInternal.h /usr/include/_types.h
Ray/rayCylinder.o: /usr/include/sys/_types.h /usr/include/machine/_types.h
Ray/rayCylinder.o: /usr/include/i386/_types.h
Ray/rayCylinder.o: /usr/include/sys/_types/_va_list.h
Ray/rayCylinder.o: /usr/include/sys/_types/_size_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_null.h
Ray/rayCylinder.o: /usr/include/sys/_types/_off_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayCylinder.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
Ray/rayCylinder.o: /usr/include/stdlib.h /usr/include/sys/wait.h
Ray/rayCylinder.o: /usr/include/sys/_types/_pid_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Ray/rayCylinder.o: /usr/include/sys/appleapiopts.h
Ray/rayCylinder.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
Ray/rayCylinder.o: /usr/include/machine/_mcontext.h
Ray/rayCylinder.o: /usr/include/i386/_mcontext.h
Ray/rayCylinder.o: /usr/include/mach/i386/_structs.h
Ray/rayCylinder.o: /usr/include/sys/_types/_sigaltstack.h
Ray/rayCylinder.o: /usr/include/sys/_types/_ucontext.h
Ray/rayCylinder.o: /usr/include/sys/_types/_pthread_attr_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_sigset_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_uid_t.h
Ray/rayCylinder.o: /usr/include/sys/resource.h /usr/include/stdint.h
Ray/rayCylinder.o: /usr/include/sys/_types/_int8_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_int16_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_int32_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_int64_t.h
Ray/rayCylinder.o: /usr/include/_types/_uint8_t.h
Ray/rayCylinder.o: /usr/include/_types/_uint16_t.h
Ray/rayCylinder.o: /usr/include/_types/_uint32_t.h
Ray/rayCylinder.o: /usr/include/_types/_uint64_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_intptr_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_uintptr_t.h
Ray/rayCylinder.o: /usr/include/_types/_intmax_t.h
Ray/rayCylinder.o: /usr/include/_types/_uintmax_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_timeval.h
Ray/rayCylinder.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Ray/rayCylinder.o: /usr/include/sys/_endian.h
Ray/rayCylinder.o: /usr/include/libkern/_OSByteOrder.h
Ray/rayCylinder.o: /usr/include/libkern/i386/_OSByteOrder.h
Ray/rayCylinder.o: /usr/include/alloca.h /usr/include/sys/_types/_ct_rune_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_rune_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_wchar_t.h
Ray/rayCylinder.o: /usr/include/machine/types.h /usr/include/i386/types.h
Ray/rayCylinder.o: /usr/include/sys/_types/___offsetof.h
Ray/rayCylinder.o: /usr/include/sys/_types/_dev_t.h
Ray/rayCylinder.o: /usr/include/sys/_types/_mode_t.h /usr/include/math.h
Ray/rayCylinder.o: Ray/rayCylinder.h ./Util/geometry.h Ray/rayShape.h
Ray/rayCylinder.o: Ray/rayScene.h ./Image/image.h Image/lineSegments.h
Ray/rayCylinder.o: Ray/rayLight.h Ray/rayGroup.h Ray/rayKey.h
Ray/rayCylinder.o: ./Util/parameterSamples.h ./Util/parameterSamples.todo.inl
Ray/rayCylinder.o: Ray/rayCamera.h
Ray/rayCylinder.todo.o: /usr/include/math.h /usr/include/sys/cdefs.h
Ray/rayCylinder.todo.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayCylinder.todo.o: /usr/include/sys/_posix_availability.h
Ray/rayCylinder.todo.o: /usr/include/Availability.h
Ray/rayCylinder.todo.o: /usr/include/AvailabilityInternal.h Ray/rayScene.h
Ray/rayCylinder.todo.o: ./Util/geometry.h ./Image/image.h
Ray/rayCylinder.todo.o: /usr/include/stdio.h /usr/include/_types.h
Ray/rayCylinder.todo.o: /usr/include/sys/_types.h
Ray/rayCylinder.todo.o: /usr/include/machine/_types.h
Ray/rayCylinder.todo.o: /usr/include/i386/_types.h
Ray/rayCylinder.todo.o: /usr/include/sys/_types/_va_list.h
Ray/rayCylinder.todo.o: /usr/include/sys/_types/_size_t.h
Ray/rayCylinder.todo.o: /usr/include/sys/_types/_null.h
Ray/rayCylinder.todo.o: /usr/include/sys/_types/_off_t.h
Ray/rayCylinder.todo.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayCylinder.todo.o: /usr/include/secure/_stdio.h
Ray/rayCylinder.todo.o: /usr/include/secure/_common.h Image/lineSegments.h
Ray/rayCylinder.todo.o: Ray/rayShape.h Ray/rayLight.h Ray/rayGroup.h
Ray/rayCylinder.todo.o: Ray/rayKey.h ./Util/parameterSamples.h
Ray/rayCylinder.todo.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayCylinder.todo.o: Ray/rayCylinder.h
Ray/rayDirectionalLight.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/rayDirectionalLight.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayDirectionalLight.o: /usr/include/sys/_posix_availability.h
Ray/rayDirectionalLight.o: /usr/include/Availability.h
Ray/rayDirectionalLight.o: /usr/include/AvailabilityInternal.h
Ray/rayDirectionalLight.o: /usr/include/_types.h /usr/include/sys/_types.h
Ray/rayDirectionalLight.o: /usr/include/machine/_types.h
Ray/rayDirectionalLight.o: /usr/include/i386/_types.h
Ray/rayDirectionalLight.o: /usr/include/sys/_types/_va_list.h
Ray/rayDirectionalLight.o: /usr/include/sys/_types/_size_t.h
Ray/rayDirectionalLight.o: /usr/include/sys/_types/_null.h
Ray/rayDirectionalLight.o: /usr/include/sys/_types/_off_t.h
Ray/rayDirectionalLight.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayDirectionalLight.o: /usr/include/secure/_stdio.h
Ray/rayDirectionalLight.o: /usr/include/secure/_common.h
Ray/rayDirectionalLight.o: /usr/include/string.h
Ray/rayDirectionalLight.o: /usr/include/sys/_types/_rsize_t.h
Ray/rayDirectionalLight.o: /usr/include/sys/_types/_errno_t.h
Ray/rayDirectionalLight.o: /usr/include/strings.h
Ray/rayDirectionalLight.o: /usr/include/secure/_string.h /usr/include/math.h
Ray/rayDirectionalLight.o: ./Util/geometry.h Ray/rayDirectionalLight.h
Ray/rayDirectionalLight.o: Ray/rayLight.h Ray/rayShape.h Ray/rayScene.h
Ray/rayDirectionalLight.o: ./Image/image.h Image/lineSegments.h
Ray/rayDirectionalLight.o: Ray/rayGroup.h Ray/rayKey.h
Ray/rayDirectionalLight.o: ./Util/parameterSamples.h
Ray/rayDirectionalLight.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayDirectionalLight.todo.o: /usr/include/math.h /usr/include/sys/cdefs.h
Ray/rayDirectionalLight.todo.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayDirectionalLight.todo.o: /usr/include/sys/_posix_availability.h
Ray/rayDirectionalLight.todo.o: /usr/include/Availability.h
Ray/rayDirectionalLight.todo.o: /usr/include/AvailabilityInternal.h
Ray/rayDirectionalLight.todo.o: Ray/rayDirectionalLight.h Ray/rayLight.h
Ray/rayDirectionalLight.todo.o: Ray/rayShape.h /usr/include/stdio.h
Ray/rayDirectionalLight.todo.o: /usr/include/_types.h
Ray/rayDirectionalLight.todo.o: /usr/include/sys/_types.h
Ray/rayDirectionalLight.todo.o: /usr/include/machine/_types.h
Ray/rayDirectionalLight.todo.o: /usr/include/i386/_types.h
Ray/rayDirectionalLight.todo.o: /usr/include/sys/_types/_va_list.h
Ray/rayDirectionalLight.todo.o: /usr/include/sys/_types/_size_t.h
Ray/rayDirectionalLight.todo.o: /usr/include/sys/_types/_null.h
Ray/rayDirectionalLight.todo.o: /usr/include/sys/_types/_off_t.h
Ray/rayDirectionalLight.todo.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayDirectionalLight.todo.o: /usr/include/secure/_stdio.h
Ray/rayDirectionalLight.todo.o: /usr/include/secure/_common.h
Ray/rayDirectionalLight.todo.o: ./Util/geometry.h Ray/rayScene.h
Ray/rayDirectionalLight.todo.o: ./Image/image.h Image/lineSegments.h
Ray/rayDirectionalLight.todo.o: Ray/rayGroup.h Ray/rayKey.h
Ray/rayDirectionalLight.todo.o: ./Util/parameterSamples.h
Ray/rayDirectionalLight.todo.o: ./Util/parameterSamples.todo.inl
Ray/rayDirectionalLight.todo.o: Ray/rayCamera.h
Ray/rayFileInstance.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/rayFileInstance.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayFileInstance.o: /usr/include/sys/_posix_availability.h
Ray/rayFileInstance.o: /usr/include/Availability.h
Ray/rayFileInstance.o: /usr/include/AvailabilityInternal.h
Ray/rayFileInstance.o: /usr/include/_types.h /usr/include/sys/_types.h
Ray/rayFileInstance.o: /usr/include/machine/_types.h
Ray/rayFileInstance.o: /usr/include/i386/_types.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_va_list.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_size_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_null.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_off_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayFileInstance.o: /usr/include/secure/_stdio.h
Ray/rayFileInstance.o: /usr/include/secure/_common.h /usr/include/stdlib.h
Ray/rayFileInstance.o: /usr/include/sys/wait.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_pid_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_id_t.h
Ray/rayFileInstance.o: /usr/include/sys/signal.h
Ray/rayFileInstance.o: /usr/include/sys/appleapiopts.h
Ray/rayFileInstance.o: /usr/include/machine/signal.h
Ray/rayFileInstance.o: /usr/include/i386/signal.h
Ray/rayFileInstance.o: /usr/include/machine/_mcontext.h
Ray/rayFileInstance.o: /usr/include/i386/_mcontext.h
Ray/rayFileInstance.o: /usr/include/mach/i386/_structs.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_sigaltstack.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_ucontext.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_pthread_attr_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_sigset_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_uid_t.h
Ray/rayFileInstance.o: /usr/include/sys/resource.h /usr/include/stdint.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_int8_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_int16_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_int32_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_int64_t.h
Ray/rayFileInstance.o: /usr/include/_types/_uint8_t.h
Ray/rayFileInstance.o: /usr/include/_types/_uint16_t.h
Ray/rayFileInstance.o: /usr/include/_types/_uint32_t.h
Ray/rayFileInstance.o: /usr/include/_types/_uint64_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_intptr_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_uintptr_t.h
Ray/rayFileInstance.o: /usr/include/_types/_intmax_t.h
Ray/rayFileInstance.o: /usr/include/_types/_uintmax_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_timeval.h
Ray/rayFileInstance.o: /usr/include/machine/endian.h
Ray/rayFileInstance.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
Ray/rayFileInstance.o: /usr/include/libkern/_OSByteOrder.h
Ray/rayFileInstance.o: /usr/include/libkern/i386/_OSByteOrder.h
Ray/rayFileInstance.o: /usr/include/alloca.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_ct_rune_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_rune_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_wchar_t.h
Ray/rayFileInstance.o: /usr/include/machine/types.h /usr/include/i386/types.h
Ray/rayFileInstance.o: /usr/include/sys/_types/___offsetof.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_dev_t.h
Ray/rayFileInstance.o: /usr/include/sys/_types/_mode_t.h
Ray/rayFileInstance.o: Ray/rayFileInstance.h ./Util/geometry.h Ray/rayShape.h
Ray/rayFileInstance.o: Ray/rayScene.h ./Image/image.h Image/lineSegments.h
Ray/rayFileInstance.o: Ray/rayLight.h Ray/rayGroup.h Ray/rayKey.h
Ray/rayFileInstance.o: ./Util/parameterSamples.h
Ray/rayFileInstance.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayGroup.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/rayGroup.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayGroup.o: /usr/include/sys/_posix_availability.h
Ray/rayGroup.o: /usr/include/Availability.h
Ray/rayGroup.o: /usr/include/AvailabilityInternal.h /usr/include/_types.h
Ray/rayGroup.o: /usr/include/sys/_types.h /usr/include/machine/_types.h
Ray/rayGroup.o: /usr/include/i386/_types.h /usr/include/sys/_types/_va_list.h
Ray/rayGroup.o: /usr/include/sys/_types/_size_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_null.h
Ray/rayGroup.o: /usr/include/sys/_types/_off_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayGroup.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
Ray/rayGroup.o: /usr/include/assert.h /usr/include/stdlib.h
Ray/rayGroup.o: /usr/include/sys/wait.h /usr/include/sys/_types/_pid_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Ray/rayGroup.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
Ray/rayGroup.o: /usr/include/i386/signal.h /usr/include/machine/_mcontext.h
Ray/rayGroup.o: /usr/include/i386/_mcontext.h
Ray/rayGroup.o: /usr/include/mach/i386/_structs.h
Ray/rayGroup.o: /usr/include/sys/_types/_sigaltstack.h
Ray/rayGroup.o: /usr/include/sys/_types/_ucontext.h
Ray/rayGroup.o: /usr/include/sys/_types/_pthread_attr_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_sigset_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_uid_t.h /usr/include/sys/resource.h
Ray/rayGroup.o: /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_int16_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_int32_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_int64_t.h
Ray/rayGroup.o: /usr/include/_types/_uint8_t.h
Ray/rayGroup.o: /usr/include/_types/_uint16_t.h
Ray/rayGroup.o: /usr/include/_types/_uint32_t.h
Ray/rayGroup.o: /usr/include/_types/_uint64_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_intptr_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_uintptr_t.h
Ray/rayGroup.o: /usr/include/_types/_intmax_t.h
Ray/rayGroup.o: /usr/include/_types/_uintmax_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_timeval.h
Ray/rayGroup.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Ray/rayGroup.o: /usr/include/sys/_endian.h
Ray/rayGroup.o: /usr/include/libkern/_OSByteOrder.h
Ray/rayGroup.o: /usr/include/libkern/i386/_OSByteOrder.h
Ray/rayGroup.o: /usr/include/alloca.h /usr/include/sys/_types/_ct_rune_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_rune_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_wchar_t.h
Ray/rayGroup.o: /usr/include/machine/types.h /usr/include/i386/types.h
Ray/rayGroup.o: /usr/include/sys/_types/___offsetof.h
Ray/rayGroup.o: /usr/include/sys/_types/_dev_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_mode_t.h /usr/include/string.h
Ray/rayGroup.o: /usr/include/sys/_types/_rsize_t.h
Ray/rayGroup.o: /usr/include/sys/_types/_errno_t.h /usr/include/strings.h
Ray/rayGroup.o: /usr/include/secure/_string.h Ray/rayGroup.h
Ray/rayGroup.o: ./Util/geometry.h Ray/rayShape.h Ray/rayScene.h
Ray/rayGroup.o: ./Image/image.h Image/lineSegments.h Ray/rayLight.h
Ray/rayGroup.o: Ray/rayKey.h ./Util/parameterSamples.h
Ray/rayGroup.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayGroup.todo.o: /usr/include/stdlib.h /usr/include/Availability.h
Ray/rayGroup.todo.o: /usr/include/AvailabilityInternal.h
Ray/rayGroup.todo.o: /usr/include/_types.h /usr/include/sys/_types.h
Ray/rayGroup.todo.o: /usr/include/sys/cdefs.h
Ray/rayGroup.todo.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayGroup.todo.o: /usr/include/sys/_posix_availability.h
Ray/rayGroup.todo.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Ray/rayGroup.todo.o: /usr/include/sys/wait.h /usr/include/sys/_types/_pid_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_id_t.h
Ray/rayGroup.todo.o: /usr/include/sys/signal.h
Ray/rayGroup.todo.o: /usr/include/sys/appleapiopts.h
Ray/rayGroup.todo.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
Ray/rayGroup.todo.o: /usr/include/machine/_mcontext.h
Ray/rayGroup.todo.o: /usr/include/i386/_mcontext.h
Ray/rayGroup.todo.o: /usr/include/mach/i386/_structs.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_sigaltstack.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_ucontext.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_pthread_attr_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_sigset_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_size_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_uid_t.h
Ray/rayGroup.todo.o: /usr/include/sys/resource.h /usr/include/stdint.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_int8_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_int16_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_int32_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_int64_t.h
Ray/rayGroup.todo.o: /usr/include/_types/_uint8_t.h
Ray/rayGroup.todo.o: /usr/include/_types/_uint16_t.h
Ray/rayGroup.todo.o: /usr/include/_types/_uint32_t.h
Ray/rayGroup.todo.o: /usr/include/_types/_uint64_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_intptr_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_uintptr_t.h
Ray/rayGroup.todo.o: /usr/include/_types/_intmax_t.h
Ray/rayGroup.todo.o: /usr/include/_types/_uintmax_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_timeval.h
Ray/rayGroup.todo.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Ray/rayGroup.todo.o: /usr/include/sys/_endian.h
Ray/rayGroup.todo.o: /usr/include/libkern/_OSByteOrder.h
Ray/rayGroup.todo.o: /usr/include/libkern/i386/_OSByteOrder.h
Ray/rayGroup.todo.o: /usr/include/alloca.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_ct_rune_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_rune_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_wchar_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_null.h
Ray/rayGroup.todo.o: /usr/include/machine/types.h /usr/include/i386/types.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/___offsetof.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_dev_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_mode_t.h Ray/rayGroup.h
Ray/rayGroup.todo.o: ./Util/geometry.h Ray/rayShape.h /usr/include/stdio.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_va_list.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_off_t.h
Ray/rayGroup.todo.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayGroup.todo.o: /usr/include/secure/_stdio.h
Ray/rayGroup.todo.o: /usr/include/secure/_common.h Ray/rayScene.h
Ray/rayGroup.todo.o: ./Image/image.h Image/lineSegments.h Ray/rayLight.h
Ray/rayGroup.todo.o: Ray/rayKey.h ./Util/parameterSamples.h
Ray/rayGroup.todo.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayKey.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/rayKey.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayKey.o: /usr/include/sys/_posix_availability.h
Ray/rayKey.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
Ray/rayKey.o: /usr/include/_types.h /usr/include/sys/_types.h
Ray/rayKey.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Ray/rayKey.o: /usr/include/sys/_types/_va_list.h
Ray/rayKey.o: /usr/include/sys/_types/_size_t.h
Ray/rayKey.o: /usr/include/sys/_types/_null.h
Ray/rayKey.o: /usr/include/sys/_types/_off_t.h
Ray/rayKey.o: /usr/include/sys/_types/_ssize_t.h /usr/include/secure/_stdio.h
Ray/rayKey.o: /usr/include/secure/_common.h /usr/include/string.h
Ray/rayKey.o: /usr/include/sys/_types/_rsize_t.h
Ray/rayKey.o: /usr/include/sys/_types/_errno_t.h /usr/include/strings.h
Ray/rayKey.o: /usr/include/secure/_string.h ./Util/geometry.h
Ray/rayKey.o: ./Util/cmdLineParser.h Ray/rayGroup.h Ray/rayShape.h
Ray/rayKey.o: Ray/rayScene.h ./Image/image.h Image/lineSegments.h
Ray/rayKey.o: Ray/rayLight.h Ray/rayKey.h ./Util/parameterSamples.h
Ray/rayKey.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayPointLight.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/rayPointLight.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayPointLight.o: /usr/include/sys/_posix_availability.h
Ray/rayPointLight.o: /usr/include/Availability.h
Ray/rayPointLight.o: /usr/include/AvailabilityInternal.h
Ray/rayPointLight.o: /usr/include/_types.h /usr/include/sys/_types.h
Ray/rayPointLight.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Ray/rayPointLight.o: /usr/include/sys/_types/_va_list.h
Ray/rayPointLight.o: /usr/include/sys/_types/_size_t.h
Ray/rayPointLight.o: /usr/include/sys/_types/_null.h
Ray/rayPointLight.o: /usr/include/sys/_types/_off_t.h
Ray/rayPointLight.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayPointLight.o: /usr/include/secure/_stdio.h
Ray/rayPointLight.o: /usr/include/secure/_common.h /usr/include/string.h
Ray/rayPointLight.o: /usr/include/sys/_types/_rsize_t.h
Ray/rayPointLight.o: /usr/include/sys/_types/_errno_t.h
Ray/rayPointLight.o: /usr/include/strings.h /usr/include/secure/_string.h
Ray/rayPointLight.o: /usr/include/math.h ./Util/geometry.h
Ray/rayPointLight.o: Ray/rayPointLight.h Ray/rayLight.h Ray/rayShape.h
Ray/rayPointLight.o: Ray/rayScene.h ./Image/image.h Image/lineSegments.h
Ray/rayPointLight.o: Ray/rayGroup.h Ray/rayKey.h ./Util/parameterSamples.h
Ray/rayPointLight.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayPointLight.todo.o: /usr/include/math.h /usr/include/sys/cdefs.h
Ray/rayPointLight.todo.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayPointLight.todo.o: /usr/include/sys/_posix_availability.h
Ray/rayPointLight.todo.o: /usr/include/Availability.h
Ray/rayPointLight.todo.o: /usr/include/AvailabilityInternal.h
Ray/rayPointLight.todo.o: Ray/rayPointLight.h Ray/rayLight.h Ray/rayShape.h
Ray/rayPointLight.todo.o: /usr/include/stdio.h /usr/include/_types.h
Ray/rayPointLight.todo.o: /usr/include/sys/_types.h
Ray/rayPointLight.todo.o: /usr/include/machine/_types.h
Ray/rayPointLight.todo.o: /usr/include/i386/_types.h
Ray/rayPointLight.todo.o: /usr/include/sys/_types/_va_list.h
Ray/rayPointLight.todo.o: /usr/include/sys/_types/_size_t.h
Ray/rayPointLight.todo.o: /usr/include/sys/_types/_null.h
Ray/rayPointLight.todo.o: /usr/include/sys/_types/_off_t.h
Ray/rayPointLight.todo.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayPointLight.todo.o: /usr/include/secure/_stdio.h
Ray/rayPointLight.todo.o: /usr/include/secure/_common.h ./Util/geometry.h
Ray/rayPointLight.todo.o: Ray/rayScene.h ./Image/image.h Image/lineSegments.h
Ray/rayPointLight.todo.o: Ray/rayGroup.h Ray/rayKey.h
Ray/rayPointLight.todo.o: ./Util/parameterSamples.h
Ray/rayPointLight.todo.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayScene.o: /usr/include/stdlib.h /usr/include/Availability.h
Ray/rayScene.o: /usr/include/AvailabilityInternal.h /usr/include/_types.h
Ray/rayScene.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
Ray/rayScene.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayScene.o: /usr/include/sys/_posix_availability.h
Ray/rayScene.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Ray/rayScene.o: /usr/include/sys/wait.h /usr/include/sys/_types/_pid_t.h
Ray/rayScene.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Ray/rayScene.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
Ray/rayScene.o: /usr/include/i386/signal.h /usr/include/machine/_mcontext.h
Ray/rayScene.o: /usr/include/i386/_mcontext.h
Ray/rayScene.o: /usr/include/mach/i386/_structs.h
Ray/rayScene.o: /usr/include/sys/_types/_sigaltstack.h
Ray/rayScene.o: /usr/include/sys/_types/_ucontext.h
Ray/rayScene.o: /usr/include/sys/_types/_pthread_attr_t.h
Ray/rayScene.o: /usr/include/sys/_types/_sigset_t.h
Ray/rayScene.o: /usr/include/sys/_types/_size_t.h
Ray/rayScene.o: /usr/include/sys/_types/_uid_t.h /usr/include/sys/resource.h
Ray/rayScene.o: /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h
Ray/rayScene.o: /usr/include/sys/_types/_int16_t.h
Ray/rayScene.o: /usr/include/sys/_types/_int32_t.h
Ray/rayScene.o: /usr/include/sys/_types/_int64_t.h
Ray/rayScene.o: /usr/include/_types/_uint8_t.h
Ray/rayScene.o: /usr/include/_types/_uint16_t.h
Ray/rayScene.o: /usr/include/_types/_uint32_t.h
Ray/rayScene.o: /usr/include/_types/_uint64_t.h
Ray/rayScene.o: /usr/include/sys/_types/_intptr_t.h
Ray/rayScene.o: /usr/include/sys/_types/_uintptr_t.h
Ray/rayScene.o: /usr/include/_types/_intmax_t.h
Ray/rayScene.o: /usr/include/_types/_uintmax_t.h
Ray/rayScene.o: /usr/include/sys/_types/_timeval.h
Ray/rayScene.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Ray/rayScene.o: /usr/include/sys/_endian.h
Ray/rayScene.o: /usr/include/libkern/_OSByteOrder.h
Ray/rayScene.o: /usr/include/libkern/i386/_OSByteOrder.h
Ray/rayScene.o: /usr/include/alloca.h /usr/include/sys/_types/_ct_rune_t.h
Ray/rayScene.o: /usr/include/sys/_types/_rune_t.h
Ray/rayScene.o: /usr/include/sys/_types/_wchar_t.h
Ray/rayScene.o: /usr/include/sys/_types/_null.h /usr/include/machine/types.h
Ray/rayScene.o: /usr/include/i386/types.h
Ray/rayScene.o: /usr/include/sys/_types/___offsetof.h
Ray/rayScene.o: /usr/include/sys/_types/_dev_t.h
Ray/rayScene.o: /usr/include/sys/_types/_mode_t.h /usr/include/stdio.h
Ray/rayScene.o: /usr/include/sys/_types/_va_list.h
Ray/rayScene.o: /usr/include/sys/_types/_off_t.h
Ray/rayScene.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayScene.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
Ray/rayScene.o: /usr/include/string.h /usr/include/sys/_types/_rsize_t.h
Ray/rayScene.o: /usr/include/sys/_types/_errno_t.h /usr/include/strings.h
Ray/rayScene.o: /usr/include/secure/_string.h /usr/include/math.h
Ray/rayScene.o: ./Image/bmp.h Image/image.h Image/lineSegments.h
Ray/rayScene.o: Ray/rayScene.h ./Util/geometry.h ./Image/image.h
Ray/rayScene.o: Ray/rayShape.h Ray/rayLight.h Ray/rayGroup.h Ray/rayKey.h
Ray/rayScene.o: ./Util/parameterSamples.h ./Util/parameterSamples.todo.inl
Ray/rayScene.o: Ray/rayCamera.h Ray/rayPointLight.h Ray/rayDirectionalLight.h
Ray/rayScene.o: Ray/raySpotLight.h Ray/rayFileInstance.h Ray/raySphere.h
Ray/rayScene.o: Ray/rayBox.h Ray/rayCone.h Ray/rayCylinder.h
Ray/rayScene.o: Ray/rayTriangle.h
Ray/rayScene.todo.o: Ray/rayScene.h ./Util/geometry.h ./Image/image.h
Ray/rayScene.todo.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/rayScene.todo.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayScene.todo.o: /usr/include/sys/_posix_availability.h
Ray/rayScene.todo.o: /usr/include/Availability.h
Ray/rayScene.todo.o: /usr/include/AvailabilityInternal.h
Ray/rayScene.todo.o: /usr/include/_types.h /usr/include/sys/_types.h
Ray/rayScene.todo.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Ray/rayScene.todo.o: /usr/include/sys/_types/_va_list.h
Ray/rayScene.todo.o: /usr/include/sys/_types/_size_t.h
Ray/rayScene.todo.o: /usr/include/sys/_types/_null.h
Ray/rayScene.todo.o: /usr/include/sys/_types/_off_t.h
Ray/rayScene.todo.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayScene.todo.o: /usr/include/secure/_stdio.h
Ray/rayScene.todo.o: /usr/include/secure/_common.h Image/lineSegments.h
Ray/rayScene.todo.o: Ray/rayShape.h Ray/rayLight.h Ray/rayGroup.h
Ray/rayScene.todo.o: Ray/rayKey.h ./Util/parameterSamples.h
Ray/rayScene.todo.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayScene.todo.o: /usr/include/math.h
Ray/raySphere.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/raySphere.o: /usr/include/sys/_symbol_aliasing.h
Ray/raySphere.o: /usr/include/sys/_posix_availability.h
Ray/raySphere.o: /usr/include/Availability.h
Ray/raySphere.o: /usr/include/AvailabilityInternal.h /usr/include/_types.h
Ray/raySphere.o: /usr/include/sys/_types.h /usr/include/machine/_types.h
Ray/raySphere.o: /usr/include/i386/_types.h
Ray/raySphere.o: /usr/include/sys/_types/_va_list.h
Ray/raySphere.o: /usr/include/sys/_types/_size_t.h
Ray/raySphere.o: /usr/include/sys/_types/_null.h
Ray/raySphere.o: /usr/include/sys/_types/_off_t.h
Ray/raySphere.o: /usr/include/sys/_types/_ssize_t.h
Ray/raySphere.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
Ray/raySphere.o: /usr/include/stdlib.h /usr/include/sys/wait.h
Ray/raySphere.o: /usr/include/sys/_types/_pid_t.h
Ray/raySphere.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Ray/raySphere.o: /usr/include/sys/appleapiopts.h
Ray/raySphere.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
Ray/raySphere.o: /usr/include/machine/_mcontext.h
Ray/raySphere.o: /usr/include/i386/_mcontext.h
Ray/raySphere.o: /usr/include/mach/i386/_structs.h
Ray/raySphere.o: /usr/include/sys/_types/_sigaltstack.h
Ray/raySphere.o: /usr/include/sys/_types/_ucontext.h
Ray/raySphere.o: /usr/include/sys/_types/_pthread_attr_t.h
Ray/raySphere.o: /usr/include/sys/_types/_sigset_t.h
Ray/raySphere.o: /usr/include/sys/_types/_uid_t.h /usr/include/sys/resource.h
Ray/raySphere.o: /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h
Ray/raySphere.o: /usr/include/sys/_types/_int16_t.h
Ray/raySphere.o: /usr/include/sys/_types/_int32_t.h
Ray/raySphere.o: /usr/include/sys/_types/_int64_t.h
Ray/raySphere.o: /usr/include/_types/_uint8_t.h
Ray/raySphere.o: /usr/include/_types/_uint16_t.h
Ray/raySphere.o: /usr/include/_types/_uint32_t.h
Ray/raySphere.o: /usr/include/_types/_uint64_t.h
Ray/raySphere.o: /usr/include/sys/_types/_intptr_t.h
Ray/raySphere.o: /usr/include/sys/_types/_uintptr_t.h
Ray/raySphere.o: /usr/include/_types/_intmax_t.h
Ray/raySphere.o: /usr/include/_types/_uintmax_t.h
Ray/raySphere.o: /usr/include/sys/_types/_timeval.h
Ray/raySphere.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Ray/raySphere.o: /usr/include/sys/_endian.h
Ray/raySphere.o: /usr/include/libkern/_OSByteOrder.h
Ray/raySphere.o: /usr/include/libkern/i386/_OSByteOrder.h
Ray/raySphere.o: /usr/include/alloca.h /usr/include/sys/_types/_ct_rune_t.h
Ray/raySphere.o: /usr/include/sys/_types/_rune_t.h
Ray/raySphere.o: /usr/include/sys/_types/_wchar_t.h
Ray/raySphere.o: /usr/include/machine/types.h /usr/include/i386/types.h
Ray/raySphere.o: /usr/include/sys/_types/___offsetof.h
Ray/raySphere.o: /usr/include/sys/_types/_dev_t.h
Ray/raySphere.o: /usr/include/sys/_types/_mode_t.h /usr/include/math.h
Ray/raySphere.o: Ray/raySphere.h ./Util/geometry.h Ray/rayShape.h
Ray/raySphere.o: Ray/rayScene.h ./Image/image.h Image/lineSegments.h
Ray/raySphere.o: Ray/rayLight.h Ray/rayGroup.h Ray/rayKey.h
Ray/raySphere.o: ./Util/parameterSamples.h ./Util/parameterSamples.todo.inl
Ray/raySphere.o: Ray/rayCamera.h
Ray/raySphere.todo.o: /usr/include/math.h /usr/include/sys/cdefs.h
Ray/raySphere.todo.o: /usr/include/sys/_symbol_aliasing.h
Ray/raySphere.todo.o: /usr/include/sys/_posix_availability.h
Ray/raySphere.todo.o: /usr/include/Availability.h
Ray/raySphere.todo.o: /usr/include/AvailabilityInternal.h Ray/rayScene.h
Ray/raySphere.todo.o: ./Util/geometry.h ./Image/image.h /usr/include/stdio.h
Ray/raySphere.todo.o: /usr/include/_types.h /usr/include/sys/_types.h
Ray/raySphere.todo.o: /usr/include/machine/_types.h
Ray/raySphere.todo.o: /usr/include/i386/_types.h
Ray/raySphere.todo.o: /usr/include/sys/_types/_va_list.h
Ray/raySphere.todo.o: /usr/include/sys/_types/_size_t.h
Ray/raySphere.todo.o: /usr/include/sys/_types/_null.h
Ray/raySphere.todo.o: /usr/include/sys/_types/_off_t.h
Ray/raySphere.todo.o: /usr/include/sys/_types/_ssize_t.h
Ray/raySphere.todo.o: /usr/include/secure/_stdio.h
Ray/raySphere.todo.o: /usr/include/secure/_common.h Image/lineSegments.h
Ray/raySphere.todo.o: Ray/rayShape.h Ray/rayLight.h Ray/rayGroup.h
Ray/raySphere.todo.o: Ray/rayKey.h ./Util/parameterSamples.h
Ray/raySphere.todo.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/raySphere.todo.o: Ray/raySphere.h
Ray/raySpotLight.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/raySpotLight.o: /usr/include/sys/_symbol_aliasing.h
Ray/raySpotLight.o: /usr/include/sys/_posix_availability.h
Ray/raySpotLight.o: /usr/include/Availability.h
Ray/raySpotLight.o: /usr/include/AvailabilityInternal.h /usr/include/_types.h
Ray/raySpotLight.o: /usr/include/sys/_types.h /usr/include/machine/_types.h
Ray/raySpotLight.o: /usr/include/i386/_types.h
Ray/raySpotLight.o: /usr/include/sys/_types/_va_list.h
Ray/raySpotLight.o: /usr/include/sys/_types/_size_t.h
Ray/raySpotLight.o: /usr/include/sys/_types/_null.h
Ray/raySpotLight.o: /usr/include/sys/_types/_off_t.h
Ray/raySpotLight.o: /usr/include/sys/_types/_ssize_t.h
Ray/raySpotLight.o: /usr/include/secure/_stdio.h
Ray/raySpotLight.o: /usr/include/secure/_common.h /usr/include/string.h
Ray/raySpotLight.o: /usr/include/sys/_types/_rsize_t.h
Ray/raySpotLight.o: /usr/include/sys/_types/_errno_t.h /usr/include/strings.h
Ray/raySpotLight.o: /usr/include/secure/_string.h /usr/include/math.h
Ray/raySpotLight.o: ./Util/geometry.h Ray/raySpotLight.h Ray/rayLight.h
Ray/raySpotLight.o: Ray/rayShape.h Ray/rayScene.h ./Image/image.h
Ray/raySpotLight.o: Image/lineSegments.h Ray/rayGroup.h Ray/rayKey.h
Ray/raySpotLight.o: ./Util/parameterSamples.h
Ray/raySpotLight.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/raySpotLight.todo.o: /usr/include/math.h /usr/include/sys/cdefs.h
Ray/raySpotLight.todo.o: /usr/include/sys/_symbol_aliasing.h
Ray/raySpotLight.todo.o: /usr/include/sys/_posix_availability.h
Ray/raySpotLight.todo.o: /usr/include/Availability.h
Ray/raySpotLight.todo.o: /usr/include/AvailabilityInternal.h Ray/rayScene.h
Ray/raySpotLight.todo.o: ./Util/geometry.h ./Image/image.h
Ray/raySpotLight.todo.o: /usr/include/stdio.h /usr/include/_types.h
Ray/raySpotLight.todo.o: /usr/include/sys/_types.h
Ray/raySpotLight.todo.o: /usr/include/machine/_types.h
Ray/raySpotLight.todo.o: /usr/include/i386/_types.h
Ray/raySpotLight.todo.o: /usr/include/sys/_types/_va_list.h
Ray/raySpotLight.todo.o: /usr/include/sys/_types/_size_t.h
Ray/raySpotLight.todo.o: /usr/include/sys/_types/_null.h
Ray/raySpotLight.todo.o: /usr/include/sys/_types/_off_t.h
Ray/raySpotLight.todo.o: /usr/include/sys/_types/_ssize_t.h
Ray/raySpotLight.todo.o: /usr/include/secure/_stdio.h
Ray/raySpotLight.todo.o: /usr/include/secure/_common.h Image/lineSegments.h
Ray/raySpotLight.todo.o: Ray/rayShape.h Ray/rayLight.h Ray/rayGroup.h
Ray/raySpotLight.todo.o: Ray/rayKey.h ./Util/parameterSamples.h
Ray/raySpotLight.todo.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/raySpotLight.todo.o: Ray/raySpotLight.h
Ray/rayTriangle.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/rayTriangle.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayTriangle.o: /usr/include/sys/_posix_availability.h
Ray/rayTriangle.o: /usr/include/Availability.h
Ray/rayTriangle.o: /usr/include/AvailabilityInternal.h /usr/include/_types.h
Ray/rayTriangle.o: /usr/include/sys/_types.h /usr/include/machine/_types.h
Ray/rayTriangle.o: /usr/include/i386/_types.h
Ray/rayTriangle.o: /usr/include/sys/_types/_va_list.h
Ray/rayTriangle.o: /usr/include/sys/_types/_size_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_null.h
Ray/rayTriangle.o: /usr/include/sys/_types/_off_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayTriangle.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
Ray/rayTriangle.o: /usr/include/stdlib.h /usr/include/sys/wait.h
Ray/rayTriangle.o: /usr/include/sys/_types/_pid_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Ray/rayTriangle.o: /usr/include/sys/appleapiopts.h
Ray/rayTriangle.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
Ray/rayTriangle.o: /usr/include/machine/_mcontext.h
Ray/rayTriangle.o: /usr/include/i386/_mcontext.h
Ray/rayTriangle.o: /usr/include/mach/i386/_structs.h
Ray/rayTriangle.o: /usr/include/sys/_types/_sigaltstack.h
Ray/rayTriangle.o: /usr/include/sys/_types/_ucontext.h
Ray/rayTriangle.o: /usr/include/sys/_types/_pthread_attr_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_sigset_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_uid_t.h
Ray/rayTriangle.o: /usr/include/sys/resource.h /usr/include/stdint.h
Ray/rayTriangle.o: /usr/include/sys/_types/_int8_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_int16_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_int32_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_int64_t.h
Ray/rayTriangle.o: /usr/include/_types/_uint8_t.h
Ray/rayTriangle.o: /usr/include/_types/_uint16_t.h
Ray/rayTriangle.o: /usr/include/_types/_uint32_t.h
Ray/rayTriangle.o: /usr/include/_types/_uint64_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_intptr_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_uintptr_t.h
Ray/rayTriangle.o: /usr/include/_types/_intmax_t.h
Ray/rayTriangle.o: /usr/include/_types/_uintmax_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_timeval.h
Ray/rayTriangle.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Ray/rayTriangle.o: /usr/include/sys/_endian.h
Ray/rayTriangle.o: /usr/include/libkern/_OSByteOrder.h
Ray/rayTriangle.o: /usr/include/libkern/i386/_OSByteOrder.h
Ray/rayTriangle.o: /usr/include/alloca.h /usr/include/sys/_types/_ct_rune_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_rune_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_wchar_t.h
Ray/rayTriangle.o: /usr/include/machine/types.h /usr/include/i386/types.h
Ray/rayTriangle.o: /usr/include/sys/_types/___offsetof.h
Ray/rayTriangle.o: /usr/include/sys/_types/_dev_t.h
Ray/rayTriangle.o: /usr/include/sys/_types/_mode_t.h /usr/include/math.h
Ray/rayTriangle.o: Ray/rayTriangle.h ./Util/geometry.h Ray/rayShape.h
Ray/rayTriangle.o: Ray/rayScene.h ./Image/image.h Image/lineSegments.h
Ray/rayTriangle.o: Ray/rayLight.h Ray/rayGroup.h Ray/rayKey.h
Ray/rayTriangle.o: ./Util/parameterSamples.h ./Util/parameterSamples.todo.inl
Ray/rayTriangle.o: Ray/rayCamera.h
Ray/rayTriangle.todo.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
Ray/rayTriangle.todo.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayTriangle.todo.o: /usr/include/sys/_posix_availability.h
Ray/rayTriangle.todo.o: /usr/include/Availability.h
Ray/rayTriangle.todo.o: /usr/include/AvailabilityInternal.h
Ray/rayTriangle.todo.o: /usr/include/_types.h /usr/include/sys/_types.h
Ray/rayTriangle.todo.o: /usr/include/machine/_types.h
Ray/rayTriangle.todo.o: /usr/include/i386/_types.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_va_list.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_size_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_null.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_off_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_ssize_t.h
Ray/rayTriangle.todo.o: /usr/include/secure/_stdio.h
Ray/rayTriangle.todo.o: /usr/include/secure/_common.h /usr/include/stdlib.h
Ray/rayTriangle.todo.o: /usr/include/sys/wait.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_pid_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_id_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/signal.h
Ray/rayTriangle.todo.o: /usr/include/sys/appleapiopts.h
Ray/rayTriangle.todo.o: /usr/include/machine/signal.h
Ray/rayTriangle.todo.o: /usr/include/i386/signal.h
Ray/rayTriangle.todo.o: /usr/include/machine/_mcontext.h
Ray/rayTriangle.todo.o: /usr/include/i386/_mcontext.h
Ray/rayTriangle.todo.o: /usr/include/mach/i386/_structs.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_sigaltstack.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_ucontext.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_pthread_attr_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_sigset_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_uid_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/resource.h /usr/include/stdint.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_int8_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_int16_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_int32_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_int64_t.h
Ray/rayTriangle.todo.o: /usr/include/_types/_uint8_t.h
Ray/rayTriangle.todo.o: /usr/include/_types/_uint16_t.h
Ray/rayTriangle.todo.o: /usr/include/_types/_uint32_t.h
Ray/rayTriangle.todo.o: /usr/include/_types/_uint64_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_intptr_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_uintptr_t.h
Ray/rayTriangle.todo.o: /usr/include/_types/_intmax_t.h
Ray/rayTriangle.todo.o: /usr/include/_types/_uintmax_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_timeval.h
Ray/rayTriangle.todo.o: /usr/include/machine/endian.h
Ray/rayTriangle.todo.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
Ray/rayTriangle.todo.o: /usr/include/libkern/_OSByteOrder.h
Ray/rayTriangle.todo.o: /usr/include/libkern/i386/_OSByteOrder.h
Ray/rayTriangle.todo.o: /usr/include/alloca.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_ct_rune_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_rune_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_wchar_t.h
Ray/rayTriangle.todo.o: /usr/include/machine/types.h
Ray/rayTriangle.todo.o: /usr/include/i386/types.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/___offsetof.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_dev_t.h
Ray/rayTriangle.todo.o: /usr/include/sys/_types/_mode_t.h /usr/include/math.h
Ray/rayTriangle.todo.o: Ray/rayTriangle.h ./Util/geometry.h Ray/rayShape.h
Ray/rayTriangle.todo.o: Ray/rayScene.h ./Image/image.h Image/lineSegments.h
Ray/rayTriangle.todo.o: Ray/rayLight.h Ray/rayGroup.h Ray/rayKey.h
Ray/rayTriangle.todo.o: ./Util/parameterSamples.h
Ray/rayTriangle.todo.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayWindow.o: /usr/include/string.h /usr/include/_types.h
Ray/rayWindow.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
Ray/rayWindow.o: /usr/include/sys/_symbol_aliasing.h
Ray/rayWindow.o: /usr/include/sys/_posix_availability.h
Ray/rayWindow.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
Ray/rayWindow.o: /usr/include/Availability.h
Ray/rayWindow.o: /usr/include/AvailabilityInternal.h
Ray/rayWindow.o: /usr/include/sys/_types/_size_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_null.h
Ray/rayWindow.o: /usr/include/sys/_types/_rsize_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_errno_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_ssize_t.h /usr/include/strings.h
Ray/rayWindow.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
Ray/rayWindow.o: ./Util/time.h Ray/rayWindow.h ./Ray/mouse.h ./Ray/rayScene.h
Ray/rayWindow.o: ./Util/geometry.h ./Image/image.h /usr/include/stdio.h
Ray/rayWindow.o: /usr/include/sys/_types/_va_list.h
Ray/rayWindow.o: /usr/include/sys/_types/_off_t.h
Ray/rayWindow.o: /usr/include/secure/_stdio.h Image/lineSegments.h
Ray/rayWindow.o: Ray/rayShape.h Ray/rayLight.h Ray/rayGroup.h Ray/rayScene.h
Ray/rayWindow.o: Ray/rayKey.h ./Util/parameterSamples.h
Ray/rayWindow.o: ./Util/parameterSamples.todo.inl Ray/rayCamera.h
Ray/rayWindow.o: /usr/include/stdlib.h /usr/include/sys/wait.h
Ray/rayWindow.o: /usr/include/sys/_types/_pid_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_id_t.h /usr/include/sys/signal.h
Ray/rayWindow.o: /usr/include/sys/appleapiopts.h
Ray/rayWindow.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
Ray/rayWindow.o: /usr/include/machine/_mcontext.h
Ray/rayWindow.o: /usr/include/i386/_mcontext.h
Ray/rayWindow.o: /usr/include/mach/i386/_structs.h
Ray/rayWindow.o: /usr/include/sys/_types/_sigaltstack.h
Ray/rayWindow.o: /usr/include/sys/_types/_ucontext.h
Ray/rayWindow.o: /usr/include/sys/_types/_pthread_attr_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_sigset_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_uid_t.h /usr/include/sys/resource.h
Ray/rayWindow.o: /usr/include/stdint.h /usr/include/sys/_types/_int8_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_int16_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_int32_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_int64_t.h
Ray/rayWindow.o: /usr/include/_types/_uint8_t.h
Ray/rayWindow.o: /usr/include/_types/_uint16_t.h
Ray/rayWindow.o: /usr/include/_types/_uint32_t.h
Ray/rayWindow.o: /usr/include/_types/_uint64_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_intptr_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_uintptr_t.h
Ray/rayWindow.o: /usr/include/_types/_intmax_t.h
Ray/rayWindow.o: /usr/include/_types/_uintmax_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_timeval.h
Ray/rayWindow.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
Ray/rayWindow.o: /usr/include/sys/_endian.h
Ray/rayWindow.o: /usr/include/libkern/_OSByteOrder.h
Ray/rayWindow.o: /usr/include/libkern/i386/_OSByteOrder.h
Ray/rayWindow.o: /usr/include/alloca.h /usr/include/sys/_types/_ct_rune_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_rune_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_wchar_t.h
Ray/rayWindow.o: /usr/include/machine/types.h /usr/include/i386/types.h
Ray/rayWindow.o: /usr/include/sys/_types/___offsetof.h
Ray/rayWindow.o: /usr/include/sys/_types/_dev_t.h
Ray/rayWindow.o: /usr/include/sys/_types/_mode_t.h
main.o: /usr/include/stdio.h /usr/include/sys/cdefs.h
main.o: /usr/include/sys/_symbol_aliasing.h
main.o: /usr/include/sys/_posix_availability.h /usr/include/Availability.h
main.o: /usr/include/AvailabilityInternal.h /usr/include/_types.h
main.o: /usr/include/sys/_types.h /usr/include/machine/_types.h
main.o: /usr/include/i386/_types.h /usr/include/sys/_types/_va_list.h
main.o: /usr/include/sys/_types/_size_t.h /usr/include/sys/_types/_null.h
main.o: /usr/include/sys/_types/_off_t.h /usr/include/sys/_types/_ssize_t.h
main.o: /usr/include/secure/_stdio.h /usr/include/secure/_common.h
main.o: /usr/include/stdlib.h /usr/include/sys/wait.h
main.o: /usr/include/sys/_types/_pid_t.h /usr/include/sys/_types/_id_t.h
main.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
main.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
main.o: /usr/include/machine/_mcontext.h /usr/include/i386/_mcontext.h
main.o: /usr/include/mach/i386/_structs.h
main.o: /usr/include/sys/_types/_sigaltstack.h
main.o: /usr/include/sys/_types/_ucontext.h
main.o: /usr/include/sys/_types/_pthread_attr_t.h
main.o: /usr/include/sys/_types/_sigset_t.h /usr/include/sys/_types/_uid_t.h
main.o: /usr/include/sys/resource.h /usr/include/stdint.h
main.o: /usr/include/sys/_types/_int8_t.h /usr/include/sys/_types/_int16_t.h
main.o: /usr/include/sys/_types/_int32_t.h /usr/include/sys/_types/_int64_t.h
main.o: /usr/include/_types/_uint8_t.h /usr/include/_types/_uint16_t.h
main.o: /usr/include/_types/_uint32_t.h /usr/include/_types/_uint64_t.h
main.o: /usr/include/sys/_types/_intptr_t.h
main.o: /usr/include/sys/_types/_uintptr_t.h /usr/include/_types/_intmax_t.h
main.o: /usr/include/_types/_uintmax_t.h /usr/include/sys/_types/_timeval.h
main.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
main.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
main.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
main.o: /usr/include/sys/_types/_ct_rune_t.h
main.o: /usr/include/sys/_types/_rune_t.h /usr/include/sys/_types/_wchar_t.h
main.o: /usr/include/machine/types.h /usr/include/i386/types.h
main.o: /usr/include/sys/_types/___offsetof.h
main.o: /usr/include/sys/_types/_dev_t.h /usr/include/sys/_types/_mode_t.h
main.o: ./Util/cmdLineParser.h /usr/include/string.h
main.o: /usr/include/sys/_types/_rsize_t.h /usr/include/sys/_types/_errno_t.h
main.o: /usr/include/strings.h /usr/include/secure/_string.h ./Ray/rayScene.h
main.o: ./Util/geometry.h ./Image/image.h Image/lineSegments.h Ray/rayShape.h
main.o: Ray/rayLight.h Ray/rayGroup.h Ray/rayScene.h Ray/rayKey.h
main.o: ./Util/parameterSamples.h ./Util/parameterSamples.todo.inl
main.o: Ray/rayCamera.h ./Ray/rayWindow.h ./Ray/mouse.h ./Util/time.h
