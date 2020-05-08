#define __SYSCALL_32BIT_ARG_BYTES 12
#include "SYS.h"

#ifndef SYS_connect
#error "SYS_connect not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__arm64__)
MI_ENTRY_POINT(___connect)
SYSCALL_NONAME(connect, 3, cerror)
ret
#else
#if defined(__i386__) || defined(__x86_64__) || defined(__ppc__) || defined(__arm__) || defined(__arm64__)
__SYSCALL2(___connect, connect, 3, cerror)
#endif

#endif

#if defined(__i386__)
	.globl	_connect$UNIX2003
	.set	_connect$UNIX2003, ___connect
#endif

#if defined(__x86_64__)
	.globl	_connect
	.set	_connect, ___connect
#endif

#if defined(__ppc__)
	.globl	_connect$UNIX2003
	.set	_connect$UNIX2003, ___connect
#endif

#if defined(__arm__)
	.globl	_connect
	.set	_connect, ___connect
#endif

#if defined(__arm64__)
	.globl	_connect
	.set	_connect, ___connect
#endif

