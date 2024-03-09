.global _start
.extern main
.text
_start:	ldr x0, [sp]	/* argc */
	add x1, sp, 8	/* argv */
	bl main
	add sp, sp, 16	/* clear var */
	mov x8, 93 	/* exit syscall */
	svc 0
