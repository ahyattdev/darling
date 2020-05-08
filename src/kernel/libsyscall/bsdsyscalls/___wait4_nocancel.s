#define __SYSCALL_32BIT_ARG_BYTES 16
#include "SYS.h"

#ifndef SYS_wait4_nocancel
#error "SYS_wait4_nocancel not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__arm64__)
MI_ENTRY_POINT(___wait4_nocancel)
SYSCALL_NONAME(wait4_nocancel, 4, cerror_nocancel)
ret
#else
#if defined(__i386__) || defined(__x86_64__) || defined(__ppc__) || defined(__arm__) || defined(__arm64__)
__SYSCALL2(___wait4_nocancel, wait4_nocancel, 4, cerror_nocancel)
#endif

#endif

#if defined(__i386__)
	.globl	_wait4
	.set	_wait4, ___wait4_nocancel
#endif

#if defined(__x86_64__)
	.globl	_wait4
	.set	_wait4, ___wait4_nocancel
#endif

#if defined(__ppc__)
	.globl	_wait4
	.set	_wait4, ___wait4_nocancel
#endif

#if defined(__arm__)
	.globl	_wait4
	.set	_wait4, ___wait4_nocancel
#endif

#if defined(__arm64__)
	.globl	_wait4
	.set	_wait4, ___wait4_nocancel
#endif

