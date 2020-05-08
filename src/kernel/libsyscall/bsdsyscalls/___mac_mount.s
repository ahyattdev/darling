#define __SYSCALL_32BIT_ARG_BYTES 20
#include "SYS.h"

#ifndef SYS___mac_mount
#error "SYS___mac_mount not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__arm64__)
MI_ENTRY_POINT(___mac_mount)
SYSCALL_NONAME(__mac_mount, 5, cerror_nocancel)
ret
#else
#if defined(__i386__) || defined(__x86_64__) || defined(__ppc__) || defined(__arm__) || defined(__arm64__)
__SYSCALL2(___mac_mount, __mac_mount, 5, cerror_nocancel)
#endif

#endif

#if defined(__i386__)
	.globl	___sandbox_mm
	.set	___sandbox_mm, ___mac_mount
#endif

#if defined(__x86_64__)
	.globl	___sandbox_mm
	.set	___sandbox_mm, ___mac_mount
#endif

#if defined(__ppc__)
	.globl	___sandbox_mm
	.set	___sandbox_mm, ___mac_mount
#endif

#if defined(__arm__)
	.globl	___sandbox_mm
	.set	___sandbox_mm, ___mac_mount
#endif

#if defined(__arm64__)
	.globl	___sandbox_mm
	.set	___sandbox_mm, ___mac_mount
#endif

