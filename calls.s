.global sys_call
.text
sys_call:	
	mov x8, x0
	mov x0, x1
	mov x1, x2
	mov x2, x3
	mov x3, x4
	mov x4, x5
	mov x5, x6
	mov x6, x7
	svc 0
	ret
/*	mov	x0, #0xffffffffffffffff    	// #-1 */
	
