#define __SYSCALL_32BIT_ARG_BYTES 8
#include "SYS.h"

#ifndef SYS_setaudit_addr
#error "SYS_setaudit_addr not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__arm64__)
MI_ENTRY_POINT(_setaudit_addr)
SYSCALL_NONAME(setaudit_addr, 2, cerror_nocancel)
ret
#else
#if defined(__i386__) || defined(__x86_64__) || defined(__ppc__) || defined(__arm__) || defined(__arm64__)
__SYSCALL2(_setaudit_addr, setaudit_addr, 2, cerror_nocancel)
#endif

#endif

