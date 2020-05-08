#define __SYSCALL_32BIT_ARG_BYTES 16
#include "SYS.h"

#ifndef SYS_quotactl
#error "SYS_quotactl not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__arm64__)
MI_ENTRY_POINT(_quotactl)
SYSCALL_NONAME(quotactl, 4, cerror_nocancel)
ret
#else
#if defined(__i386__) || defined(__x86_64__) || defined(__ppc__) || defined(__arm__) || defined(__arm64__)
__SYSCALL2(_quotactl, quotactl, 4, cerror_nocancel)
#endif

#endif

