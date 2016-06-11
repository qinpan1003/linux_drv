.extern main
.global	_start
_start:
	mov sp,#4096
	bl main
	b	.
