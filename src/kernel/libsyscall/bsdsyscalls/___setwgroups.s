#define __SYSCALL_32BIT_ARG_BYTES 8
#include "SYS.h"

#ifndef SYS_setwgroups
#error "SYS_setwgroups not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__arm64__)
MI_ENTRY_POINT(___setwgroups)
SYSCALL_NONAME(setwgroups, 2, cerror_nocancel)
ret
#else
#if defined(__i386__) || defined(__x86_64__) || defined(__ppc__) || defined(__arm__) || defined(__arm64__)
__SYSCALL2(___setwgroups, setwgroups, 2, cerror_nocancel)
#endif

#endif

#if defined(__i386__)
	.globl	_setwgroups_np
	.set	_setwgroups_np, ___setwgroups
#endif

#if defined(__x86_64__)
	.globl	_setwgroups_np
	.set	_setwgroups_np, ___setwgroups
#endif

#if defined(__ppc__)
	.globl	_setwgroups_np
	.set	_setwgroups_np, ___setwgroups
#endif

#if defined(__arm__)
	.globl	_setwgroups_np
	.set	_setwgroups_np, ___setwgroups
#endif

#if defined(__arm64__)
	.globl	_setwgroups_np
	.set	_setwgroups_np, ___setwgroups
#endif

