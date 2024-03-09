.cpu cortex-a76	
.global sys_write
.global sys_read
.global sys_errno
.bss
sys_errno: .8byte
.text
generic_syscall_3:	
/*	mov x8, x0
	mov x0, x1
	mov x1, x2
	mov x2, x3
	mov x3, x4
	mov x4, x5
	mov x5, x6
	mov x6, x7 */
	svc 0
	cmn x0, 0xfff
	b.cc okay
	adr x1, sys_errno
	str x0, [x1] 	
	mov	x0, #0xffffffffffffffff 
okay:	ret
	
sys_write:
	mov x8, 64
	b generic_syscall_3
sys_read:
	mov x8, 65
	b generic_syscall_3
	
